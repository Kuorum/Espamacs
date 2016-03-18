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
                <g:pageProperty name="page.mainContent" />
            </section>
        </div>
    </body>
</g:applyLayout>