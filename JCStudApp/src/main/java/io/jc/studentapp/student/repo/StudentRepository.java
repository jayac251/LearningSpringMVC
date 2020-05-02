/**
 * 
 */
package io.jc.studentapp.student.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import io.jc.studentapp.student.model.Student;

/**
 * @author Dell
 *
 */
@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

}
