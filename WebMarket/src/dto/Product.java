package dto;

import java.io.Serializable;

//�ڹٺ��� ����� 
public class Product implements Serializable{
    private static final long serialVersionUID = -4274700572068677000L;
    
    private String productId; //��ǰ���̵�
    private String pname;    //��ǰ��
    private Integer unitPrice; //��ǰ����
    private String description;//��ǰ ����
    private String manufacturer;//������
    private String catagory;//�з�
    private long unitsInStock;//����
    private String condition;//�Ż�ǰ �Ǵ� �߰�ǰ �Ǵ� ���ǰ
    private String filename;//�̹��� ���ϸ�
    private int quantity;//��ٱ��Ͽ� ���� ����
    
    
    public Product() {
		super();
	}
    public Product(String productId, String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
    
    
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCatagory() {
		return catagory;
	}
	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}
	public long getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
    
    
}
