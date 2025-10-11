package com.philipgreat.mcme.util;

import com.philipgreat.mcme.SmsService;

import cn.hutool.core.util.ObjUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.log.StaticLog;

import io.teaql.data.UserContext;
import io.teaql.data.web.WebResponse;

public class VerficationCodeUtil {
    static final String VCODE_VAR_NAME ="__vcode";
    private static String genPreventCacheKey(String mobile) {
        return  String.format("%s:%s:60",VCODE_VAR_NAME,mobile);
    }
    public static void sendVCode(UserContext context, String mobile){

        // 定义验证码图片的宽和高
        // 防止高频重发

        String code=context.getInStore(genPreventCacheKey(mobile));

        if(code!=null){
            reportError("请稍候再试");
        }

        code= SmsService.sendSms(mobile);
        context.putInStore(genPreventCacheKey(mobile),code,60);
        context.putInStore(genCacheKey(mobile),code,60*5);


    }
    public static void verify(UserContext context, String mobile, String code){

        if(StrUtil.isEmpty(mobile)){
            reportError("请提供手机号");
        }
        if(StrUtil.isEmpty(code)){
            StaticLog.info("param code is null");
            reportError("请提供验证码");
        }
        String storedCode=context.getInStore(genCacheKey(mobile));
        if(ObjUtil.isEmpty(storedCode)){
            StaticLog.info("context.getInStore(genCacheKey(mobile))is null");
            reportError("没有找到手机号'"+mobile+"'的验证码");
        }
        //StaticLog.info(session.getAttribute(CAPTCHA_VAR_NAME).toString());
        if(!storedCode.equals(code)){
            reportError("验证码不匹配");
        }


    }
    private static String genCacheKey(String mobile) {
        return  String.format("%s:%s",VCODE_VAR_NAME,mobile);
    }

    private static void reportError(String message) {
        throw new IllegalArgumentException(message);
    }

}
