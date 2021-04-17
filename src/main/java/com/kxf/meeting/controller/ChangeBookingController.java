package com.kxf.meeting.controller;

import com.kxf.meeting.model.Employee;
import com.kxf.meeting.model.MeetingDTO;
import com.kxf.meeting.service.MeetingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ChangeBookingController {

    @Autowired
    private MeetingService meetingService;

    /**
     * 返回我的预订页面
     *
     * @param httpSession HttpSession
     * @param model       Model
     * @return mybookings
     */
    @RequestMapping("/mybookings")
    public String mybookings(HttpSession httpSession, Model model) {
        Employee currentUser = (Employee) httpSession.getAttribute("currentUser");
        Integer employeeid = currentUser.getEmployeeId();
        List<MeetingDTO> list = meetingService.getmeetingofmybookCanCancle(employeeid);

        model.addAttribute("mlist", list);

        return "mybookings";
    }
}
