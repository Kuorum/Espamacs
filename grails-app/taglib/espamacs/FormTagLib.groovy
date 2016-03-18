package espamacs

class FormTagLib {

    static namespace = "formUtil"

    static defaultEncodeAs = [taglib:'raw']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def input= { attrs ->
        def command = attrs.command
        def field = attrs.field
        def id = attrs.id?:field
        def label = message(code: "${command.class.name}.${field}.label")
        def error = hasErrors(bean: command, field: field,'error')

        out <<"""
            <div class="fieldcontain ${error?'error':''}">
              <label for="initials">${label}
              </label><input type="text" name="${field}" value="" id="${id}">
        """

        if(error){
            out << "<span for='${id}' class='error'>${g.fieldError(bean: command, field: field)}</span>"
        }
        out << "</div>"
    }
}
