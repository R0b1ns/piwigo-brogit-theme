{if isset($blocks.mbSpecials)}

{assign var='block' value=$blocks.mbSpecials}

{if not empty($block->template)}
{include file=$block->template }
{else}
{$block->raw_content}
{/if}

{/if}

{if isset($blocks.mbCategories)}

{assign var='block' value=$blocks.mbCategories}

{if not empty($block->template)}
{include file=$block->template }
{else}
{$block->raw_content}
{/if}

{/if}

{if isset($blocks.mbRelatedCategories)}

{assign var='block' value=$blocks.mbRelatedCategories}

{if not empty($block->template)}
{include file=$block->template }
{else}
{$block->raw_content}
{/if}

{/if}

{if isset($blocks.mbMenu)}

{strip}
<h6 class="mt-3"><small>{'Explore'|@translate}</small></h6>
<nav class="nav flex-column nav-pills">
	{foreach from=$blocks.mbMenu->data item=link}{if is_array($link)}
	<a class="nav-link" href="{$link.URL}" title="{$link.TITLE}"{if isset($link.REL)} {$link.REL}{/if}>
		{$link.NAME}{if isset($link.COUNTER)} <span class="badge rounded-pill text-bg-primary">{$link.COUNTER}</span>{/if}
	</a>
	{/if}{/foreach}
</nav>
{/strip}
{/if}

{foreach from=$blocks key=id item=block}{if not ($id=="mbIdentification" || $id=="mbMenu" || $id=="mbSpecials" || $id=="mbCategories" || $id=="mbRelatedCategories")}
<dl id="{$id}">
	{if not empty($block->template)}
	{include file=$block->template }
	{else}
	{$block->raw_content}
	{/if}
</dl>
{/if}{/foreach}