package com.thinkcms.support;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelParse {
	public static final String OFFICE_EXCEL_2003_POSTFIX = "xls";
	public static final String OFFICE_EXCEL_2010_POSTFIX = "xlsx";
	public static final String POINT = ".";

	public List<Map<Object, String>> parseToList(String path) throws Exception {
		InputStream is = new FileInputStream(path);
		String suffix = getPostfix(path);
		if (OFFICE_EXCEL_2010_POSTFIX.equals(suffix)) {
			return paresXlsx(is);
		} else if (OFFICE_EXCEL_2003_POSTFIX.equals(suffix)) {

			return paresXls(is);
		}
		return null;

	}

	private List<Map<Object, String>> paresXls(InputStream is) throws IOException {
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook(is);
		List<Map<Object, String>> list = new ArrayList<Map<Object, String>>();
		// 循环工作表Sheet

		HSSFSheet hssfSheet = hssfWorkbook.getSheetAt(0);

		// 循环行Row
		for (int rowNum = 0; rowNum <= hssfSheet.getLastRowNum(); rowNum++) {
			HSSFRow hssfRow = hssfSheet.getRow(rowNum);
			if (hssfRow == null) {
				continue;
			}
			Map<Object, String> map = new HashMap<Object, String>();
			// 循环列Cell
			for (int cellNum = 0; cellNum <= hssfRow.getLastCellNum(); cellNum++) {
				HSSFCell hssfCell = hssfRow.getCell(cellNum);

				if (hssfCell == null) {
					continue;
				}
				map.put(cellNum, getValue(hssfCell));
			}
			list.add(map);

		}
		return list;
	}

	private List<Map<Object, String>> paresXlsx(InputStream is) throws IOException {
		XSSFWorkbook xssfWorkbook = new XSSFWorkbook(is);
		List<Map<Object, String>> list = new ArrayList<Map<Object, String>>();
		// 循环工作表Sheet

		XSSFSheet xssfSheet = xssfWorkbook.getSheetAt(0);

		// 循环行Row
		for (int rowNum = 0; rowNum <= xssfSheet.getLastRowNum(); rowNum++) {
			XSSFRow xssfRow = xssfSheet.getRow(rowNum);
			if (xssfSheet == null) {
				continue;
			}
			Map<Object, String> map = new HashMap<Object, String>();
			// 循环列Cell
			for (int cellNum = 0; cellNum <= xssfRow.getLastCellNum(); cellNum++) {
				XSSFCell xssfCell = xssfRow.getCell(cellNum);

				if (xssfCell == null) {
					continue;
				}
				map.put(cellNum, getValue(xssfCell));
			}
			list.add(map);

		}
		return list;
	}

	public String getValue(Cell cell) {
		String value = "";
		if (null == cell) {
			return value;
		}
		switch (cell.getCellType()) {
		// 数值型
		case Cell.CELL_TYPE_NUMERIC:
			if (DateUtil.isCellDateFormatted(cell)) {
				// 如果是date类型则 ，获取该cell的date值，并进行格式化
				Date date = DateUtil.getJavaDate(cell.getNumericCellValue());
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				value = format.format(date);
			} else {// 纯数字
				cell.setCellType(Cell.CELL_TYPE_STRING);
				value = String.valueOf(cell.getStringCellValue());
				// 解决1234.0 去掉后面的.0
				if (null != value && !"".equals(value.trim())) {
					String[] item = value.split("[.]");
					if (1 < item.length && "0".equals(item[1])) {
						value = item[0];
					}
				}
			}
			break;
		// 字符串类型
		case Cell.CELL_TYPE_STRING:
			value = cell.getStringCellValue().toString();
			break;
		// 公式类型
		case Cell.CELL_TYPE_FORMULA:
			// 读公式计算值
			cell.setCellType(Cell.CELL_TYPE_STRING);
			value = String.valueOf(cell.getStringCellValue());

			break;
		// 布尔类型
		case Cell.CELL_TYPE_BOOLEAN:
			value = " " + cell.getBooleanCellValue();
			break;
		// 空值
		case Cell.CELL_TYPE_BLANK:
			value = "";
			break;
		// 故障
		case Cell.CELL_TYPE_ERROR:
			value = "";

			break;
		default:
			value = cell.getStringCellValue().toString();
		}
		if ("null".endsWith(value.trim())) {
			value = "";
		}
		return value;
	}

	public static String getPostfix(String path) {

		return path.substring(path.lastIndexOf(ExcelParse.POINT) + 1, path.length());

	}

	public static void main(String[] args) throws Exception {
		System.out.println(new ExcelParse().parseToList("E:\\CMCC-采购订单-货品列表.xls"));
	}

}
