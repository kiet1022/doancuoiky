package Bean;


public class Coures {
	String ID;
	String Name;
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getBegin_Time() {
		return Begin_Time;
	}
	public void setBegin_Time(String begin_Time) {
		Begin_Time = begin_Time;
	}
	public String getEnd_time() {
		return End_time;
	}
	public void setEnd_time(String end_time) {
		End_time = end_time;
	}
	public float getTuition_fee() {
		return tuition_fee;
	}
	public void setTuition_fee(float tuition_fee) {
		this.tuition_fee = tuition_fee;
	}
	String Begin_Time;
	String End_time;
	float tuition_fee;
}
