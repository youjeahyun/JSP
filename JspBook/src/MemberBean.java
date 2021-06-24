import java.io.Serializable;

//자바빈즈로 만들기 규칙 : 1. implements Serializable하기             2.   MeberBean() 기본생성자 정의
//                  3.  private int id; 변수를 모두 private 4. setter, getter 
public class MemberBean implements Serializable{
	
	private int id;
	private String name;
	
	public MemberBean() {
	
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

	
}
