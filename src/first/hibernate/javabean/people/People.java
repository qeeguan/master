package first.hibernate.javabean.people;

import first.hibernate.javabean.card.IDCard;

public class People {

	private int id;

	private String name;

	private String sex;

	private int age;

	private IDCard idcard;

	public IDCard getIdcard() {
		return idcard;
	}

	public void setIdcard(IDCard idcard) {
		this.idcard = idcard;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}