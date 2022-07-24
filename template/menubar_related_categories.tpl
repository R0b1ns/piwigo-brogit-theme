<h6 class="mt-3"><small>{'Related albums'|@translate}</small></h6>
{assign var='ref_level' value=0}
{foreach from=$block->data.MENU_CATEGORIES item=cat}
  {if $cat.LEVEL > $ref_level}
  <ul class="nav flex-column nav-pills">
  {else}
    </li>
    {'</ul></li>'|@str_repeat:($ref_level-$cat.LEVEL)}
  {/if}
    <li class="nav-item">

      <div class="nav-link">
  {if isset($cat.url)}
      <a href="{$cat.url}" title="{$cat.TITLE}">{$cat.name}</a>
  {else}
      {$cat.name}
  {/if}
  {if $cat.count_images > 0}
      <span class="badge rounded-pill text-bg-primary" title="{$cat.count_images|translate_dec:'%d photo':'%d photos'}">{$cat.count_images}</span>
  {/if}
  {if $cat.count_categories > 0}
      <span class="badge rounded-pill text-bg-primary fst-italic" title="{'sub-albums'|translate}">{$cat.count_categories}</span>
  {/if}
      </div>
  {assign var='ref_level' value=$cat.LEVEL}
{/foreach}
{'</li></ul>'|@str_repeat:$ref_level}