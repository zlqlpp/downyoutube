package com.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

 

@Controller
@RequestMapping("/d")
public class MUserController {

 
	
	@RequestMapping(value="/index")
	public String listUser(HttpServletRequest request) {
		
		
        try {
        	Process pro = Runtime.getRuntime().exec("/root/douyu----------------------video3/killShowAndFfmpeg.sh");
            pro.waitFor();
        } catch ( Exception e) {
            e.printStackTrace();
        }
		request.setAttribute("userlist", "");
		return "index";
	}
	
 
}
