package Bean;

public class teach {
	String Student_ID;
	String Teacher_ID;
	String Coures_ID;
	float GiuaKy;
	public String getStudent_ID() {
		return Student_ID;
	}
	public void setStudent_ID(String student_ID) {
		Student_ID = student_ID;
	}
	public String getTeacher_ID() {
		return Teacher_ID;
	}
	public void setTeacher_ID(String teacher_ID) {
		Teacher_ID = teacher_ID;
	}
	public String getCoures_ID() {
		return Coures_ID;
	}
	public void setCoures_ID(String coures_ID) {
		Coures_ID = coures_ID;
	}
	public float getGiuaKy() {
		return GiuaKy;
	}
	public void setGiuaKy(float giuaKy) {
		GiuaKy = giuaKy;
	}
	public float getCuoiKy() {
		return CuoiKy;
	}
	public void setCuoiKy(float cuoiKy) {
		CuoiKy = cuoiKy;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	float CuoiKy;
	float total;
}
