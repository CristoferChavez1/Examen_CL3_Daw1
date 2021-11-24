package org.cyberclass.alumno.controller;

import org.cyberclass.alumno.model.Alumno;
import org.cyberclass.alumno.repository.IAlumnoRepository;
import org.cyberclass.alumno.repository.ICarreraRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AlumnoController {

	@Autowired
	private ICarreraRepository repoc;
	
	@GetMapping("/cargar")
	public String cargarPag(Model model) {
		model.addAttribute("alumno",new Alumno());
		model.addAttribute("lstCarrera", repoc.findAll());
		return "registro-chavez";
	}
	
	@Autowired
	private IAlumnoRepository repo;
	
	@PostMapping("/grabar")
	public String grabarPag(@ModelAttribute Alumno alumno) {
		System.out.println(alumno);
		repo.save(alumno);
		return "registro-chavez";
	}
	

	/*@GetMapping("/listar")
	public String listadoAlumnos(Model model) {
	model.addAttribute("lstAlumnos", repo.findAll());
		return "resgistro-chavez";
	}*/
	
	
}
