<g:applyLayout name="main">

    <head>
        <title><g:layoutTitle/></title>
        <g:layoutHead/>
    </head>

    <body>
        <content tag="nav">
            <g:render template="/layouts/loggedHeadMenu"/>
        </content>

        <div id="content" role="main">
            <section class="row colset-2-its">
                <a href="#main" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
                    <g:pageProperty name="page.breadcrumb" />
                </div>
                <div id="main" class="content" role="main">
                    <g:pageProperty name="page.mainContent" />
                </div>
            </section>
        </div>
    </body>
</g:applyLayout>