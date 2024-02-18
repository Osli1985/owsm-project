package com.owsm.consul.controllers;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/ping")
    public @ResponseBody ResponseEntity<String> get() {
        return new ResponseEntity<String>("OWSM-PROJECT", HttpStatus.OK);
    }
}
