package com.philipgreat.mcme.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.json.JsonMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

public class JsonUtil {

    private static final ObjectMapper mapper;

    static {
        mapper = JsonMapper.builder()
                .addModule(new JavaTimeModule())
                .serializationInclusion(JsonInclude.Include.NON_NULL)// 支持 Java 8 日期时间
                .disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS) // 不使用时间戳
                .build();
    }



    /**
     * 对象转 JSON 字符串
     */
    public static String toJson(Object obj) {
        try {
            return mapper.writeValueAsString(obj);
        } catch (JsonProcessingException e) {
            throw new RuntimeException("对象转 JSON 出错", e);
        }
    }

    /**
     * JSON 字符串转对象
     */
    public static <T> T fromJson(String json, Class<T> clazz) {
        try {
            return mapper.readValue(json, clazz);
        } catch (Exception e) {
            throw new RuntimeException("JSON 转对象出错", e);
        }
    }

    /**
     * 获取全局 ObjectMapper（方便定制）
     */
    public static ObjectMapper getMapper() {
        return mapper;
    }
}
