
{if !isset($loaded_plugins['rv_menutree'])}
#mbCategories UL {
	list-style-type: square;
	padding-left: 8px;
}
{/if}

#quickconnect FIELDSET {
	margin: 0 5px 0 0;
	padding: 0 5px;
}

#menuTagCloud {
	text-align: center;
}

#menuTagCloud A {
	white-space: nowrap;
	margin-right: 5px;
}

#content {
	clear: both;
}

#menuSwitcher {
	display: none;
}

@media screen and (max-width:980px) {
	#mbProfile {
		display: none !important;
	}
	#mbTags {
		display: none !important;
	}
}

@media screen and (max-width:840px) {
	#mbMostVisited {
		display: none !important;
	}
}

@media screen and (max-width:640px) {
	#mbBestRated {
		display: none !important;
	}

	#menuSwitcher {
		display: block;
		position: absolute;
		padding-top: 2px;
{if !empty($skin.pageTitle.link.color)}
		color: {$skin.pageTitle.link.color};/*switcher is outside page title so not inherited*/
{/if}
	}

{if !empty($skin.pageTitle.linkHover.color)}
	#menuSwitcher:hover {
		color: {$skin.pageTitle.linkHover.color};/*switcher is outside page title so not inherited*/
	}
{/if}

	.contentWithMenu .titrePage H2,
	.contentWithMenu .browsePath {
		/*text-indent: 25px; *//*make space for menu switcher*/
		letter-spacing: -0.5px;
	}

	.titrePage H2:first-line,
	.browsePath:first-line {
		line-height: 28px; /*long bread crumbs go on second line and would run into menu switcher*/
	}

}
