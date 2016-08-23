package student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import student.entity.User;
import student.service.UserService;

@RestController
@RequestMapping("/api/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public User findUserByEmail(@RequestParam("email") String email){
		
		System.out.println("=>api: " + email);
		
		return userService.findUserByEmail(email);
	}
	
}
