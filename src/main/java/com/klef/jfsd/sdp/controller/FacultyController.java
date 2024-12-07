package com.klef.jfsd.sdp.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.service.FacultyService;

@Controller
public class FacultyController 
{
    @Autowired
    private FacultyService facultyService;
    
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }
    
    @GetMapping("/facreg")
    public ModelAndView facreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facreg");  
        return mv;
    }
    
    @PostMapping("/insertfaculty")
    public String insertFaculty(HttpServletRequest request,RedirectAttributes redirectAttributes) {

        String name = request.getParameter("fname");
        String password = request.getParameter("fpwd");
        String email = request.getParameter("femail");
        String department = request.getParameter("fdept");
        String contactno = request.getParameter("fcontact");
        String location = request.getParameter("flocation");
        String status = "Registered";
       // String status = "Registered";


        Faculty faculty = new Faculty();
        faculty.setName(name);
        faculty.setPassword(password);
        faculty.setEmail(email);
        faculty.setDepartment(department);
        faculty.setContactno(contactno);
        faculty.setLocation(location);
        faculty.setStatus(status);
        
        

        String msg = facultyService.FacultyRegistration(faculty);
        

        ModelAndView mv = new ModelAndView("regsuccess"); 
        mv.addObject("message", msg); 

        // Add success message to redirect attributes
        redirectAttributes.addFlashAttribute("message", "Faculty registered successfully!");

        // Redirect back to the form page with a success flag
        return "redirect:/facreg?success=true";
        //return mv;
    }
    
    
    @GetMapping("faclogin")
	public ModelAndView faclogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("faclogin");
		return mv;
	}
    
    @GetMapping("faclogout")
	public ModelAndView faclogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("faclogin");
		return mv;
	}
    
    @GetMapping("fachome")
	public ModelAndView fachome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("fachome");
		return mv;
	}
    
    
    @PostMapping("checkfaclogin")
    public ModelAndView checkfaclogin(HttpServletRequest request) 
    {
        ModelAndView mv = new ModelAndView();
        String femail = request.getParameter("femail");
        String fpwd = request.getParameter("fpwd");
        
        Faculty faculty = facultyService.checkfaclogin(femail, fpwd);
        
        if(faculty != null) {
            HttpSession session = request.getSession(true); 
            session.setAttribute("faculty", faculty); 
            mv.setViewName("fachome"); 
        } else {
            mv.setViewName("facloginfail"); 
            mv.addObject("message", "Login Failed");
        }
        
        return mv;
    }

    
    @GetMapping("facsessionfail")
    public ModelAndView facsessionfail() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facsessionfail"); 
        return mv;
    }

    
    @GetMapping("updatefac")
	  public ModelAndView updatefac()
	  {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("updatefac");
		  return mv;
	  }
    
    
        
    @PostMapping("updatefaculty")
    public ModelAndView updateFaculty(HttpServletRequest request)
    {
        int id = Integer.parseInt(request.getParameter("fid"));
        String name = request.getParameter("fname");
        String password = request.getParameter("fpwd");
        String department = request.getParameter("fdept");
        String contact = request.getParameter("fcontact");
        String location = request.getParameter("flocation");

        Faculty faculty = new Faculty();
        faculty.setId(id);
        faculty.setName(name);
        faculty.setPassword(password);
        faculty.setDepartment(department);
        faculty.setContactno(contact);
        faculty.setLocation(location);

        String msg = facultyService.updateFaculty(faculty);

        ModelAndView mv = new ModelAndView("updatesuccess"); 
        mv.addObject("message", msg); 
        
        return mv;
    }


    
    
    @GetMapping("facprofile")
    public ModelAndView facprofile() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facprofile");
        return mv;
    }
    
    
    
    @GetMapping("/facaddstu")
    public ModelAndView studentreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facaddstu");  
        return mv;
    }
	
    @PostMapping("/facinsertstu")
    public ModelAndView insertStudent(HttpServletRequest request) {
        // Retrieve form data
        String name = request.getParameter("fname");
        String password = request.getParameter("fpwd");
        String email = request.getParameter("femail");
        String department = request.getParameter("fdept");
        String contactno = request.getParameter("fcontact");
        String gender = request.getParameter("fgender");
        String dob = request.getParameter("fdob");
        
        Student student = new Student();
        student.setName(name);
        student.setPassword(password);
        student.setEmail(email);
        student.setDepartment(department);
        student.setContactno(contactno);
        student.setGender(gender);
        student.setDob(dob);
        student.setEventsRegistered(""); 
        
        String msg = facultyService.addStudent(student);
        
        ModelAndView mv = new ModelAndView("facaddstu");
        mv.addObject("successMessage", msg);
        
        return mv;
    }
    
    
    
    @GetMapping("facviewallstu")
	public ModelAndView viewAllStudents() {
	    ModelAndView mv = new ModelAndView();
	    

	    long scount = facultyService.studentCount();
		mv.addObject("scount",scount);
	    
	    List<Student> studentList = facultyService.viewAllStudents();
	    
	    mv.setViewName("facviewallstu");
	    mv.addObject("studentList", studentList);
	    
	    return mv;
	}
    
    
    @GetMapping("facdelstu")
	  public ModelAndView deletestudent() 
	  {
	    ModelAndView mv = new ModelAndView();
	    
	    List<Student> studentList = facultyService.viewAllStudents();
	    mv.setViewName("facdelstu");
	    mv.addObject("studentList", studentList);
	    return mv;
	  }
	
	@GetMapping("facdeletestu")
	   public String deletestudent(@RequestParam("id")  int student_id)
	   {
		   facultyService.deleteStudent(student_id);
		   return "redirect:/facdelstu";
	   }


	

}
