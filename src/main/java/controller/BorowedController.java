
package controller;

import entity.BorrowedDetailEntity;
import entity.BorrowedEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import repository.BorrowedDetailRepository;
import repository.BorrowedRepository;

@Controller
public class BorowedController {
    @Autowired
    private BorrowedRepository borrowedRepo;
    @Autowired
    private BorrowedDetailRepository borrowedDetailRepo;
    
    @RequestMapping(value ="/borrowed", method = RequestMethod.GET)
    public String showBorrowed(Model model){       
        List<BorrowedEntity> borrowedList = (List<BorrowedEntity>) borrowedRepo.findAll();
        
        model.addAttribute("borrowedList",borrowedList); 
        return "admin/borrowed"; 
    }
    @RequestMapping(value ="/viewBorrowed", method = RequestMethod.GET)
    public String showBorrowedDetail(Model model){       
        List<BorrowedDetailEntity> borrowedDetailList = (List<BorrowedDetailEntity>) borrowedDetailRepo.findAll();
        
        model.addAttribute("borrowedDetailList",borrowedDetailList); 
        return "admin/viewBorrowed"; 
    }
}
