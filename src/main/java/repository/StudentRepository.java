
package repository;


import entity.StudentEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository extends CrudRepository<StudentEntity, Integer>{
    StudentEntity findByStudentId(int id);
    
    List<StudentEntity> findByStudentNameContainingOrAddressContainingOrSexContaining(String name,String address,String sex);
    
    @Query(value="select * from student join users on student.userID= users.userID where userName=?1",nativeQuery = true)
    StudentEntity getStudentByUserName(String userName);
}
