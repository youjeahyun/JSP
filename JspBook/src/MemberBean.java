import java.io.Serializable;

//�ڹٺ���� ����� ��Ģ : 1. implements Serializable�ϱ�             2.   MeberBean() �⺻������ ����
//                  3.  private int id; ������ ��� private 4. setter, getter 
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
