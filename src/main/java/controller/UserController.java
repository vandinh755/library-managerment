
package controller;

import entity.EmployerEntity;
import entity.StudentEntity;
import entity.UserEntity;
import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import repository.EmployerRepository;
import repository.StudentRepository;
import repository.UserRepository;

@Controller
public class UserController {
    @Autowired
    private UserRepository userRepo;
    @Autowired
    private StudentRepository studentRepo;
    @Autowired
    private EmployerRepository employerRepo;
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegisterForm(Model model){
        UserEntity user= new UserEntity();
        StudentEntity student= new StudentEntity();
        student.setUser(user);
        String[] sex={"Male","Female"};
        model.addAttribute("sex",sex);
        model.addAttribute("student", student);
        return "register";
    }
    @RequestMapping(value = "/addnewStudent",method = RequestMethod.POST)
    public String saveNew(StudentEntity student, Model model){        
            UserEntity user = student.getUser();
            user.setRoleName("ROLE_USER");
            user.setEnabled("1");
            userRepo.save(user);
            student.setUser(user);
            studentRepo.save(student);
            
          return "home";
    }
    @RequestMapping(value = "/updateRegister", method = RequestMethod.POST)
    public String updateUser(StudentEntity student,Model model){
        student.setBirDate(LocalDate.now());
        studentRepo.save(student);
        return "home";
    }
    @RequestMapping(value = "/user", method = RequestMethod.GET)
             public String showStudentPage(Model model) {
            //Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        /*    String studentName = "";
            String userName = SecurityContextHolder.getContext().getAuthentication().getName();
            
                        
                StudentEntity student = studentRepo.getStudentByUserName(userName);
                studentName = student.getStudentName();
            model.addAttribute("studentName", studentName);
            List<EmployerEntity> employerList = (List<EmployerEntity>) employerRepo.findAll();
        
        model.addAttribute("employerList",employerList);*/
                       
        return "redirect:/";   
    }
         
}
