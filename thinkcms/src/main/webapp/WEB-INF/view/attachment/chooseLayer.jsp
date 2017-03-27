<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/css/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/plugin/fine-uploader/fine-uploader-new.css"/>'>
<%@ include file="/WEB-INF/view/common/head.jsp"%>
<script
	src="<c:url value="/static/plugin/fine-uploader/jquery.fine-uploader.js"/>"></script>
</head>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<body>
	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">

			<hr>

			<div class="am-tabs am-margin" data-am-tabs>
				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">本地上传</a></li>
					<li onclick="query();"><a href="#tab2">文件列表</a></li>
				</ul>

				<div class="am-tabs-bd">
					<div class="am-tab-panel am-fade am-in am-active" id="tab1">
						<div id="fine-uploader-gallery"></div>
					</div>

					<div class="am-tab-panel am-fade" id="tab2" >
						<div id="imgList"></div>
					</div>

				</div>
			</div>

			<div class="am-margin am-fr">
					<button type="button" class="am-btn am-btn-primary " onclick="doClose();">确认</button>
					<button type="button" class="am-btn am-btn-primary ">取消</button>
			</div>
		</div>

		<%@ include file="/WEB-INF/view/common/footer.jsp"%>
	</div>
	<!-- content end -->
	<script type="text/javascript">
		function doChoose(url, alt) {
			parent.data.url = url;
			parent.data.alt = alt;
		}

		function doClose() {
			parent.layer.closeAll();
		}
		function query(pageNo, pageSize){
			$.ajax({
				url : 'imgList',
				type : 'post',
				data : {
					pageNo : pageNo,
					pageSize : pageSize
				},
				cache : false,
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				success : function(html) {
					$('#imgList').html(html);
				},
				error : function() {
					layer.msg('系统异常');
				}
			});
		}
		$(function() {
			$('#fine-uploader-gallery')
					.fineUploader(
							{
								template : 'qq-simple-thumbnails-template',
								request : {
									endpoint : '<c:url value="/common/fileUpload"/>'
								},
								 //是否选中后自动上传
					            autoUpload: true,
								validation: {
								      //控制上传文件的后缀格式数组
								                allowedExtensions: ['jpeg', 'jpg', 'png'],
								    //控制上传文件大小
								                sizeLimit: 5 * (1024 * 1024) // 200 kB = 200 * 1024 bytes
								           },
								thumbnails : {
									placeholders : {
										waitingPath : '<c:url value="/static/plugin/fine-uploader/placeholders/waiting-generic.png"/>',
										notAvailablePath : '<c:url value="/static/plugin/fine-uploader/placeholders/not_available-generic.png"/>'
									}
								},
								callbacks : {
									onComplete : function(id, name, response) {
										doChoose(response.obj, '');
									}
								}
							});
		});
	</script>
	 <script type="text/template" id="qq-simple-thumbnails-template">
        <div class="qq-uploader-selector qq-uploader" qq-drop-area-text="或拖拽文件到此上传">
            <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
                <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
            </div>
            <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
                <span class="qq-upload-drop-area-text-selector"></span>
            </div>
            <div class="qq-upload-button-selector qq-upload-button">
                <div>选择图片</div>
            </div>
            <span class="qq-drop-processing-selector qq-drop-processing">
                <span>Processing dropped files...</span>
                <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
            </span>
            <ul class="qq-upload-list-selector qq-upload-list" aria-live="polite" aria-relevant="additions removals">
                <li>
                    <div class="qq-progress-bar-container-selector">
                        <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-progress-bar-selector qq-progress-bar"></div>
                    </div>
                    <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
                    <img class="qq-thumbnail-selector" qq-max-size="100" qq-server-scale>
                    <span class="qq-upload-file-selector qq-upload-file"></span>
                    <span class="qq-edit-filename-icon-selector qq-edit-filename-icon" aria-label="Edit filename"></span>
                    <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
                    <span class="qq-upload-size-selector qq-upload-size"></span>
                    <button type="button" class="qq-btn qq-upload-cancel-selector qq-upload-cancel">Cancel</button>
                    <button type="button" class="qq-btn qq-upload-retry-selector qq-upload-retry">Retry</button>
                    <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">Delete</button>
                    <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
                </li>
            </ul>

            <dialog class="qq-alert-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Close</button>
                </div>
            </dialog>

            <dialog class="qq-confirm-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">No</button>
                    <button type="button" class="qq-ok-button-selector">Yes</button>
                </div>
            </dialog>

            <dialog class="qq-prompt-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <input type="text">
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Cancel</button>
                    <button type="button" class="qq-ok-button-selector">Ok</button>
                </div>
            </dialog>
        </div>
    </script>
</body>
</html>