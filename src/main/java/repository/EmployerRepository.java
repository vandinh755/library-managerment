
package repository;

import entity.EmployerEntity;
import org.springframework.data.repository.CrudRepository;


public interface EmployerRepository extends CrudRepository<EmployerEntity, Integer> {
    EmployerEntity findByEmployerID(int id);
}
