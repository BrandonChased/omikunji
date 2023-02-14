package com.brandon.omikunji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainControllers {
    
    @RequestMapping("/")
    public String form(){
        return "index.jsp";
    }

    @PostMapping("/createMessage")
    public String createMessage(
        @RequestParam(value = "number") int number,
        @RequestParam(value = "cityName") String cityName,
        @RequestParam(value = "name") String name,
        @RequestParam(value = "hobby") String hobby,
        @RequestParam(value = "livingThing") String livingThing,
        @RequestParam(value = "somethingNice") String somethingNice,
        HttpSession session
    ){
        session.setAttribute("number", number);
        session.setAttribute("cityName", cityName);
        session.setAttribute("name", name);
        session.setAttribute("hobby", hobby);
        session.setAttribute("livingThing", livingThing);
        session.setAttribute("somethingNice", somethingNice);
        return "redirect:/show";
    }

    @RequestMapping("/show")
    public String showMessage() {

        return "show.jsp";
    }


}
