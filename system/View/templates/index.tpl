<div id="fm"></div>

<div id="uploader" style="display: none" title="Загрузка файлов">
<div id="content">
	<div class="fieldset flash" id="fsUploadProgress">
		<span class="legend">Очередь загрузки</span>
	</div>
	<div id="divStatus">0 файлов загружено</div>
	<div>
		<span id="spanButtonPlaceHolder"></span>
		<input id="btnCancel" type="button" value="Отменить все загрузки" onclick="swfu.cancelQueue();" disabled="disabled" style="margin-left: 2px; font-size: 8pt; height: 29px;" />
	</div>
</div>
</div>

<div id="fm_filesystem">
	<div style="text-align: center; margin-top: 30px"><img src="{{ registry.uri }}img/ajax-loader.gif" alt="ajax-loader.gif" border="0" /></div>
</div>

<!-- FILE DIALOG  -->
<div id="fDialog" style="display: none" title="Свойства файла">
	<div id="tabs">
	
	<ul>
	<li><a href="#fdmain">Информация</a></li>
	<li><a href="#fdhistory">История</a></li>
	<li><a href="#fdchmod">Режим доступа</a></li>
	
	</ul>
	
	
	<div id="fdmain" class="tabcont" style="text-align: left">
		<input type="hidden" id="fid" />
		<div id="dopenfile"></div>
		<div style="margin-top: 10px">Владелец: <span id="fowner"></span></div>
		<div>Размер: <span id="fsize"></span></div>
		
		<div id="wndShare" class="lfm_border">
			<div class="btn"><label class="checkbox"><input id="share" type="checkbox" name="share" />&nbsp;Поделиться</label></div>
			<div style="display: none; padding-top: 10px" id="shareName"><b>URL: </b>{{ registry.siteName }}{{ registry.uri }}download/?filename=<span class="shfname"></span></div>
		</div>
		
		<div id="dfiletext" style="margin-top: 10px"></div>
		<div style="margin-top: 20px">
			<textarea id="fText" style="height: 100px; width: 340px"></textarea>
			<p><input type="button" name="addFileText" value="Добавить описание" onclick="addFileText()"></p>
		</div>
	</div>
	
	<div id="fdhistory" class="tabcont" style="text-align: left"></div>
	
	<div id="fdchmod" class="tabcont" style="text-align: left"></div>
	
	</div>
</div>
<!-- END FILE DIALOG  -->

<!-- DIR DIALOG  -->
<div id="dirDialog" style="display: none; text-align: left" title="Режим доступа к каталогу"></div>
<!-- END DIR DIALOG  -->

<!-- FILE CONTEXT MENU -->
<div class="contextMenu" id="fileMenu" style="display: none">
	<ul class="cm">
		<li id="rm_open"><img src="{{ registry.uri }}img/context/document.png" class="cm_img" />Открыть</li>
		<li id="rm_rename"><img src="{{ registry.uri }}img/context/document-rename.png" class="cm_img" />Переименовать</li>
		<li id="rm_main"><img src="{{ registry.uri }}img/context/document-image.png" class="cm_img" />Информация</li>
		<li id="rm_history"><img src="{{ registry.uri }}img/context/clock-history.png" class="cm_img" />История</li>
		<li id="rm_right"><img src="{{ registry.uri }}img/context/users.png" class="cm_img" />Режим</li>
	</ul>
</div>
<!-- DIR CONTEXT MENU -->
<div class="contextMenu" id="dirMenu" style="display: none">
	<ul class="cm">
		<li id="rd_open"><img src="{{ registry.uri }}img/context/folder-open.png" class="cm_img" />Открыть</li>
		<li id="rd_rename"><img src="{{ registry.uri }}img/context/document-rename.png" class="cm_img" />Переименовать</li>
		<li id="rd_right"><img src="{{ registry.uri }}img/context/users.png" class="cm_img" />Режим</li>
	</ul>
</div>

<script type="text/javascript">
$(function(){
var settings = {
		flash_url: "{{ registry.uri }}swf/swfupload.swf",
		upload_url: "{{ registry.uri }}save/",
		post_params: {"{{ session_name }}" : "{{ session_id }}"},
		file_size_limit: "{{ maxUploadSize }}",
		file_types: "*.*",
		file_types_description: "All Files",
		file_post_name: "Filedata",
		file_upload_limit: 100,
		file_queue_limit: 0,
		custom_settings: {
			progressTarget : "fsUploadProgress",
			cancelButtonId : "btnCancel"
		},
		debug: false,
		button_image_url: url + "img/TestImageNoText_65x29.png",
		button_width: "65",
		button_height: "29",
		button_placeholder_id: "spanButtonPlaceHolder",
		button_text: '<span class="theFont">Выбрать</span>',
		button_text_style: ".theFont { font-size: 13px; }",
		button_text_left_padding: 5,
		button_text_top_padding: 4,
		file_queued_handler: fileQueued,
		file_queue_error_handler: fileQueueError,
		file_dialog_complete_handler: fileDialogComplete,
		upload_start_handler: uploadStart,
		upload_progress_handler: uploadProgress,
		upload_error_handler: uploadError,
		upload_success_handler: uploadSuccess,
		upload_complete_handler: uploadComplete,
		queue_complete_handler: queueComplete
	};

	swfu = new SWFUpload(settings);
});
</script>
