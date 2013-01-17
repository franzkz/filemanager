<div class="btn btn-success" style="font-weight: bold">
	<i class="icon-star icon-white"></i>
	<a href="{{ registry.uri }}users/addgroup/" style="text-decoration: none; color: white">Новая группа</a>
</div>


<div class="btn btn-success" style="font-weight: bold">
	<i class="icon-user icon-white"></i>
	<a href="{{ registry.uri }}users/adduser/" style="text-decoration: none; color: white">Новый пользователь</a>
</div>


<table cellpadding="3" cellspacing="3" style="margin: 40px 0">
<tr>
<td align="center" style="font-weight: bold; font-size: 10px">Удалить</td>
<td align="center" style="font-weight: bold; font-size: 10px">Редактировать</td>
<td align="center" style="font-weight: bold; font-size: 10px">Структура</td>
<td align="center" style="font-weight: bold; font-size: 10px">Имя группы</td>
{% for part in group %}
<tr>
<td align="center" style="border: 1px solid #ccc">
    <a style="cursor: pointer" onclick="delGroupConfirm({{ part.pid }})"><img style="vertical-align: middle" src="{{ registry.uri }}img/delete.png" alt="" border="0" /></a>
</td>

<td align="center" style="border: 1px solid #ccc">
    <a href="{{ registry.uri }}users/editgroup/{{ part.pid }}/"><img style="vertical-align: middle" src="{{ registry.uri }}img/edititem.gif" alt="" border="0" /></a>
</td>

<td align="center" style="border: 1px solid #ccc">
    <a href="{{ registry.uri }}users/structure/list/{{ part.pid }}/"><img style="vertical-align: middle" src="{{ registry.uri }}img/document-tree.png" alt="" border="0" /></a>
</td>

<td align="center" style="border: 1px solid #ccc">
    {{ part.pname }}
</td>
</tr>
{% else %}
<tr><td colspan="3" align="center" style="border: 1px solid #ccc">Пусто</td></tr>
{% endfor %}
</table>


<h3>Структура пользователей</h3>
<div id="utree">
	<ul id="Pstructure" class="filetree">{{ list }}</ul>
</div>