package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
@RequestMapping("/")
public class RegistrationController {

    @GetMapping("")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/formular");
        modelAndView.addObject("form", new RegistrationForm());
        return modelAndView;
    }

    @PostMapping("/")
    public Object form(@Valid @ModelAttribute("form") RegistrationForm form, BindingResult bindingResult) {
        if (bindingResult.hasErrors() || !isAgeValid(form.getBirthDate())) {
            if (!isAgeValid(form.getBirthDate())) {
                bindingResult.rejectValue("birthDate", "error.registrationForm", "Age must be between 9 and 15 years.");
            }
            return "/formular";
        }
        return new ModelAndView("/registered")
                .addObject("email", form.getEmail());
    }

    private boolean isAgeValid(LocalDate birthDate) {
        if (birthDate == null) {
            return false;
        }
        Period period = birthDate.until(LocalDate.now());
        int vek = period.getYears();
        return vek >= 9 && vek <= 15;
    }
}
