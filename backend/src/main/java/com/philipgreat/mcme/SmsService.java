package com.philipgreat.mcme;

import java.util.Random;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.http.MediaType;

public class SmsService {

    private static final String URL = "https://dpmall.drplant.com/sms/smsMonternet/sendSingleHttp";
    public static String generateRandomCode() {
        Random random = new Random();
        int code = 100000 + random.nextInt(900000); // 生成一个范围在100000到999999之间的随机数
        return String.valueOf(code);
    }
    public static String sendSms(String mobile) {
        RestTemplate restTemplate = new RestTemplate();

        // 设置请求头
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        String code=generateRandomCode();
        // 创建请求体
        String content = "手机验证码为: "+code +", 五分钟有效，注意保密！此短信从VoE发出。"; // 根据需要替换为实际短信内容
        String systemCode = "VOE";
        String requestBody = String.format("{\"mobile\":\"%s\",\"content\":\"%s\",\"systemCode\":\"%s\"}", mobile, content, systemCode);

        HttpEntity<String> entity = new HttpEntity<>(requestBody, headers);

        // 发送POST请求
        ResponseEntity<String> response = restTemplate.exchange(URL, HttpMethod.POST, entity, String.class);

        // 返回响应内容
        return code;
    }

    public static void main(String[] args) {
        String response = sendSms("18981811689");
        System.out.println("Response: " + response);
    }
}
