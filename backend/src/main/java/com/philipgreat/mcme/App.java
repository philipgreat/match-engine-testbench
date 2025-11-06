package com.philipgreat.mcme;


import java.util.Set;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import io.teaql.data.translation.TranslationRecord;
import io.teaql.data.translation.TranslationResponse;
import io.teaql.data.translation.Translator;

@SpringBootApplication
public class App {
    public static void main(String[] args) {

        SpringApplication.run(App.class, args);
    }
    @Bean
    public Translator translator() {
        return req -> {
            TranslationResponse translationResponse = new TranslationResponse(req);
            Set<TranslationRecord> records = req.getRecords();
            for (TranslationRecord record : records) {
                String key = record.getKey();
                if (key.equals("web.action.delete")) {
                    record.setValue("Delete");
                } else if (key.equals("web.action.update")) {
                    record.setValue("Update");
                }

            }
            return translationResponse;
        };
    }
//    @Bean
//    public Translator translator() {
//        return req -> {
//            TranslationResponse translationResponse = new TranslationResponse(req);
//            Set<TranslationRecord> records = req.getRecords();
//            for (TranslationRecord record : records) {
//                String key = record.getKey();
//                if (key.equals("web.action.delete")) {
//                    record.setValue("Delete");
//                } else if (key.equals("web.action.update")) {
//                    record.setValue("Update");
//                }
//
//            }
//            return translationResponse;
//        };
//    }
}
