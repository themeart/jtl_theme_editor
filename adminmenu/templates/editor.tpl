<link type="text/css" rel="stylesheet" href="{$URL}templates/style.css" />
<div id="jtl-template-editor">
    <div id="main-actions">
        <strong class="editor-brand">Theme Editor</strong>
        <div class="theme-picker">
            <select id="theme" aria-label="{__('--- select theme ---')}">
                <option value="">{__('--- select theme ---')}</option>
                {foreach $themes as $theme}
                    {if isset($theme.theme)}
                        <option value="{$theme.theme}" data-template="{$theme.template}">{$theme.theme|ucfirst}</option>
                    {/if}
                {/foreach}
            </select>
        </div>
        <button type="button" id="refresh" aria-label="Dateiliste aktualisieren" title="Dateiliste aktualisieren"><span class="glyphicon glyphicon-refresh"></span></button>
        <div class="main-compile">
            <button id="compile" class="btn btn-success">
                <i id="loader" class="fa fa-spin fa-spinner"></i>
                {__('compile theme')}
            </button>
        </div>
    </div>

    <div id="editor-sidebar">
        <div class="sidebar-title">Dateien</div>
        <ul id="files"></ul>
        <p id="file-hint">Für einfache Anpassungen: <strong>custom.css</strong> bearbeiten. Sass-Dateien sind für fortgeschrittene Änderungen.</p>
    </div>

    <div id="file-header">
        <strong id="current-file">Datei auswählen</strong>
        <span id="file-kind" hidden></span>
        <span id="file-state" role="status" aria-live="polite"></span>
    </div>
    <textarea id="editor"></textarea>

    <div id="actions">
        <button id="save" class="btn btn-primary">{__('save file')}</button>
        <button id="compilefile" class="btn btn-secondary">{__('compile file')}</button>
        <button id="reset" class="btn btn-link pull-right">{__('reset file to default')}</button>
    </div>

    <div id="messages" class="text-center">
        <div id="msg" class="alert"></div>
    </div>
</div>

<div id="dialog" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div id="dialog-content" class="modal-body"></div>
            <div class="modal-footer">
                <span class="btn-group">
                    <button type="button" class="btn btn-default" data-dismiss="modal">{__('cancel')}</button>
                    <button id="dialog-action" type="button" class="btn btn-danger"></button>
                </span>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var URL = '{$apiURL}',
        token = '{$smarty.session.jtl_token}',
        warningCompile = '{__('warningCompile')}',
        warningReset = '{__('warningReset')}',
        actionCompile = '{__('actionCompile')}',
        actionReset = '{__('actionReset')}';
</script>
<script type="text/javascript" src="{$URL}script.js"></script>
