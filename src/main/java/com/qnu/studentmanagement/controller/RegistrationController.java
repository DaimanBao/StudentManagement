package com.qnu.studentmanagement.controller;

import com.qnu.studentmanagement.dao.RegistrationDAO;
import com.qnu.studentmanagement.model.RegistrationForm;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegistrationController {
    @Autowired
    private RegistrationDAO dao;

    @GetMapping("/register")
    public String showForm(Model model) {
        model.addAttribute("regForm", new RegistrationForm());
        model.addAttribute("listTruong", dao.getAllTruong());
        model.addAttribute("listNganh", dao.getAllNganh());
        return "registration-form";
    }

    @PostMapping("/register")
    public String processForm(@Valid @ModelAttribute("regForm") RegistrationForm regForm, 
                              BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("listTruong", dao.getAllTruong());
            model.addAttribute("listNganh", dao.getAllNganh());
            return "registration-form";
        }
        
        try {
            dao.save(regForm);
            return "redirect:/success";
        } catch (Exception e) {
            e.printStackTrace(); 
            return "redirect:/fail";
        }
    }
    
    @GetMapping("/success")
    public String showSuccess() {
        return "success";
    }
    
    @GetMapping("/fail")
    public String showFail() {
        return "fail";
    }
}