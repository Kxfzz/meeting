package com.kxf.meeting.service;

import com.kxf.meeting.mapper.MeetingMapper;
import com.kxf.meeting.model.Meeting;
import com.kxf.meeting.model.MeetingDTO;
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
     *
     * @param meetingDTO MeetingDTO
     * @param page       页数
     * @param pagesize   查几条数据
     * @return
     */
    public List<MeetingDTO> listMeetingDTOs(MeetingDTO meetingDTO, Integer page, Integer pagesize) {
        page = (page - 1) * pagesize;
        return meetingMapper.listMeetingDTOs(meetingDTO, page, pagesize);
    }

    /**
     * 获取员工数量
     *
     * @param meetingDTO MeetingDTO
     * @return Long
     */
    public Long getTotal(MeetingDTO meetingDTO) {
        return meetingMapper.getTotal(meetingDTO);
    }

    /**
     * 根据meetingid获取会议信息
     *
     * @param meetingid Integer
     * @return MeetingDTO
     */
    public Meeting getmeetingByid(Integer meetingid) {
        return meetingMapper.getMeetingById(meetingid);
    }


}
