package com.philipgreat.mcme.resultstatusreceiver;


import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class MatchResultListener {

    @EventListener(ApplicationReadyEvent.class)
    public void onApplicationReady() {
        System.out.println("✅ Application is fully started!");
        // 这里执行应用启动完成后的逻辑
    }
}


