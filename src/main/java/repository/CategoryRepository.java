
package repository;

import entity.CategoryEntity;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends CrudRepository<CategoryEntity, Integer>{
    CategoryEntity findById(int id);
    CategoryEntity findByCategoryID(int id);
        List<CategoryEntity>findByCategoryNameLike(String name);
}
