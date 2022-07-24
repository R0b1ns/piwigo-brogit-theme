<h6 class="mt-3"><small>{'Photos'|@translate}</small></h6>
<nav class="nav flex-column nav-pills">
	{foreach from=$block->data item=link}
	<a class="nav-link" href="{$link.URL}" title="{$link.TITLE}"{if isset($link.REL)} {$link.REL}{/if}>{$link.NAME}</a>
	{/foreach}
</nav>