package com.philipgreat.mcme;

import java.time.LocalDate;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.sql.DataSource;

//import org.redisson.api.RedissonClient;
import org.slf4j.MDC;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.doublechaintech.supplierrelationservice.Constants;
import com.doublechaintech.supplierrelationservice.SupplierRelationServiceUserContext;
import com.doublechaintech.supplierrelationservice.EntityMetaRegistry;
import com.doublechaintech.supplierrelationservice.Q;
import com.doublechaintech.supplierrelationservice.Repositories;
import com.doublechaintech.supplierrelationservice.employee.Employee;
import com.doublechaintech.supplierrelationservice.gendertype.GenderType;
import com.doublechaintech.supplierrelationservice.merchant.Merchant;


import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.codec.Base64;
import cn.hutool.core.util.BooleanUtil;
import cn.hutool.core.util.NumberUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.extra.spring.SpringUtil;
import cn.hutool.json.JSONUtil;

import io.teaql.data.DataConfigProperties;
import io.teaql.data.Entity;
import io.teaql.data.NaturalLanguageTranslator;
import io.teaql.data.Repository;
import io.teaql.data.SimpleChineseViewTranslator;
import io.teaql.data.TQLAutoConfiguration;
import io.teaql.data.TQLResolver;
import io.teaql.data.language.ArabicTranslator;
import io.teaql.data.language.EnglishTranslator;
import io.teaql.data.language.GermanTranslator;
import io.teaql.data.language.PortugueseTranslator;
import io.teaql.data.language.TraditionalChineseTranslator;
import io.teaql.data.language.UkrainianTranslator;
import io.teaql.data.lock.LockService;
import io.teaql.data.meta.EntityDescriptor;
import io.teaql.data.meta.EntityMetaFactory;

public class CustomUserContext extends SupplierRelationServiceUserContext {

    @Override
    public NaturalLanguageTranslator getNaturalLanguageTranslator(Entity entity) {
        //return new ArabicTranslator();
        //return new UkrainianTranslator();
        //return new GermanTranslator();
        return new PortugueseTranslator();
    }









    static  AnnotationConfigApplicationContext context;

    public static void shutdown(){
        //context.close();
//        RedissonClient client = context.getBean(RedissonClient.class);
//        client.shutdown();

        SpringApplication.exit(context, () -> 0);
    }

    public static CustomUserContext forCommonApp(){
        CustomUserContext userContext=new CustomUserContext();
         context = new AnnotationConfigApplicationContext(
                //DataSourceAutoConfiguration.class,
                TQLAutoConfiguration.class,
                RedissonConfig.class,
                EntityMetaRegistry.class,
                Repositories.class

        );
        context.registerShutdownHook();
        //context.close();
//        LockService lock=context.getBean(LockService.class);
//        TQLResolver resolver=context.getBean(TQLResolver.class);
//        DataSource dataSource = context.getBean(DataSource.class);


        //EntityMetaRegistry registry=context.getBean(EntityMetaRegistry.class);

        SpringUtil springUtil = new SpringUtil();
        springUtil.setApplicationContext(context);

        return userContext;


    }




    public static final String USER_CONTEXT = "User-Context";
    public static final String ID_SPACE = "ID_SPACE";
    public static final String CURRENT_FILL_STATION = "$$currentFillStation";
    public static final String EMPLOYEE = "employee";
    public static final String MERCHANT = "merchant";
    public static final String JOB = "job";

    private Merchant merchant;

    public Merchant getMerchant() {
        return merchant;
    }

    public void setMerchant(Merchant merchant) {
        this.merchant = merchant;
    }


    //resolveEntityDescriptor

    public DataConfigProperties config() {

        DataConfigProperties dcp = new DataConfigProperties();
        dcp.setEnsureTable(true);
        return dcp;
    }

    @Override
    public <T> T getBean(String name) {
        return super.getBean(name);

    }


//    @Override
//    public <T> T getBean(Class<T> clazz) {
//        if(clazz== LogEntryChecker.class){
//            return (T)new LogEntryChecker();
//        }
//        if(clazz== MerchantChecker.class){
//            return (T)new MerchantChecker();
//        }
//        return super.getBean(clazz);
//    }


    @Override
    public void init(Object request) {
        //this.info("inited");
        super.init(request);

        String userContext = getHeader(USER_CONTEXT);
        if (ObjectUtil.isEmpty(userContext)) {
            return;
        }

        String idSpace = getIdSpace();
        String ctx = Base64.decodeStr(userContext);
        Map data = JSONUtil.toBean(ctx, Map.class);
        String employeeId = BeanUtil.getProperty(data, "employeeId");
        if (employeeId == null) {
            return;
        }
        if (idSpace != null) {
            employeeId = employeeId + idSpace;
        }
        synchronized (employeeId.intern()) {
            ensureContextValues(data, idSpace, employeeId);
        }

        this.putInStore("a","c",10);

    }

    private void ensureContextValues(Map data, String idSpace, String employeeId) {
        String employeeName = BeanUtil.getProperty(data, "employeeName");
        String merchantId = BeanUtil.getProperty(data, "merchantId");
        if (idSpace != null) {
            merchantId = merchantId + idSpace;
        }

        String merchantName = BeanUtil.getProperty(data, "merchantName");
        Merchant dbMerchant = Q.merchants().filterByExternalId(merchantId).execute(this);
        if (dbMerchant == null) {
            dbMerchant = new Merchant()
                    .updateTaxNumber("TX0001")
                    .updateAddress("北京海淀区")
                    .updateExternalId(merchantId)
                    .updatePlatform(Constants.PLATFORM);
        }
        dbMerchant.updateName(merchantName);
        dbMerchant.save(this);

        Employee dbJob =
                Q.employees()
                        .filterByExternalId(employeeId)
                        //.selectEmployeePermissionList()
                        .selectMerchant()
                        .execute(this);
        if (dbJob == null) {
            info("没有找到 ID 为{}的雇员，新建一个", employeeId);
            //The employee number is required;The gender is required;The birth date is required;The mobile phone is required;The email is required
            dbJob = new Employee()
                    .updateEmployeeNumber(employeeId)
                    .updateGender(GenderType.refer(Constants.GENDER_TYPE_FEMALE_ID))
                    //.updateBirthDate(LocalDate.now())
                    .updateMobilePhone(13800000)
                    .updateEmail(employeeId+"@qq.com")
                    .updateExternalId(employeeId).updateMerchant(dbMerchant);
        }


        dbJob.updateName(employeeName);
        dbJob.save(this);
        setEmployee(dbJob);
        setMerchant(dbMerchant);

        MDC.put(MERCHANT, dbMerchant.getName());
        MDC.put(JOB, dbJob.getName());
    }



    private Employee employee;

    public Employee getEmployee() {
        //Employee employee = this.get(EMPLOYEE, () -> FillStationUtil.user1(this));
        return employee;
    }

    public void setEmployee(Employee dbJob) {
        employee=dbJob;
    }

    public String getIdSpace() {
        return getHeader(ID_SPACE);
    }

}
