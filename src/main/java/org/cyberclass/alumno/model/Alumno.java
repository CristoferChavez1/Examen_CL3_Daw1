package org.cyberclass.alumno.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_alumno") 
public class Alumno {
	
	@Id
	@Column(name = "cod_alu")
	private String codigo;
	@Column(name = "nom_alu")
	private String nombre;
	@Column(name = "ape_alu")
	private String apellido;
	@Column(name = "dni")
	private String dni;
	@Column(name = "correo")
	private String correo;
	@Column(name = "cod_carre")
	private  int codCarrera;
	
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public int getCodCarrera() {
		return codCarrera;
	}
	public void setCodCarrera(int codCarrera) {
		this.codCarrera = codCarrera;
	}
	
	@Override
	public String toString() {
		return "Alumno [codigo=" + codigo + ", nombre=" + nombre + ", apellido=" + apellido + ", dni=" + dni
				+ ", correo=" + correo + ", codCarrera=" + codCarrera + "]";
	}
		
}
