package com.philipgreat.mcme;

import cn.hutool.core.map.MapUtil;

import io.teaql.data.TQLContext;
import io.teaql.data.UserContext;
import io.teaql.data.meta.EntityMetaFactory;
import io.teaql.data.sql.SQLRepositorySchemaHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EnsureModelController {

    @Autowired
    private EntityMetaFactory factory;

    @GetMapping(value = "/version/", produces = MediaType.TEXT_PLAIN_VALUE)

    public String version(){
        return "V1.0.0";
    }


    @GetMapping(value = "/contextInfo/", produces = MediaType.TEXT_PLAIN_VALUE)

    public String contextInfo(@TQLContext UserContext ctx){

//        new Merchant().updateName("测试租户")
//                .updateCredential("YcvcuofutNR+iTVB9MUeM2TDAPh6ypZ7")
//                .updatePlatform(Platform.refer(1l))
//                .save(ctx);


        return "your ip: "+ ctx.getClientIp() +"\n" +
                "from local: " + ctx.isFromLocalhost() ;
    }


    @GetMapping("/ensureTables")

    public Object ensureTable(@TQLContext UserContext context) {
        if(!context.isFromLocalhost()){
            return "ONLY allowed from localhost to protect the import assets!";
        }
        try {
            new SQLRepositorySchemaHelper().ensureSchema(context, factory);
            return MapUtil.of("ok", true);
        } catch (Exception e) {
            return MapUtil.of("fail", e.getMessage());
        }
    }






}
