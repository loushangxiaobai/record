<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="myfn" uri="http://www.cms.com/thinkcms/functions"%>
<%@ page pageEncoding="UTF-8"%>
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=UTF-8">


	
<style>

<!--
 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 680460288 22 0 262145 0;}
@font-face
	{font-family:黑体;
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-alt:SimHei;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-536870145 1107305727 0 0 415 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-520092929 1073786111 9 0 415 0;}
@font-face
	{font-family:"\@黑体";
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 680460288 22 0 262145 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-priority:99;
	mso-style-link:"页眉 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	border:none;
	mso-border-bottom-alt:solid windowtext .75pt;
	padding:0cm;
	mso-padding-alt:0cm 0cm 1.0pt 0cm;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-priority:99;
	mso-style-link:"页脚 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
span.Char
	{mso-style-name:"页眉 Char";
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:页眉;
	mso-ansi-font-size:9.0pt;
	mso-bidi-font-size:9.0pt;}
span.Char0
	{mso-style-name:"页脚 Char";
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:页脚;
	mso-ansi-font-size:9.0pt;
	mso-bidi-font-size:9.0pt;}
span.GramE
	{mso-style-name:"";
	mso-gram-e:yes;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri","sans-serif";
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;
	
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:21.3pt 28.3pt 0cm 1.0cm;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-paper-source:0;
	layout-grid:15.6pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>

</head>

<body lang=ZH-CN style='tab-interval:21.0pt;text-justify-trim:punctuation'>

<div id="print">
<p class=MsoNormal align=center style='text-align:center'><b style='mso-bidi-font-weight:
normal;margin-left: 100px;'><span lang=EN-US style='font-size:14.0pt;mso-bidi-font-size:11.0pt;
font-family:黑体'>1</span></b><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;mso-bidi-font-size:11.0pt;font-family:黑体'>小时项目<span
lang=EN-US>·</span >新开门店备案表<span lang=EN-US><o:p></o:p></span></span></b> </p>
<div id="tablediv" style="text-align: center; margin: 0 auto; margin-left: 30%;margin-top: 20px;width: 800px;height: 1200px;">
  <form  id="form" enctype="multipart/form-data">
<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0 align=left
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-table-overlap:never;mso-yfti-tbllook:1184;mso-table-lspace:9.0pt;
 margin-left:6.75pt;mso-table-rspace:9.0pt;margin-right:6.75pt;mso-table-anchor-vertical:
 paragraph;mso-table-anchor-horizontal:column;mso-table-left:left;mso-table-top:
 .05pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
  <td width=39 rowspan=9 valign=top style='width:29.1pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;layout-flow:
  vertical-ideographic'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;
  mso-element-top:.05pt;text-align:center; mso-height-rule:exactly'><span style='font-family:黑体'>     门店基础资料<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>

  <td width=112 valign=top style='width:83.8pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>门店电话： <span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=214 colspan=7 valign=top style='width:160.35pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'>
  <input type="hidden" name="id" value="${entity.id }" >
  <input type="text" value="${entity.storePhone }" name="storePhone" id="storePhone" required="required"><o:p>&nbsp;</o:p></span></p>
  </td>

 <td width=130 colspan=2 valign=top style='width:97.75pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>预计开业时间：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=223 colspan=4 valign=top style='width:167.15pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.openTime }" onClick="WdatePicker()" name="openTime" id="openTime" ><o:p>&nbsp;</o:p></span></p>
  </td> 
 </tr>
  <tr style='mso-yfti-irow:1'>
  <td width=112 valign=middle style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:100%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>门店详细地址：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=567 colspan=13 valign=middle style='width:15.0cm;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:100%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" style="width: 550px;" value="${entity.storeAddr }" name="storeAddr" id="storeAddr"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>经纬度坐标：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=214 colspan=7 valign=top style='width:160.35pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="jwd" value="${entity.jwd }" id="jwd"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=130 colspan=2 valign=top style='width:97.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>营业时间：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=223 colspan=4 valign=top style='width:167.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="businessStart" value="${entity.businessStart }" id="businessStart"  style="width: 80px;"> 至   <input type="text" name="businessEnd" id="businessEnd"  style="width: 80px;"><o:p>&nbsp;</o:p></span></p>
  </td> 
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:100%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>门店法人姓名：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=130 colspan=4 valign=middle style='width:97.25pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="legalName" value="${entity.legalName }" id="legalName" style="width: 100px"  ><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=84 colspan=3 valign=top style='width:63.1pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:100%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>手机号码：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=130 colspan=2 valign=middle style='width:97.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="mobilePhone" value="${entity.mobilePhone }" id="mobilePhone" style="width: 110px" ><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=75 colspan=3 valign=top style='width:56.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>微信号：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=148 valign=middle style='width:111.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="weChat"  value="${entity.weChat }" id="weChat" style="width: 110px" ><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr> 
<tr style='mso-yfti-irow:4'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>邮箱地址：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=199 colspan=5 valign=middle style='width:149.1pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="email"  value="${entity.email }" id="email"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=161 colspan=5 valign=top style='width:120.5pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'>QQ</span><span
  style='font-family:黑体'>号码<span lang=EN-US>/</span>其他联系方式：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=208 colspan=3 valign=middle style='width:155.65pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text"  name="QQ"  value="${entity.QQ }" id="QQ"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>门店店长姓名：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=130 colspan=4 valign=middle style='width:97.25pt; margin-top: 15px;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="storePersonName" value="${entity.storePersonName }" id="storePersonName" style="width: 110px" ><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=84 colspan=3 valign=middle style='width:63.1pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>手机号码：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=130 colspan=2 valign=middle style='width:97.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="storePersonPhone" value="${entity.storePersonPhone }" id="storePersonPhone" style="width: 110px" ><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=75 colspan=3 valign=middle style='width:56.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>微信号：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=148 valign=middle style='width:111.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="storePersonWechat" value="${entity.storePersonWechat }" id="storePersonWechat" style="width: 110px" ><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr> 
<tr style='mso-yfti-irow:6'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>门店类型：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=214 colspan=7 valign=top style='width:160.35pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>
  <c:set value="0" var="storeType" scope="page"/>
  <input type="radio" value="1" name="storeType" id="storeType"  <c:if test="${entity.storeType eq 1 }">checked="checked" </c:if>  >
 <span class=GramE>独立店 <input type="radio" value="2" name="storeType"  <c:if test="${entity.storeType eq 2 }"> checked="checked" </c:if> ></span> 店中店<span
  lang=EN-US><o:p></o:p></span></span>
  
  </p>
  </td>
  <td width=130 colspan=2 valign=top style='width:97.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>工程师人数：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=223 colspan=4 valign=top style='width:167.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=right style='text-align:right;line-height:150%;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;
  mso-element-top:.05pt;mso-height-rule:exactly'><span style='font-family:黑体'> <input type="text" name="engineerNum" value="${entity.engineerNum }" id="engineerNum" style="width: 100px; margin-right: 120px;"><input type="hidden" readonly="readonly" style="width: 50px;margin-left: 80px" placeholder="点击上传附录" >   <span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr> 
 <tr style='mso-yfti-irow:7'>
  <td width=162 colspan=3 valign=top style='width:121.2pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>是否有<span class=GramE>开通线</span>上平台：<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=517 colspan=11 valign=top style='width:387.85pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>
  
  
 <input type="checkbox" name="xsPingTai" value="百度" <c:if test="${myfn:contains(xs, '百度')}">checked='checked'</c:if>  > 百度 
 <input type="checkbox" name="xsPingTai" value="美团" <c:if test="${myfn:contains(xs, '美团')}">checked='checked'</c:if>><span class=GramE>美团</span>
  <input type="checkbox" name="xsPingTai" value="淘宝" <c:if test="${myfn:contains(xs, '淘宝')}">checked='checked'</c:if>><span class=GramE>淘宝</span>
  <input type="checkbox" name="xsPingTai" value="58同城" <c:if test="${myfn:contains(xs, '58同城')}">checked='checked'</c:if>><span lang=EN-US>58</span>同城
  <input type="checkbox" name="xsPingTai" value="微信公众号" <c:if test="${myfn:contains(xs, '微信公众号')}">checked='checked'</c:if>><span class=GramE>微信公众号</span>
  公众号名称：<input type="text" name="xsWechat" id="xsWechat" style="width: 80px"> <u><span lang=EN-US><o:p></o:p></span></u></span></p>
  </td>
 </tr> 
 <tr style='mso-yfti-irow:8'>
  <td width=162 colspan=3 valign=top style='width:121.2pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>是否使用其他订单平台：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=517 colspan=11  valign=middle style='width:387.85pt;text-align:center; border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'><input type="radio" name="isOtherPt" value="0" <c:if test="${entity.isOtherPt eq 0 }">checked="checked" </c:if>>没有 <input type="radio" name="isOtherPt" value="1" <c:if test="${entity.isOtherPt eq 1 }">checked="checked" </c:if>>有，请说明： <input type="text" name="otherPtInfo" id="otherPtInfo" value="${entity.otherPtInfo }" style="width: 300px;"><span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr> 
  <tr style='mso-yfti-irow:9'>
  <td width=39 rowspan=8 valign=top style='width:29.1pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;
  mso-element-top:.05pt;mso-height-rule:exactly'><span style='font-family:黑体'>合作模式<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>合同期限：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=125 colspan=3 valign=top style='width:93.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="contractDateline" value="${entity.contractDateline }" id="contractDateline" style="width: 80px"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=85 colspan=3 valign=top style='width:63.6pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>起止日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=357 colspan=7 valign=top style='width:267.9pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>自<input type="text" onClick="WdatePicker()" value="${entity.contractStart }" name="contractStart" id="contractStart" style="width: 100px"> 起至<input type="text" name="contractEnd" value="${entity.contractEnd }" id="contractEnd" onClick="WdatePicker()" style="width: 100px">止<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:10'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:115%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>合作模式：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=567 colspan=13 valign=top style='width:15.0cm;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:115%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'> <input type="radio" name="cooperationModel" value="总部直营" <c:if test="${entity.cooperationModel eq '总部直营'}"> checked="checked"</c:if> > 总部直营 
  
  <input type="radio" name="cooperationModel" value="子公司直营" <c:if test="${entity.cooperationModel eq '子公司直营'}"> checked="checked"</c:if>>子公司直营 
  <input type="radio" name="cooperationModel" value="代理直营 " <c:if test="${entity.cooperationModel eq '代理直营'}"> checked="checked"</c:if>>代理直营 
  <input type="radio" name="cooperationModel" value="总部授权 " <c:if test="${entity.cooperationModel eq '总部授权'}"> checked="checked"</c:if>>总部授权 
  <input type="radio" name="cooperationModel" value="子公司授权" <c:if test="${entity.cooperationModel eq '子公司授权'}"> checked="checked"</c:if>>子公司授权
  <input type="radio" name="cooperationModel" value="代理授权" <c:if test="${entity.cooperationModel eq '代理授权'}"> checked="checked"</c:if>>代理授权
  <input type="radio" name="cooperationModel" value="企业合作门店" <c:if test="${entity.cooperationModel eq '企业合作门店'}"> checked="checked"</c:if>>企业合作门店（注明项目名称 ）<input type="text" name="projectName" value="${entity.projectName }"  id="projectName" style="width: 350px;"> </p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:11'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>加盟费用：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=567 colspan=13 valign=top style='width:15.0cm;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>大写：人民币 &nbsp;&nbsp; <input type="text" name="joinCostBig" value="${entity.joinCostBig }" id="joinCostBig">
  （小写：￥<input type="text" name="joinCostSmall" id="joinCostSmall" value="${entity.joinCostSmall }" style="width: 100px"> 元）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:12'>
  <td width=112 valign=top style='width:83.8pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>加盟保证金： <span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=567 colspan=13 valign=top style='width:15.0cm;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>大写：  人民币&nbsp;&nbsp;     <input type="text" name="joinAssureBig" value="${entity.joinAssureBig }" id="joinAssureBig">
  （小写：￥<input type="text" name="joinAssureSmall" value="${entity.joinAssureSmall }" id="joinAssureSmall" style="width: 100px">元）<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:13'>
  <td width=143 colspan=2 rowspan=4 valign=top style='width:107.15pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;
  mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>提交备案资料（备案资料中<span lang=EN-US>1</span>、<span
  lang=EN-US>3</span>、<span lang=EN-US>4</span>文件，务必在签署备案表时一同收取）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=254 colspan=7 valign=top style='width:190.5pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'><span lang=EN-US></span>
  <input type="text" name="heuoxieyiUrl" readonly="readonly" value="${entity.heuoxieyiUrl }"   onclick="openWindow('upload?id=heuoxieyiUrl','上传附件');" id="heuoxieyiUrl" placeholder="点击上传加盟商合作协议书" style="width: 300px">
  <span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=282 colspan=5 valign=top style='width:211.4pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'></span><span
  style='font-family:黑体'>
  <input type="text" name="shoujuUrl" id="shoujuUrl" placeholder="点击上传收据" value="${entity.shoujuUrl }" onclick="openWindow('upload?id=shoujuUrl','上传附件');" style="width: 250px">
   <span
  lang=EN-US></span><span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:14'>
  <td width=254 colspan=7 valign=top style='width:190.5pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'><span lang=EN-US></span><span
  lang=EN-US></span>
  <input type="text" readonly="readonly"  value="${entity.idCardUrl }"  onclick="openWindow('upload?id=idCardUrl','上传附件');" name="idCardUrl" id="idCardUrl" placeholder="点击上传法人身份证正反面" style="width: 300px;">
  <span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=282 colspan=5 valign=top style='width:211.4pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'><span lang=EN-US></span><span
  lang=EN-US></span>
  <input type="text" name="idCardInHandUrl" id="idCardInHandUrl" value="${entity.idCardInHandUrl }" placeholder="点击上传法人手持身份证照片正反面" style="width: 250px;" readonly="readonly" onclick="openWindow('upload?id=idCardInHandUrl','上传附件');">
  <span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:15'>
  <td width=254 colspan=7 valign=top style='width:190.5pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'><span lang=EN-US></span>
  <input type="text" name="engineerUrl" id="engineerUrl"  value="${entity.engineerUrl }"  placeholder="点击上传维修工程师登记表" style="width: 300px;" readonly="readonly" onclick="openWindow('upload?id=engineerUrl','上传附件');" >
   <span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=282 colspan=5 valign=top style='width:211.4pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'></span><span
  style='font-family:黑体'><span class=GramE></span>
  <input type="text" name="storeImage" id="StoreImageUrl"  value="${entity.storeImage }" placeholder="点击上传店高清横屏照片" readonly="readonly" style="width: 250px;" onclick="openWindow('upload?id=StoreImageUrl','上传附件');">
  <span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:16'>
  <td width=536 colspan=12 valign=top style='width:401.9pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:150%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'><span lang=EN-US></span>
  <input type="text" name="otherFileUrl" id="otherFileUrl"  value="${entity.otherFileUrl }" placeholder="点击上传其他资料文件" readonly="readonly" style="width: 300px;" onclick="openWindow('upload?id=otherFileUrl','上传附件');">
<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr> 
  <tr style='mso-yfti-irow:17;page-break-inside:avoid;height:22.15pt'>
  <td width=39 rowspan=3 valign=top style='width:29.1pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;height:22.15pt'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;
  mso-element-top:.05pt;mso-height-rule:exactly'><span style='font-family:黑体'>审批签署<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>分公司提交人： <span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text"  value="${entity.filialeSubmitPerson }" name="filialeSubmitPerson" id="filialeSubmitPerson" style="width: 150px;"> <o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>提交日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="submitDate" value="${entity.submitDate }" onClick="WdatePicker()"  id="submitDate" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:18;page-break-inside:avoid;height:22.15pt'>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>分公司负责人：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.filialePrincipal }" name="filialePrincipal" id="filialePrincipal" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>签署日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.filialePrincipalDate }" onClick="WdatePicker()" name="filialePrincipalDate" id="filialePrincipalDate"  style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:19;page-break-inside:avoid;height:22.15pt'>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>财务部审核：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.finance }" name="finance" id="finance" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>审核日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" onClick="WdatePicker()" value="${entity.financeDate }" name="financeDate" id="financeDate" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:20;page-break-inside:avoid;height:22.15pt'>
  <td width=39 rowspan=2 valign=top style='width:29.1pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;height:22.15pt'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;
  mso-element-top:.05pt;mso-height-rule:exactly'><span style='font-family:黑体'>运营部<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>门店名称：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.storeName }" name="storeName"  id="storeName" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>门店编码：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" name="storeNo" value="${entity.storeNo }" id="storeNo" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:21;page-break-inside:avoid;height:22.15pt'>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>经手人：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.handlerName }" name="handlerName" id="handlerName"  style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>签署日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.15pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.handlerDate }" name="handlerDate" onClick="WdatePicker()" id="handlerDate" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr> 
  <tr style='mso-yfti-irow:22;page-break-inside:avoid;height:2.0cm'>
  <td width=39 rowspan=2 valign=top style='width:29.1pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;height:2.0cm'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  line-height:115%;mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:
  around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:
  column;mso-element-top:.05pt;mso-height-rule:exactly'><span style='font-family:
  黑体'>网络部<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:2.0cm'>
  <p class=MsoNormal style='line-height:115%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>网络部推广配对<span lang=EN-US><o:p></o:p></span></span></p>
  </td> 
   <td width=536 colspan=12 valign=top style='width:401.9pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:2.0cm'>
  <p class=MsoNormal style='line-height:115%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'><input type="checkbox" name="wlbTuiGuang" value="58同城" <c:if test="${myfn:contains(tuiguang, '58同城')}">checked='checked'</c:if>>  当地<span lang=EN-US>58</span>同城 
  <input type="checkbox" name="wlbTuiGuang" value="当地自媒体推广" <c:if test="${myfn:contains(tuiguang, '当地自媒体推广')}">checked='checked'</c:if>> 当地自媒体推广
  <input type="checkbox" name="wlbtuiguang" value="美团" <c:if test="${myfn:contains(tuiguang, '美团')}">checked='checked'</c:if>> <span class=GramE>美团</span> 
  <input type="checkbox" name="wlbtuiguang" value="百度地图" <c:if test="${myfn:contains(tuiguang, '百度地图')}">checked='checked'</c:if>> 百度地图
   <input type="checkbox" name="wlbTuiGuang" value="百度糯米团 " <c:if test="${myfn:contains(tuiguang, '百度糯米团')}">checked='checked'</c:if>> 百度糯米团 
   <input type="checkbox" name="wlbTuiGuang" value="官方线上平台" <c:if test="${myfn:contains(tuiguang, '官方线上平台')}">checked='checked'</c:if>> 官方线上平台
   <input type="checkbox" name="wlbTuiGuang" value="门店定位查询 " <c:if test="${myfn:contains(tuiguang, '门店定位查询')}">checked='checked'</c:if>> 门店定位查询 
   <input type="checkbox" name="wlbTuiGuang" value="1小时内部维修图纸" <c:if test="${myfn:contains(tuiguang, '1小时内部维修图纸')}">checked='checked'</c:if>> <span lang=EN-US>1</span>小时内部维修图纸
  <input type="checkbox" name="wlbTuiGuang" value="上门服务培训 " <c:if test="${myfn:contains(tuiguang, '上门服务培训')}">checked='checked'</c:if>> 上门服务培训 
  <input type="checkbox" name="wlbTuiGuang" value="上门装备物料" <c:if test="${myfn:contains(tuiguang, '上门装备物料')}">checked='checked'</c:if>> 上门装备物料
   <input type="checkbox" name="wlbTuiGuang" value="线下地推活动" <c:if test="${myfn:contains(tuiguang, '线下地推活动')}">checked='checked'</c:if>>线下地推活动</span> 
  <input type="checkbox" name="wlbTuiGuang" value="新浪微博" <c:if test="${myfn:contains(tuiguang, '新浪微博')}">checked='checked'</c:if>> 新<span class=GramE>浪微博</span>
  <input type="checkbox" name="wlbTuiGuang" value="其他" <c:if test="${myfn:contains(tuiguang, '其他')}">checked='checked'</c:if>> 其他： <input type="text" name="wlbTuiGuangOther" value="${entity.wlbTuiGuangOther }"><span lang=EN-US><o:p></o:p></span></span></p>
  </td> 
 </tr> 
 <tr style='mso-yfti-irow:23;page-break-inside:avoid;height:19.85pt'>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>网络部签署：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.wlbSign }" name="wlbSign" id="wlbSign" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>签署日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.wlbSignDate }" onClick="WdatePicker()" name="wlbSignDate" id="wlbSignDate" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:24;page-break-inside:avoid;height:19.85pt'>
  <td width=39 rowspan=2 valign=top style='width:29.1pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;height:19.85pt'>
  <p class=MsoNormal align=center style='margin-top:0cm;margin-right:5.65pt;
  margin-bottom:0cm;margin-left:5.65pt;margin-bottom:.0001pt;text-align:center;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:column;
  mso-element-top:.05pt;mso-height-rule:exactly'><span style='font-family:黑体'>运营部<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>运营助理确认：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.gbuInt }" name="gbuInt" id="gbuInt" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>签署日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.gbuIntDate }" onClick="WdatePicker()" name="gbuIntDate" id="gbuIntDate" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:25;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:19.85pt'>
  <td width=143 colspan=2 valign=top style='width:107.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>运营部负责人签名：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" value="${entity.operationsDirector }" name="operationsDirector" id="operationsDirector" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=179 colspan=5 valign=top style='width:134.15pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span style='font-family:黑体'>签署日期：<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=178 colspan=2 valign=top style='width:133.75pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:19.85pt'>
  <p class=MsoNormal style='line-height:200%;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;
  mso-element-anchor-horizontal:column;mso-element-top:.05pt;mso-height-rule:
  exactly'><span lang=EN-US style='font-family:黑体'><input type="text" onClick="WdatePicker()" value="${entity.operationsDirectorDate }" name="operationsDirectorDate" id="operationsDirectorDate" style="width: 150px;"><o:p>&nbsp;</o:p></span></p>
  </td>
 
 </tr> 
 
 <tr height=0>
 
  <td width=39 style='border:none'></td>
  <td width=112 style='border:none'></td>
  <td width=31 style='border:none'></td>
  <td width=19 style='border:none'></td>
  <td width=75 style='border:none'></td>
  <td width=5 style='border:none'></td>
  <td width=69 style='border:none'></td>
  <td width=11 style='border:none'></td>
  <td width=4 style='border:none'></td>
  <td width=71 style='border:none'></td>
  <td width=59 style='border:none'></td>
  <td width=15 style='border:none'></td>
  <td width=29 style='border:none'></td>
  <td width=30 style='border:none'></td>
  <td width=50 style='border:none;margin-left: -1000px;'>
  <p></p>
   <p style="margin-left: -500px" ><button type="button" onclick="submitDo();"
									class="am-btn am-btn-primary" style="margin-left: 250px;margin-top: 20px;">保存</button></td></p>
 </tr>
 
</table>
  </form>
<p></p>
<p>


</p>
</div>
</div>

</body>
<script type="text/javascript">
function submitDo(){
	var data = $("#form").serialize();
	data = decodeURIComponent(data, true);
	$.ajax({
		url : "edit",
		data : data,
		method : 'post',
		contentType : 'application/x-www-form-urlencoded',
		encoding : 'UTF-8',
		cache : false,
		success : function(result) {
			if (result.success) {
				layer.msg('修改成功');
				setTimeout("closeWindow()",1000);
			} else {
				layer.msg('修改失败');
			}
		},
		error : function() {
			layer.msg('系统异常');
		}
	});
}
		
		
		function assignment(inpuid,inputvalue) {
			var inputid="#"+inpuid;
			$(inputid).val(inputvalue);
		}
		
		function print() {
			$("#print").jqprint();
		}
		
		
	</script>
	<script type="text/javascript"
	src="<c:url value="/static/js/jquery.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/static/js/amazeui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/js/app.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/static/js/layer/layer.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/static/plugin/My97DatePicker/WdatePicker.js"/>"></script>
	<script type="text/javascript"
	src="<c:url value="/static/js/jquery.jqprint-0.3.js"/>"></script>
	<%-- <script type="text/javascript"
	src="<c:url value="/static/js/jquery.jqprint-0.3.js"/>"></script> --%>
<script type="text/javascript"
	src="<c:url value="/static/js/jquery-migrate-1.0.0.js"/>"></script>
	<script type="text/javascript"
	src="<c:url value="/static/js/jquery.min.js"/>"></script>
	<script type="text/javascript">
	(function($) {
	    var opt;

	    $.fn.jqprint = function (options) {
	        opt = $.extend({}, $.fn.jqprint.defaults, options);

	        var $element = (this instanceof jQuery) ? this : $(this);
	        
	        if (opt.operaSupport && $.browser.opera) 
	        { 
	            var tab = window.open("","jqPrint-preview");
	            tab.document.open();

	            var doc = tab.document;
	        }
	        else 
	        {
	            var $iframe = $("<iframe  />");
	        
	            if (!opt.debug) { $iframe.css({ position: "absolute", width: "0px", height: "0px", left: "-600px", top: "-600px" }); }

	            $iframe.appendTo("body");
	            var doc = $iframe[0].contentWindow.document;
	        }
	        
	        if (opt.importCSS)
	        {
	            if ($("link[media=print]").length > 0) 
	            {
	                $("link[media=print]").each( function() {
	                    doc.write("<link type='text/css' rel='stylesheet' href='" + $(this).attr("href") + "' media='print' />");
	                });
	            }
	            else 
	            {
	                $("link").each( function() {
	                    doc.write("<link type='text/css' rel='stylesheet' href='" + $(this).attr("href") + "' />");
	                });
	            }
	        }
	        
	        if (opt.printContainer) { doc.write($element.outer()); }
	        else { $element.each( function() { doc.write($(this).html()); }); }
	        
	        doc.close();
	        
	        (opt.operaSupport && $.browser.opera ? tab : $iframe[0].contentWindow).focus();
	        setTimeout( function() { (opt.operaSupport && $.browser.opera ? tab : $iframe[0].contentWindow).print(); if (tab) { tab.close(); } }, 1000);
	    }
	    
	    $.fn.jqprint.defaults = {
			debug: false,
			importCSS: true, 
			printContainer: true,
			operaSupport: true
		};

	    // Thanks to 9__, found at http://users.livejournal.com/9__/380664.html
	    jQuery.fn.outer = function() {
	      return $($('<div></div>').html(this.clone())).html();
	    } 
	})(jQuery);
	
	
	
	</script>
	<!-- <script type="text/javascript">
	$(document).ready(function(){ 
		　　$("#a").click(function(){ 
		　　　　//adding your code here　　 
		　　}); 
		}); 
	
	</script> -->
	
	<script type="text/javascript">
	jQuery.migrateMute===void 0&&(jQuery.migrateMute=!0),function(e,t,n){function r(n){var r=t.console;i[n]||(i[n]=!0,e.migrateWarnings.push(n),r&&r.warn&&!e.migrateMute&&(r.warn("JQMIGRATE: "+n),e.migrateTrace&&r.trace&&r.trace()))}function a(t,a,i,o){if(Object.defineProperty)try{return Object.defineProperty(t,a,{configurable:!0,enumerable:!0,get:function(){return r(o),i},set:function(e){r(o),i=e}}),n}catch(s){}e._definePropertyBroken=!0,t[a]=i}var i={};e.migrateWarnings=[],!e.migrateMute&&t.console&&t.console.log&&t.console.log("JQMIGRATE: Logging is active"),e.migrateTrace===n&&(e.migrateTrace=!0),e.migrateReset=function(){i={},e.migrateWarnings.length=0},"BackCompat"===document.compatMode&&r("jQuery is not compatible with Quirks Mode");var o=e("<input/>",{size:1}).attr("size")&&e.attrFn,s=e.attr,u=e.attrHooks.value&&e.attrHooks.value.get||function(){return null},c=e.attrHooks.value&&e.attrHooks.value.set||function(){return n},l=/^(?:input|button)$/i,d=/^[238]$/,p=/^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,f=/^(?:checked|selected)$/i;a(e,"attrFn",o||{},"jQuery.attrFn is deprecated"),e.attr=function(t,a,i,u){var c=a.toLowerCase(),g=t&&t.nodeType;return u&&(4>s.length&&r("jQuery.fn.attr( props, pass ) is deprecated"),t&&!d.test(g)&&(o?a in o:e.isFunction(e.fn[a])))?e(t)[a](i):("type"===a&&i!==n&&l.test(t.nodeName)&&t.parentNode&&r("Can't change the 'type' of an input or button in IE 6/7/8"),!e.attrHooks[c]&&p.test(c)&&(e.attrHooks[c]={get:function(t,r){var a,i=e.prop(t,r);return i===!0||"boolean"!=typeof i&&(a=t.getAttributeNode(r))&&a.nodeValue!==!1?r.toLowerCase():n},set:function(t,n,r){var a;return n===!1?e.removeAttr(t,r):(a=e.propFix[r]||r,a in t&&(t[a]=!0),t.setAttribute(r,r.toLowerCase())),r}},f.test(c)&&r("jQuery.fn.attr('"+c+"') may use property instead of attribute")),s.call(e,t,a,i))},e.attrHooks.value={get:function(e,t){var n=(e.nodeName||"").toLowerCase();return"button"===n?u.apply(this,arguments):("input"!==n&&"option"!==n&&r("jQuery.fn.attr('value') no longer gets properties"),t in e?e.value:null)},set:function(e,t){var a=(e.nodeName||"").toLowerCase();return"button"===a?c.apply(this,arguments):("input"!==a&&"option"!==a&&r("jQuery.fn.attr('value', val) no longer sets properties"),e.value=t,n)}};var g,h,v=e.fn.init,m=e.parseJSON,y=/^([^<]*)(<[\w\W]+>)([^>]*)$/;e.fn.init=function(t,n,a){var i;return t&&"string"==typeof t&&!e.isPlainObject(n)&&(i=y.exec(e.trim(t)))&&i[0]&&("<"!==t.charAt(0)&&r("$(html) HTML strings must start with '<' character"),i[3]&&r("$(html) HTML text after last tag is ignored"),"#"===i[0].charAt(0)&&(r("HTML string cannot start with a '#' character"),e.error("JQMIGRATE: Invalid selector string (XSS)")),n&&n.context&&(n=n.context),e.parseHTML)?v.call(this,e.parseHTML(i[2],n,!0),n,a):v.apply(this,arguments)},e.fn.init.prototype=e.fn,e.parseJSON=function(e){return e||null===e?m.apply(this,arguments):(r("jQuery.parseJSON requires a valid JSON string"),null)},e.uaMatch=function(e){e=e.toLowerCase();var t=/(chrome)[ \/]([\w.]+)/.exec(e)||/(webkit)[ \/]([\w.]+)/.exec(e)||/(opera)(?:.*version|)[ \/]([\w.]+)/.exec(e)||/(msie) ([\w.]+)/.exec(e)||0>e.indexOf("compatible")&&/(mozilla)(?:.*? rv:([\w.]+)|)/.exec(e)||[];return{browser:t[1]||"",version:t[2]||"0"}},e.browser||(g=e.uaMatch(navigator.userAgent),h={},g.browser&&(h[g.browser]=!0,h.version=g.version),h.chrome?h.webkit=!0:h.webkit&&(h.safari=!0),e.browser=h),a(e,"browser",e.browser,"jQuery.browser is deprecated"),e.sub=function(){function t(e,n){return new t.fn.init(e,n)}e.extend(!0,t,this),t.superclass=this,t.fn=t.prototype=this(),t.fn.constructor=t,t.sub=this.sub,t.fn.init=function(r,a){return a&&a instanceof e&&!(a instanceof t)&&(a=t(a)),e.fn.init.call(this,r,a,n)},t.fn.init.prototype=t.fn;var n=t(document);return r("jQuery.sub() is deprecated"),t},e.ajaxSetup({converters:{"text json":e.parseJSON}});var b=e.fn.data;e.fn.data=function(t){var a,i,o=this[0];return!o||"events"!==t||1!==arguments.length||(a=e.data(o,t),i=e._data(o,t),a!==n&&a!==i||i===n)?b.apply(this,arguments):(r("Use of jQuery.fn.data('events') is deprecated"),i)};var j=/\/(java|ecma)script/i,w=e.fn.andSelf||e.fn.addBack;e.fn.andSelf=function(){return r("jQuery.fn.andSelf() replaced by jQuery.fn.addBack()"),w.apply(this,arguments)},e.clean||(e.clean=function(t,a,i,o){a=a||document,a=!a.nodeType&&a[0]||a,a=a.ownerDocument||a,r("jQuery.clean() is deprecated");var s,u,c,l,d=[];if(e.merge(d,e.buildFragment(t,a).childNodes),i)for(c=function(e){return!e.type||j.test(e.type)?o?o.push(e.parentNode?e.parentNode.removeChild(e):e):i.appendChild(e):n},s=0;null!=(u=d[s]);s++)e.nodeName(u,"script")&&c(u)||(i.appendChild(u),u.getElementsByTagName!==n&&(l=e.grep(e.merge([],u.getElementsByTagName("script")),c),d.splice.apply(d,[s+1,0].concat(l)),s+=l.length));return d});var Q=e.event.add,x=e.event.remove,k=e.event.trigger,N=e.fn.toggle,T=e.fn.live,M=e.fn.die,S="ajaxStart|ajaxStop|ajaxSend|ajaxComplete|ajaxError|ajaxSuccess",C=RegExp("\\b(?:"+S+")\\b"),H=/(?:^|\s)hover(\.\S+|)\b/,A=function(t){return"string"!=typeof t||e.event.special.hover?t:(H.test(t)&&r("'hover' pseudo-event is deprecated, use 'mouseenter mouseleave'"),t&&t.replace(H,"mouseenter$1 mouseleave$1"))};e.event.props&&"attrChange"!==e.event.props[0]&&e.event.props.unshift("attrChange","attrName","relatedNode","srcElement"),e.event.dispatch&&a(e.event,"handle",e.event.dispatch,"jQuery.event.handle is undocumented and deprecated"),e.event.add=function(e,t,n,a,i){e!==document&&C.test(t)&&r("AJAX events should be attached to document: "+t),Q.call(this,e,A(t||""),n,a,i)},e.event.remove=function(e,t,n,r,a){x.call(this,e,A(t)||"",n,r,a)},e.fn.error=function(){var e=Array.prototype.slice.call(arguments,0);return r("jQuery.fn.error() is deprecated"),e.splice(0,0,"error"),arguments.length?this.bind.apply(this,e):(this.triggerHandler.apply(this,e),this)},e.fn.toggle=function(t,n){if(!e.isFunction(t)||!e.isFunction(n))return N.apply(this,arguments);r("jQuery.fn.toggle(handler, handler...) is deprecated");var a=arguments,i=t.guid||e.guid++,o=0,s=function(n){var r=(e._data(this,"lastToggle"+t.guid)||0)%o;return e._data(this,"lastToggle"+t.guid,r+1),n.preventDefault(),a[r].apply(this,arguments)||!1};for(s.guid=i;a.length>o;)a[o++].guid=i;return this.click(s)},e.fn.live=function(t,n,a){return r("jQuery.fn.live() is deprecated"),T?T.apply(this,arguments):(e(this.context).on(t,this.selector,n,a),this)},e.fn.die=function(t,n){return r("jQuery.fn.die() is deprecated"),M?M.apply(this,arguments):(e(this.context).off(t,this.selector||"**",n),this)},e.event.trigger=function(e,t,n,a){return n||C.test(e)||r("Global events are undocumented and deprecated"),k.call(this,e,t,n||document,a)},e.each(S.split("|"),function(t,n){e.event.special[n]={setup:function(){var t=this;return t!==document&&(e.event.add(document,n+"."+e.guid,function(){e.event.trigger(n,null,t,!0)}),e._data(this,n,e.guid++)),!1},teardown:function(){return this!==document&&e.event.remove(document,n+"."+e._data(this,n)),!1}}})}(jQuery,window);
	</script>
</html>
