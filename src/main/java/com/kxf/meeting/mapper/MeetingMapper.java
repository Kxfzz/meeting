package com.kxf.meeting.mapper;

import com.kxf.meeting.model.Meeting;
import com.kxf.meeting.model.MeetingDTO;
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
     *
     * @param meetingDTO MeetingDTO
     * @param page       页数
     * @param pagesize   查几条数据
     * @return
     */
    List<MeetingDTO> listMeetingDTOs(@Param("mdto") MeetingDTO meetingDTO, @Param("page") Integer page,
                                     @Param("pagesize") Integer pagesize);

    /**
     * 获取员工数量
     *
     * @param meetingDTO MeetingDTO
     * @return Long
     */
    Long getTotal(@Param("mdto") MeetingDTO meetingDTO);
}
