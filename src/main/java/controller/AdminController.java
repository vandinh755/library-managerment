
package controller;


import entity.EmployerEntity;
import entity.StudentEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import repository.EmployerRepository;

@Controller
public class AdminController {  
    @Autowired
    private EmployerRepository employerRepo;
    
    @RequestMapping(value = "/admin/index", method = RequestMethod.GET)
    public String showAdmin(Model model) {
         List<EmployerEntity> employerList = (List<EmployerEntity>) employerRepo.findAll();
        
        model.addAttribute("employerList",employerList);
        return "/admin/index";
    }
    @RequestMapping(value = "/admin/basic-table", method = RequestMethod.GET)
    public String showbasictable(Model model) {
        return "/admin/basic-table";
    }
    @RequestMapping(value = "/map-google", method = RequestMethod.GET)
    public String showmapgoogle(Model model) {
        return "/admin/map-google";
    }
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String showprofile(Model model) {
        return "/admin//profile";
    }
    /*@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String Login(Model model) {
        
        return "login";
    } */ 
    @RequestMapping(value = "/403_error", method = RequestMethod.GET)
    public String error(Model model) {
        return "/admin//403_error";
    } 
}
