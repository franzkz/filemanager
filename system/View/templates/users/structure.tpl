<ul id="structure" class="filetree"></ul>

<script type="text/javascript">
    {% for part in tree %}
        $("#structure").append("<li id='pid{{ part.id }}'><span class='folder'>&nbsp;{{ part.name }}&nbsp;<a style='cursor: pointer' onclick='editCat(\"{{ part.id }}\")' title='Изменить'><img src='{{ registry.uri }}img/highlighter-small.png' alt='Изменить' /></a>&nbsp;<a style='cursor: pointer' onclick='delCat(\"{{ part.id }}\")' title='Удалить'><img src='{{ registry.uri }}img/minus-small.png' alt='Удалить' /></a></span></li>");
    {% endfor %}
</script>