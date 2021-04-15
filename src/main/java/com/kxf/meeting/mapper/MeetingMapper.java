package com.kxf.meeting.mapper;

import com.kxf.meeting.model.Meeting;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MeetingMapper {

    /**
     * 添加会议
     *
     * @param meeting Meeting
     * @return Integer
     */
    Integer addMeeting(Meeting meeting);

    /**
     * 添加参与者
     *
     * @param meetingid 会议Id
     * @param mps       参加会议的员工的员工ID
     */
    void addParticipants(@Param("meetingid") Integer meetingid, @Param("mps") Integer[] mps);

    /**
     * 分页查询获得所有meeting
     * @param meeting Meeting
     * @param page 页数
     * @param pageSize 查几条数据
     * @return
     */
    List<Meeting> getAllMeetings(@Param("meeting") Meeting meeting,@Param("page") Integer page,@Param("pagesize") Integer pageSize);

    /**
     * 获取员工数量
     * @param meeting Meeting
     * @return Long
     */
    Long getTotal(Meeting meeting);
}
