package com.pms.Controller;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.pms.dao.NonPresDrugsRepository;
import com.pms.dao.PresDrugsRepository;
import com.pms.model.NonPresDrugs;
import com.pms.model.PresDrugs;
import com.pms.service.DrugService;

@Controller
public class DrugsController {
	@Autowired
	DrugsController drugRepo;
	@Autowired
	PresDrugsRepository presdrugRepo;
	@Autowired
	NonPresDrugsRepository nonpresdrugRepo;
	@Autowired
	private DrugService drugService;

	@RequestMapping(value = "/addDrugs", method = RequestMethod.POST)
	public String addDrugs(PresDrugs one, @RequestParam("drugimg") MultipartFile multipartfile) throws Exception {

		// PresDrugs one=new PresDrugs();

		one.getName();
		one.getPrice();
		one.getDescription();
		one.getAvailability();

		String urlpath = saveImage(multipartfile);

		one.setUrl(urlpath);

		presdrugRepo.save(one);

		return "/adddrugs.jsp";

	}

	@RequestMapping(value = "/addNonPresDrugs", method = RequestMethod.POST)
	public String addDrugs(NonPresDrugs one, @RequestParam("drugimg") MultipartFile multipartfile) throws Exception {

		// PresDrugs one=new PresDrugs();

		one.getName();
		one.getPrice();
		one.getDescription();
		one.getAvailability();

		String urlpath = saveImage(multipartfile);

		one.setUrl(urlpath);

		nonpresdrugRepo.save(one);

		return "/addNonPresDrugs.jsp";

	}

	public String saveImage(@RequestParam("drugimg") MultipartFile multipartfile) throws Exception {

		byte[] bytes = multipartfile.getBytes();
		java.nio.file.Path path = Paths
				.get("C:\\spring Workspace\\PMS\\src\\main\\webapp\\img\\" + multipartfile.getOriginalFilename());
		Files.write(path, bytes);

		return multipartfile.getOriginalFilename();
	}

//	@PostMapping("/addDrugs")
	// public String uploadImg(@RequestParam("drugimg") MultipartFile imageFile)
	// throws Exception {
	// String returnvalue="start";
	// try {
	// saveImage(imageFile);
	// } catch (Exception e) {
	// TODO Auto-generated catch block
	// e.printStackTrace();

	// returnvalue="error";
	// }

	// return "adddrugs.jsp";

	// }

	@GetMapping("/getPresDrugs")
	public Collection<PresDrugs> getAllPresDrugs() {
		return drugService.findAllPresDrugs();

	}

	@GetMapping("/showUpdatePres")
	public String showUpdatePres(@RequestParam("id") int id, ModelMap modelmap) {

		PresDrugs drug = presdrugRepo.findById(id).get();

//		 if(drug==null) {
//			
//				System.out.println(drugs.getName());
//				modelmap.addAttribute("drug", drugs);
//			 
//			 return "editNonPresDrug.jsp";
//	        
//	    } else{

		System.out.println(drug.getName());
		modelmap.addAttribute("drug", drug);

//	}
		return "editPresDrug.jsp";
	}

	@GetMapping("/showUpdateNonPres")
	public String showUpdateNonPres(@RequestParam("id") int id, ModelMap modelmap) {
		NonPresDrugs drug = nonpresdrugRepo.findById(id).get();
		System.out.println(drug.getName());
		modelmap.addAttribute("drug", drug);

		return "editNonPresDrug.jsp";

	}

	@RequestMapping(value = "/updatePresDrug", method = RequestMethod.POST)
	public String updatePresDrug(PresDrugs one) {

		presdrugRepo.save(one);
		return "redirect:/PharShowPresDrug";

	}

	@RequestMapping(value = "/updateNonPresDrug", method = RequestMethod.POST)
	public String updateNonPresDrug(NonPresDrugs one) {

		nonpresdrugRepo.save(one);
		return "redirect:/PharShowNonPresDrug";

	}

	@RequestMapping("/deletePresDrug")
	public String deletePresDrug(int id, ModelMap modelmap) {
		presdrugRepo.deleteById(id);
		modelmap.addAttribute("msg", "Succesfully deleted the Drug.");
		return "redirect:/PharShowPresDrug";

	}

	@RequestMapping("/deleteNonPresDrug")
	public String deleteNonPresDrug(int id, ModelMap modelmap) {
		nonpresdrugRepo.deleteById(id);
		modelmap.addAttribute("msg", "Succesfully deleted the Drug.");
		return "redirect:/PharShowNonPresDrug";

	}

	@RequestMapping("/searchDrugPm")
	public String searchDrugPm(@RequestParam("search") String name, ModelMap modelmap) {
		modelmap.addAttribute("drugs", drugService.findByName(name));
		return "ShowDrugs.jsp";

	}

	@RequestMapping("/searchDrugCm")
	public String searchDrugCm(@RequestParam("search") String name, ModelMap modelmap) {
		modelmap.addAttribute("drugs", drugService.findByName(name));
		return "Customer.jsp";

	}

	@RequestMapping("/searchDrugDr")
	public String searchDrugDr(@RequestParam("search") String name, ModelMap modelmap) {
		modelmap.addAttribute("drugs", drugService.findByName(name));
		return "ShowDrugs.jsp";

	}

}
