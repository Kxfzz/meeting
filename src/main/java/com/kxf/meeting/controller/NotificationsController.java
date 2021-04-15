package com.kxf.meeting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 通知页面
 */
@Controller
public class NotificationsController {

    /**
     * 通知页面
     *
     * @return 返回到通知页面
     */
    @GetMapping("/notifications")
    public String notifications() {
        return "notifications";
    }
}
