<span style="float: left; margin-right: 10px" class="btn btn-primary" onclick="shUploader()">Загрузить файлы</span>

<span style="float: left; display:none" onclick="copyFiles()" class="btn" id="btnCopy">
	Сопировать <code>C</code>
</span>

<span style="float: left; display:none" onclick="pastFiles()"  class="btn" id="btnPast">
	Вставить <code>P</code>
</span>

<ul class="dropdown dropdown-horizontal dropdown-upward">
<li class="topmenubutton" style="cursor: default">
<a style="cursor: default; display:none" class="dir">Буфер</a>
<ul id="clip"></ul>
</li>
</ul>

<span style="float: left" onclick="createDirDialog()" class="btn">
	Создать <code>Ins</code>
</span>

<span style="float: left" onclick="delmany()" class="btn">
	Удалить <code>Del</code>
</span>

{% if registry.ui.admin %}
<span onclick="admin()" id="admbtn" class="btn btn-danger" style="float: left; margin-left: 10px">Режим "Администратора"</span>


<div id="adminFunc" style="display: none; float: right">

		<span onclick="delmanyrealConfirm()" class="btn btn-danger"> <i
			class="icon-remove icon-white"></i>
			Полное удаление
		</span>

		<span onclick="restore()" class="btn btn-success"> <i
			class="icon-repeat icon-white"></i>
			Восстановить
		</span>
</div>
{% endif %}
