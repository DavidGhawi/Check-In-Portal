package uk.ac.cardiff.ASE2022Y2TEAM07.web.forms;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Future;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class GoalForm {

    @NotEmpty(message = "Please enter a title for your goal")
    private String title;
    @NotEmpty(message = "Please enter a description for your goal")
    private String description;
    @NotNull(message = "Please enter a date for your goal")
    @Future(message = "Please enter a date in the future for your goal")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date targetDate;
}
