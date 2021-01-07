
package controller;

import entity.BookEntity;
import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import repository.BookRepository;


@Controller
public class BookListController {
    @Autowired
    private BookRepository bookRepo;
    
    @RequestMapping(value ="/book", method = RequestMethod.GET)
    public String showBook(Model model){       
        List<BookEntity> bookList = (List<BookEntity>) bookRepo.findAll();
        
        model.addAttribute("bookList",bookList); 
        return "admin/book"; 
    }
    
    @RequestMapping(value = "/searchBook",method = RequestMethod.GET)
       public String searchBook(@RequestParam(name = "searchText")String searchText, Model model){
       searchText="%" + searchText + "%";
      
       List<BookEntity> bookList = bookRepo.findByBookNameLike(searchText);             
       
       model.addAttribute("bookList", bookList);
       
       return "admin/book";            
}
       @RequestMapping(value = "/addNewBook", method = RequestMethod.GET)
    public String showAddNewFrom(Model model){
        String[] category={"1","2","3","4"};       
        model.addAttribute("book", new BookEntity());
        model.addAttribute("category", category);
        
        return "admin/addNewBook";
    }
       @RequestMapping(value = "/addNewBook", method = RequestMethod.POST)
      public String saveBook(BookEntity book,Model model){
          book.setDates(LocalDate.now());
          bookRepo.save(book);
          List<BookEntity> bookList = (List<BookEntity>) bookRepo.findAll();
        
          model.addAttribute("bookList",bookList); 
          
               return "admin/book";
}
      
      @RequestMapping(value = "/editBook/{bookID}",method = RequestMethod.GET)
      public String showEditFrom(@PathVariable(value = "bookID")String idString,Model model){
          int id = Integer.parseInt(idString);
          BookEntity book= bookRepo.findByBookID(id);
          
           model.addAttribute("book", book);
         String[] category={"1","2","3","4"};
        model.addAttribute("category", category);  
        
        return "admin/editBook";
      }
      @RequestMapping(value = "/updateBook",method = RequestMethod.POST)
      public String updateBook(BookEntity book, Model model){
          book.setDates(LocalDate.now());
          List<BookEntity> bookList = (List<BookEntity>) bookRepo.findAll();
        
        model.addAttribute("bookList",bookList); 
          bookRepo.save(book);
          return "admin/book";
      }
      @RequestMapping(value = "/deleteBook/{bookID}",method = RequestMethod.GET)
      public String deleteBook(@PathVariable(name = "bookID")int id){
          bookRepo.deleteById(id);
            
           return "admin/book";
      } 
}
