package uk.ac.cardiff.ASE2022Y2TEAM07.repositories;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import uk.ac.cardiff.ASE2022Y2TEAM07.domain.Checkin;
import uk.ac.cardiff.ASE2022Y2TEAM07.dto.CheckinDto;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CheckinRepositoryImpl implements CheckinRepository{

    private CheckinRepositorySpringDataJdbc repoJdbc;

    private JdbcTemplate jdbc;

    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    public CheckinRepositoryImpl(CheckinRepositorySpringDataJdbc aRepo, JdbcTemplate jdbcTemplate){
        this.repoJdbc = aRepo;
        jdbc = jdbcTemplate;
    }

    @Override
    public Checkin findByCheckInId(Integer checkinsId) {
        return repoJdbc.findByCheckInsId(checkinsId);
    }

    @Override
    public Checkin findByEmployeeId(Integer employeeId) {
        return repoJdbc.findByEmployeeId(employeeId);
    }

    @Override
    public Checkin findByScore(Integer score) {
        return repoJdbc.findByScore(score);
    }

    @Override
    public List<Checkin> findAll() {
        List<Checkin> checkins = new ArrayList<>();
        repoJdbc.findAll().forEach(checkins::add);
        return checkins;
    }

    @Override
    public List<Checkin> findAllByEmployeeId(Integer employeeId) {
        List<Checkin> checkins = new ArrayList<>();
        repoJdbc.findAllByEmployeeId(employeeId).forEach(checkins::add);
        return checkins;
    }

    @Override
    public void save(Checkin checkin) {
        repoJdbc.save(checkin);
    }

    @Override
    public Checkin getCheckinById(Integer checkInsId) {
        Checkin checkin = repoJdbc.findByCheckInsId(checkInsId);
        return checkin;
    }

    @Override
    public List<Checkin> findEmployeeWithAvg() {
        RowMapper<Checkin> checkinMapper = (rs, i) -> new Checkin(
                rs.getInt("EMPLOYEE_ID"),
                rs.getInt("AVG_SCORE"));

        String employeeAvg = "SELECT AVG(CHECK_INS.SCORE) as AVG_SCORE, CHECK_INS.EMPLOYEE_ID FROM CHECK_INS JOIN " +
                "EMPLOYEE ON EMPLOYEE.EMPLOYEE_ID = CHECK_INS.EMPLOYEE_ID GROUP BY CHECK_INS.EMPLOYEE_ID";
        return jdbc.query(employeeAvg, checkinMapper);
    }

//    @Override
//    public List<Checkin> findEmployeeWithAvg() {
//        RowMapper<Checkin> checkinMapper = (rs, i) -> new Checkin(
//                rs.getInt("EMPLOYEE_ID"),
//                rs.getInt("AVG_SCORE"));
//
//        String employeeAvg = "WITH LAST_7_CHECKINS AS (" +
//                "SELECT CHECK_INS.EMPLOYEE_ID, CHECK_INS.SCORE, ROW_NUMBER() OVER (PARTITION BY CHECK_INS.EMPLOYEE_ID ORDER BY CHECK_INS.DATE DESC) AS RN " +
//                "FROM CHECK_INS " +
//                "JOIN EMPLOYEE ON EMPLOYEE.EMPLOYEE_ID = CHECK_INS.EMPLOYEE_ID) " +
//                "SELECT AVG(LAST_7_CHECKINS.SCORE) AS AVG_SCORE, LAST_7_CHECKINS.EMPLOYEE_ID " +
//                "FROM LAST_7_CHECKINS " +
//                "WHERE LAST_7_CHECKINS.RN <= 7 " +
//                "GROUP BY LAST_7_CHECKINS.EMPLOYEE_ID";
//
//        return jdbc.query(employeeAvg, checkinMapper);
//    }
}
