<div class="container rounded border mb-5">
  <form method="post" name="profile" action="{$F_ACTION}" id="profile">
    <div class="row">
      <div class="col-md-6 border-end mb-3 pt-2">
        <fieldset>
          <legend>{'Registration'|@translate}</legend>
          <input type="hidden" name="redirect" value="{$REDIRECT}">

          <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-5 col-form-label">{'Username'|@translate}</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" value="{$USERNAME}" disabled>
            </div>
          </div>
          {if not $SPECIAL_USER} {* can modify password + email*}
          <div class="row mb-3">
            <label for="mail_address" class="col-sm-5 col-form-label">{'Email address'|@translate}</label>
            <div class="col-sm-7">
              <input id="mail_address" name="mail_address" type="email" class="form-control" value="{$EMAIL}">
            </div>
          </div>
          <div class="row mb-3">
            <label for="password" class="col-sm-5 col-form-label">{'Password'|@translate}</label>
            <div class="col-sm-7">
              <input id="password" name="password" type="password" class="form-control" value="">
            </div>
          </div>
          <div class="row mb-3">
            <label for="use_new_pwd" class="col-sm-5 col-form-label">{'New password'|@translate}</label>
            <div class="col-sm-7">
              <input id="use_new_pwd" name="use_new_pwd" type="password" class="form-control" value="" autocomplete="off">
            </div>
          </div>
          <div class="row mb-3">
            <label for="passwordConf" class="col-sm-5 col-form-label">{'Confirm Password'|@translate}</label>
            <div class="col-sm-7">
              <input id="passwordConf" name="passwordConf" type="password" class="form-control" value="" autocomplete="off">
            </div>
          </div>
          {/if}
        </fieldset>
      </div>
      <div class="col-md-6 mb-3 pt-2">
        {if $ALLOW_USER_CUSTOMIZATION}
        <fieldset>
          <legend>{'Preferences'|@translate}</legend>

          <div class="row mb-3">
            <label for="nb_image_page" class="col-sm-5 col-form-label">{'Number of photos per page'|@translate}</label>
            <div class="col-sm-7">
              <input id="nb_image_page" name="nb_image_page" type="number" maxlength="3" class="form-control" value="{$NB_IMAGE_PAGE}">
            </div>
          </div>
          <div class="row mb-3">
            <label for="template" class="col-sm-5 col-form-label">{'Theme'|@translate}</label>
            <div class="col-sm-7">
              {html_options name=theme class="form-select" options=$template_options selected=$template_selection}
            </div>
          </div>
          <div class="row mb-3">
            <label for="language" class="col-sm-5 col-form-label">{'Language'|@translate}</label>
            <div class="col-sm-7">
              {html_options name=language class="form-select" options=$language_options selected=$language_selection}
            </div>
          </div>
          <div class="row mb-3">
            <label for="Recent period" class="col-sm-5 col-form-label">{'Recent period'|@translate}</label>
            <div class="col-sm-7">
              <input type="number" maxlength="2" class="form-control" name="recent_period" id="recent_period" value="{$RECENT_PERIOD}">
            </div>
          </div>
          <div class="row mb-3">
            <label for="expand" class="col-sm-5 col-form-label">{'Expand all albums'|@translate}</label>
            <div class="col-sm-7">
              {html_radios name='expand' options=$radio_options selected=$EXPAND}
            </div>
          </div>
          {if $ACTIVATE_COMMENTS}
          <div class="row mb-3">
            <label for="show_nb_comments" class="col-sm-5 col-form-label">{'Show number of comments'|@translate}</label>
            <div class="col-sm-7">
              {html_radios name='show_nb_comments' options=$radio_options selected=$NB_COMMENTS}
            </div>
          </div>
          {/if}
          <div class="row mb-3">
            <label for="show_nb_hits" class="col-sm-5 col-form-label">{'Show number of hits'|@translate}</label>
            <div class="col-sm-7">
              {html_radios name='show_nb_hits' options=$radio_options selected=$NB_HITS}
            </div>
          </div>
        </fieldset>
        {/if}
      </div>
      <div class="col text-center mb-3">
        <input type="hidden" name="pwg_token" value="{$PWG_TOKEN}">
        <input class="btn btn-primary" type="submit" name="validate" value="{'Submit'|@translate}">
        <input class="btn btn-outline-secondary" type="reset" name="reset" value="{'Reset'|@translate}">
        {if $ALLOW_USER_CUSTOMIZATION}
        <input class="btn btn-outline-warning" type="submit" name="reset_to_default" value="{'Reset to default values'|@translate}">
        {/if}
      </div>
    </div>
  </form>
</div>