package io.jc.studentapp.student.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="studentmgmt")
public class Student {
	@Id
	@GeneratedValue
	private Long id;
	private String name;
	private Integer mark1;
	private Integer mark2;
	private String result;
	private String issport;
	private String isacademic;
	
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the mark1
	 */
	public Integer getMark1() {
		return mark1;
	}
	/**
	 * @param mark1 the mark1 to set
	 */
	public void setMark1(Integer mark1) {
		this.mark1 = mark1;
	}
	/**
	 * @return the mark2
	 */
	public Integer getMark2() {
		return mark2;
	}
	/**
	 * @param mark2 the mark2 to set
	 */
	public void setMark2(Integer mark2) {
		this.mark2 = mark2;
	}
	/**
	 * @return the result
	 */
	public String getResult() {
		return result;
	}
	/**
	 * @param result the result to set
	 */
	public void setResult(String result) {
		this.result = result;
	}
	/**
	 * @return the issport
	 */
	public String getIssport() {
		return issport;
	}
	/**
	 * @param issport the issport to set
	 */
	public void setIssport(String issport) {
		this.issport = issport;
	}
	/**
	 * @return the isacademic
	 */
	public String getIsacademic() {
		return isacademic;
	}
	/**
	 * @param isacademic the isacademic to set
	 */
	public void setIsacademic(String isacademic) {
		this.isacademic = isacademic;
	}	
	
}
