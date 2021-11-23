package org.cyberclass.alumno.repository;

import org.cyberclass.alumno.model.Alumno;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IAlumnoRepository extends JpaRepository<Alumno, String> {
	
	//crud...


}
