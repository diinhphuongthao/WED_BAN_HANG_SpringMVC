package springmvc.demo.controller.user;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import springmvc.demo.entity.Menus;
import springmvc.demo.service.user.HomeService;



@Controller
public class BaseController {
	
	@Autowired
	 HomeService homeServer;
	
	ModelAndView modelAndView= new ModelAndView();
	@PostConstruct
	public ModelAndView init() {
		return modelAndView.addObject("menus",homeServer.getDsMenus());
	}
}
