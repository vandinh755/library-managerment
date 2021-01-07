
package controller;

import entity.CategoryEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import repository.CategoryRepository;

@Controller     
public class CategoryController {
  @Autowired
    private CategoryRepository categoryRepo;
  
    @RequestMapping(value ="/category", method = RequestMethod.GET)
    public String showCategory(Model model){       
        List<CategoryEntity> categoryList = (List<CategoryEntity>) categoryRepo.findAll();
        model.addAttribute("categoryList",categoryList); 
        return "admin/category"; 
    }
    
    @RequestMapping(value = "/searchCategory",method = RequestMethod.GET)
       public String searchProcess(@RequestParam(name = "searchText")String searchText, Model model){
            searchText="%" + searchText + "%";

            List<CategoryEntity> categoryList = categoryRepo.findByCategoryNameLike(searchText);             

            model.addAttribute("categoryList", categoryList);

            return "admin/category";            
        }
       
       @RequestMapping(value = "/addNewCategory", method = RequestMethod.GET)
    public String showAddNewCategoryFrom(Model model){      
        model.addAttribute("category", new CategoryEntity());
        
        return "admin/addNewCategory";
    }
       @RequestMapping(value = "/addNewCategory", method = RequestMethod.POST)
      public String saveNewCategory(CategoryEntity category,Model model){
          
          categoryRepo.save(category);
        
        return "redirect:admin/category";
}
      @RequestMapping(value = "/updateCategory",method = RequestMethod.POST)
      public String updateCategory(CategoryEntity category){ 
          categoryRepo.save(category);
          return "admin/category";
      }
      @RequestMapping(value = "/deleteCategory/{categoryID}",method = RequestMethod.GET)
      public String deleteCategory(@PathVariable(name = "categoryID")int id){
          categoryRepo.deleteById(id);
            
           return "redirect:admin/category";
      } 
      @RequestMapping(value = "/editCategory/{categoryID}",method = RequestMethod.GET)
      public String showEditCategoryFrom(@PathVariable(value = "categoryID")String idString,Model model){
          int id = Integer.parseInt(idString);
          CategoryEntity category= categoryRepo.findByCategoryID(id);          
           model.addAttribute("category", category); 
        
        return "redirect:admin/editCategory";
      }
}
