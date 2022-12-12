package uk.ac.cardiff.ASE2022Y2TEAM07.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uk.ac.cardiff.ASE2022Y2TEAM07.domain.Checkin;
import uk.ac.cardiff.ASE2022Y2TEAM07.domain.Employee;
import uk.ac.cardiff.ASE2022Y2TEAM07.dto.CheckinDto;
import uk.ac.cardiff.ASE2022Y2TEAM07.repositories.CheckinRepository;
import uk.ac.cardiff.ASE2022Y2TEAM07.service.CheckinService;
import uk.ac.cardiff.ASE2022Y2TEAM07.web.forms.CheckinForm;

import javax.swing.*;
import java.time.LocalDate;
import java.util.Comparator;

@RequestMapping("employee/checkin")
@PreAuthorize("hasRole('ROLE_EMPLOYEE')")
@Controller
public class CheckinController {

    @Autowired
    private final CheckinService checkinService;

    @Autowired
    private final CheckinRepository checkinRepository;

    @Autowired
    private final OneToOneController oneToOneController;

    @Autowired
    public CheckinController(CheckinService checkinService, CheckinRepository checkinRepository, OneToOneController oneToOneController) {
        this.checkinService = checkinService;
        this.checkinRepository = checkinRepository;
        this.oneToOneController = oneToOneController;
    }

    @GetMapping("")
    public ModelAndView checkinsForm(Model model, Integer employeeId) {
        Employee em = oneToOneController.getCurrentEmployee();

        var checkIn = oneToOneController.getCurrentEmployee().getCheckins()
                .stream()
                .sorted(Comparator.comparing(Checkin::getDate).reversed())
                .limit(1)
                .findFirst();

        if (checkIn.isPresent() && LocalDate.now().compareTo(checkIn.get().getDate()) < 0) {
            JOptionPane optionPane = new JOptionPane("You have already checked in for today", JOptionPane.WARNING_MESSAGE);
            JDialog dialog = optionPane.createDialog("Warning!");
            dialog.setAlwaysOnTop(true);
            dialog.setVisible(true);

        } else {

            model.addAttribute("name", oneToOneController.getCurrentEmployee().getName());
            model.addAttribute("supervisor", "Carl");
            model.addAttribute("checkinForm", new CheckinForm(em.getEmployeeId(), 5));
            var mv = new ModelAndView("employee/EmployeeCheckinPage", model.asMap());
            return mv;
        }
        return null;
    }

    @PostMapping("")
    public ModelAndView checkinForm(CheckinForm checkinForm, Model model, BindingResult bindingResult) {

//        if (bindingResult.hasErrors()){
//            model.addAttribute("name", oneToOneController.getCurrentEmployee().getName());
//            model.addAttribute("supervisor", "Carl");
//            model.addAttribute("checkinForm",  checkinForm);
//            var mv = new ModelAndView("employee/EmployeeCheckinPage", model.asMap());
//            return mv;
//        }

        Employee em = oneToOneController.getCurrentEmployee();

        LocalDate now = LocalDate.now();

        CheckinDto checkinDto = new CheckinDto(null, em.getEmployeeId(), checkinForm.getScore(), now);
        checkinService.save(checkinDto);

        var mv = new ModelAndView("redirect://localhost:8080/employee", model.asMap());
        return mv;
    }

    @GetMapping("/history")
    public ModelAndView checkinHistory(Model model) {
        model.addAttribute("checkins", checkinRepository.findAllByEmployeeId(oneToOneController.getCurrentEmployee().getEmployeeId()));
        var mv = new ModelAndView("employee/EmployeeCheckinHistory", model.asMap());
        return mv;
    }

}



