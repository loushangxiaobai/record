package com.thinkcms.support;

public class Result {
	private boolean success;
	private Object obj;

	public Result() {
		success = true;
	}

	public Result(boolean success, Object obj) {
		this.success = success;
		this.setObj(obj);
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}


	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	@Override
	public String toString() {
		return "Result [success=" + success + ", obj=" + obj + "]";
	}

}
