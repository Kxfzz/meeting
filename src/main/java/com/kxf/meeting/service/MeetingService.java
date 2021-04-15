package com.kxf.meeting.service;

import com.kxf.meeting.mapper.MeetingMapper;
import com.kxf.meeting.model.Meeting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class MeetingService {

    @Autowired
    private MeetingMapper meetingMapper;

    /**
     * 增加会议
     *
     * @param meeting Meeting
     * @param mps     参加会议的员工的员工ID
     * @return Integer
     */
    public Integer addMeeting(Meeting meeting, Integer[] mps) {
        //会议发起的时间
        meeting.setReservationtime(new Date());
        Integer result = meetingMapper.addMeeting(meeting);
        meetingMapper.addParticipants(meeting.getMeetingid(), mps);
        return result;
    }

    /**
     * 分页查询获得所有meeting
     * @param meeting Meeting
     * @param page 页数
     * @param pageSize 查几条数据
     * @return
     */
    public List<Meeting> getAllMeetings(Meeting meeting, Integer page, Integer pageSize) {
        //这个page是从第几行数据开始查
        page = (page - 1) * pageSize;
        return meetingMapper.getAllMeetings(meeting,page,pageSize);
    }

    /**
     * 获取员工数量
     * @param meeting Meeting
     * @return Long
     */
    public Long getTotal(Meeting meeting) {
        return meetingMapper.getTotal(meeting);
    }
}
