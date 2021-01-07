
package controller;


import entity.StudentEntity;
import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import repository.StudentRepository;


@Controller
public class StudentController {
    @Autowired
    private StudentRepository studentRepo;
    
    @RequestMapping(value ="/student", method = RequestMethod.GET)
    public String showStudent(Model model){         
        List<StudentEntity> studentList = (List<StudentEntity>)studentRepo.findAll();        
        model.addAttribute("studentList",studentList); 
        return "admin/student"; 
    }
    
    @RequestMapping(value = "/searchstudent",method = RequestMethod.GET)
       public String searchStudent(@RequestParam(name = "searchText")String searchText, Model model){
       //searchText="%" + searchText + "%";
      
       List<StudentEntity> studentList = studentRepo.findByStudentNameContainingOrAddressContainingOrSexContaining(searchText, searchText, searchText);             
       
       model.addAttribute("studentList", studentList);
       
       return "admin/student";
    }
       
      @RequestMapping(value = "/updateStudent",method = RequestMethod.POST)
      public String updateStudent(StudentEntity student, Model model){
          student.setBirDate(LocalDate.now());
          List<StudentEntity> studentList = (List<StudentEntity>)studentRepo.findAll();        
        model.addAttribute("studentList",studentList); 
          studentRepo.save(student);
          
          return "admin/student";
      }
      @RequestMapping(value = "/deleteStudent/{studentId}",method = RequestMethod.GET)
      public String deleteStudent(@PathVariable(name = "id")int id){
          studentRepo.deleteById(id);
            
           return "redirect:admin/student";
      }
      @RequestMapping(value = "/viewDetail/{studentId}",method = RequestMethod.GET)
      public String showStudentFrom(@PathVariable(value = "studentId")int id,Model model){
          StudentEntity student= studentRepo.findByStudentId(id);
          
           model.addAttribute("student", student);          
        
        return "admin/viewDetail";
      }    

 }