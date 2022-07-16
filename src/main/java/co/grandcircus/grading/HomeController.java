package co.grandcircus.grading;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@Autowired
	private GradesRepository repo;
	
	
	@RequestMapping("/") 
	public String listGrades(Model model) {
	List<Grade> grades = repo.findAll();
	model.addAttribute("grades", grades);
	double scoreTotal = 0;
	double totalTotal = 0;
	double scorePercent = 0;
	
	for(Grade grade : grades) {
		scoreTotal += grade.getScore();
		totalTotal += grade.getTotal();
	}
	scorePercent = (scoreTotal/totalTotal)*100;
	model.addAttribute("scorePercent",scorePercent);
	
		return "listgrades";
	}
	
	@RequestMapping("/delete")
	public String remove(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/";
	}
	
	@RequestMapping("/add")
		public String displayAdd() {
			return "add";
		}
	
	@PostMapping("/add")
	public String addForm(Model model,
							@RequestParam String name,
							@RequestParam String type,
							@RequestParam double score,
							@RequestParam double total) {
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		
		Grade newGrade = new Grade(name, type, score, total);
		
		repo.save(newGrade);		
		
		return "confirmation";
	}
	


}
