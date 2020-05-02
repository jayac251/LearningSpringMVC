/**
 * 
 */
package io.jc.studentapp;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Logger;
//import org.apache.log4j.Logger;
//import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import io.jc.studentapp.student.model.Quote;
import io.jc.studentapp.student.model.Student;
import io.jc.studentapp.student.repo.StudentRepository;

/**
 * @author Dell
 *
 */
@Controller
@RequestMapping("student-mgmt")
public class StudentController {

	private static final Logger log = Logger.getLogger(StudentController.class);
	@Autowired
	StudentRepository studRepo;

	@GetMapping(path = "/home")
	public String getHomePage(Model model) {
		log.debug("StudentController: Building Quote.");
		Quote quote = new Quote();
		quote.setBlockQuote("Be a Student....");
		quote.setFooter("as long as you have something to learn and this will mean all");
		quote.setCite("your life!!!");
		model.addAttribute("myQuote",quote);
		log.debug("StudentController: Navigating to home page.");		
		return "home";

	}

	@GetMapping(path = "/addstudent")
	public String goToAddStudent() {
		log.debug("StudentController: Navigating to add student page.");
		return "addstudent";
	}

	@PostMapping(path = "/addstudent")
	public String saveStudent() {
		log.debug("StudentController: Processing  new student information.");
		// studRepo.save(student);
		log.debug("StudentController: Student saved successful.");
		return "addstudent";
	}
	
	@PostMapping(path = "/addstudent", params= {"gridIsSportiveRadios=Yes"})
	public String saveSportiveStudent() {
		log.debug("StudentController: Processing  new sportive student information.");
		// studRepo.save(student);
		log.debug("StudentController: Sportive Student saved successful.");
		return "addstudent";
	}

	//@GetMapping(path = "/searchstudent")
	//public String goToSearchStudent() {
	//	log.debug("StudentController: Navigating to search student page.");
	//	return "searchstudent";
	//}
	
	@GetMapping(path = "/searchstudent")
	public String listAllStudents(Model model) {
		log.debug("StudentController: Navigating to search student page.");
		model.addAttribute("studentsList", studRepo.findAll());
		return "searchstudent";
	}

	@GetMapping(path = "/students")
	public List<Student> retrieveAllStudents() {
		List<Student> studList = studRepo.findAll();
		return studList;

	}

}
