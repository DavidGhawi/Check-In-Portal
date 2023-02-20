package uk.ac.cardiff.ASE2022Y2TEAM07.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.data.relational.core.mapping.Table;

@Data
@AllArgsConstructor
@Table("SUPERVISOR")
public class Supervisor {

    public int getSupervisorId() {
        return supervisorId;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    private int supervisorId;
    private String name;
    private String email;
    private String passwordHash;

}
