package com.thinkcms.gencode;

public class GenProperty {
	private String name;
	private String cnName;
	private String type;
	private String condition;
	private Boolean required = Boolean.FALSE;

	public GenProperty(String name, String cnName,String type, String condition,Boolean required) {
		super();
		this.name = name;//字段名称
		this.setCnName(cnName);
		this.type = type;//字段类型
		this.condition = condition;//字段 查询条件类型 如果为空则不计入查询条件
		this.setRequired(required);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getCnName() {
		return cnName;
	}

	public void setCnName(String cnName) {
		this.cnName = cnName;
	}

	public Boolean getRequired() {
		return required;
	}

	public void setRequired(Boolean required) {
		this.required = required;
	}


}
