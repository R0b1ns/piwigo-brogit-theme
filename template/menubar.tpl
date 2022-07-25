{footer_script require='jquery'}
		var h = jQuery("#theHeader div.banner").css("height");
		var d = jQuery("#menuSwitcher").css("padding-top");

		jQuery(document).ready(function(){
			if( jQuery('#theHeader div.banner').is(':visible') && jQuery("body").css("display") == "flex"){
				jQuery("#menuSwitcher").css("padding-top",parseInt(h)+parseInt(d));
			};
		});
{/footer_script}

{if !empty($blocks)}
<nav id="menubar" class="navbar sticky-top navbar-expand-lg bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation" title="{'Menu'|@translate}">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
    <!--
      <ul class="navbar-nav me-auto my-2 my-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Link
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Link</a>
        </li>
      </ul>
	-->
      <form class="d-flex mx-auto" role="search" action="{$ROOT_URL}qsearch.php" method=get id=quicksearch onsubmit="return this.q.value!='';">
        <input class="form-control me-2" type="search" aria-label="Search" name=q id=qsearchInput placeholder="{'Search'|@translate|escape:'html'}..." {if !empty($QUERY_SEARCH)} value="{$QUERY_SEARCH}"{/if}>
      </form>
      <ul class="navbar-nav">
        {if isset($U_LOGIN)}
        <li class="nav-item">
          <a class="nav-link" href="{$U_LOGIN}" rel=nofollow><i class="fa-solid fa-arrow-right-to-bracket"></i> {'Login'|@translate}</a>
        </li>
        {/if}
        {if isset($U_LOGOUT) && isset($USERNAME) && isset($U_PROFILE)}
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user"></i> {$USERNAME}
          </a>
          <ul class="dropdown-menu dropdown-menu-end">
            <li><a id="mbProfile" class="dropdown-item" href="{$U_PROFILE}" title="{'customize the appareance of the gallery'|@translate}">{'Customize'|@translate}</a></li>
            {if isset($U_ADMIN)}
            <li><a class="dropdown-item" href="{$U_ADMIN}" title="{'available for administrators only'|@translate}">{'Admin'|@translate}</a></li>
            {/if}
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="{$U_LOGOUT}"><i class="fa-solid fa-right-from-bracket"></i> {'Logout'|@translate}</a></li>
          </ul>
        </li>
        {/if}
      </ul>
    </div>
  </div>
</nav>

{/if}
{combine_script id='zzz.d1.menu' load='async' path="themes/`$themeconf.id`/js/menuh.js" require="jquery" version=0}