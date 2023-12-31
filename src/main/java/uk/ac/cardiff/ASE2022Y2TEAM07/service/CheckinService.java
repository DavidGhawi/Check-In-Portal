package uk.ac.cardiff.ASE2022Y2TEAM07.service;

import uk.ac.cardiff.ASE2022Y2TEAM07.domain.Checkin;
import uk.ac.cardiff.ASE2022Y2TEAM07.domain.OneToOne;
import uk.ac.cardiff.ASE2022Y2TEAM07.dto.CheckinDto;

import java.util.List;
import java.util.Map;

public interface CheckinService {
    List<CheckinDto> findAll();

    void save(CheckinDto checkinDto);

    Checkin getCheckinById(Integer checkInsId);

    Map<Integer,Integer> getAvg();

    Integer getAvgByEmployeeId(Integer employeeId);

}
