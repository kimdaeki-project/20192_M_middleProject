package com.mid.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation/**")
public class ReservationController {

	@GetMapping(value = "reservationInput")
	public void reservationInput()throws Exception{
		
	}
	
}
