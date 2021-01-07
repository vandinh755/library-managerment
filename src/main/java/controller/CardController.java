
package controller;

import entity.BookEntity;
import entity.CardEntity;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import repository.CardRepository;

@Controller
public class CardController {
    @Autowired
    private CardRepository cardRepo;
    
    @RequestMapping(value ="/card", method = RequestMethod.GET)
    public String showCard(Model model){       
        List<CardEntity> cardList = (List<CardEntity>) cardRepo.findAll();
        
        model.addAttribute("cardList",cardList); 
        return "admin/card"; 
    }
    /*@RequestMapping(value = "/searchCard", method = RequestMethod.GET)
    public String searchReport(@RequestParam(name = "dateBorrowed") @DateTimeFormat(pattern = "yyyy-MM-dd") Date dateBorrowed,
            @RequestParam(name = "payDay") @DateTimeFormat(pattern = "yyyy-MM-dd") Date payDay, Model model) {

        LocalDate dateBorrowedLocalDate = LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dateBorrowed));
        LocalDate payDayLocalDate = LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(payDay));
        List<CardEntity> cardList = cardRepo.findByDateBorrowedBetween(dateBorrowedLocalDate, payDayLocalDate);
        model.addAttribute("cardList", cardList);
        model.addAttribute("dateBorrowed", dateBorrowed);
        model.addAttribute("payDay", payDay);

        return "admin/card";
    }*/
    @RequestMapping(value = "/deleteCard/{cardId}",method = RequestMethod.GET)
      public String deleteCard(@PathVariable(name = "cardId")int id){
          cardRepo.deleteById(id);
            
           return "admin/card";
      } 
      @RequestMapping(value = "/updateCard",method = RequestMethod.POST)
      public String updateCard(CardEntity card){
          card.setExpirationDate(LocalDate.now());
          card.setDateOfError(LocalDate.now());
          card.setPaymentDate(LocalDate.now());
          
          cardRepo.save(card);
          return "admin/card";
      }
      @RequestMapping(value = "/viewBorrowed/{cardId}",method = RequestMethod.GET)
      public String showViewBorrowedFrom(@PathVariable(value = "cardId")int id,Model model){
          CardEntity card= cardRepo.findByCardId(id);
          
           model.addAttribute("card", card);          
        
        return "admin/viewBorrowed";
      }  
}
