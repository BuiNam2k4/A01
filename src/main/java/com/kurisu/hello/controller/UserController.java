package com.kurisu.hello.controller;

import java.util.List;

import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kurisu.hello.repository.UserRepository;
import com.kurisu.hello.service.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;

    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<com.kurisu.hello.domain.User> listUsers = this.userService.getAllUser();
        System.out.println(listUsers);

        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new com.kurisu.hello.domain.User());

        return "admin/user/create";

    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") com.kurisu.hello.domain.User user) {
        System.out.println("run here" + user);
        // return "admin/user/create";
        this.userService.handleSaveUser(user);
        return "hello";
    }

    // @GetMapping("")
    // public String getHomePage() {
    // return this.userService.handleHello();

    // }

}
