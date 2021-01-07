
package repository;

import entity.CardEntity;
import java.time.LocalDate;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CardRepository extends CrudRepository<CardEntity, Integer>{
    CardEntity findByCardId(int id);   
    //List<CardEntity> findByDateBorrowedBetween(LocalDate dateBorrowed,LocalDate payDay);
}
