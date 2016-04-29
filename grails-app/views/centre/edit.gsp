<head>
    <meta name="layout" content="loggedLayout" />
    <title><g:message code="default.show.label" args="[centre.name]" /></title>
</head>

<content tag="breadcrumb">
    <ul>
        <li><g:link mapping="home"><span class="fa fa-home"/></g:link></li>
        <li><g:link action="index"><g:message code="centre.list.title"/></g:link></li>
        <li>${centre.name}</li>
    </ul>
</content>


<content tag="mainContent">
    <h1><g:message code="default.show.label" args="[centre.name]" /></h1>

    <div class="panel-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" href="#centre-data">
                        <g:message code="centre.edit.title" args="[centre.name]"/>
                    </a>
                </h4>
            </div>
            <div id="centre-data" class="panel-collapse collapse in">
                <g:form mapping="centreEdit" params="[id:centre.id]" method="POST">
                    <div class="panel-body">
                        <fieldset class="form-group">
                            <f:all bean="${centre}"/>
                        </fieldset>
                    </div>
                    <div class="panel-footer">
                        <fieldset class="buttons">
                            <input type="submit" class="edit btn btn-primary" value="${message(code:'default.button.edit.label')}"/>
                            %{--<input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                        </fieldset>
                    </div>
                </g:form>
            </div>
        </div>
    </div>

    <div class="panel-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" href="#users-list">
                        <g:message code="centre.edit.users" args="[centre.name]"/>
                    </a>
                </h4>
            </div>
            <div id="users-list" class="panel-collapse collapse in">
                <div class="panel-body">
                    <f:table collection="${users}" properties="['id', 'username']"/>
                </div>
            </div>
        </div>
    </div>
</content>