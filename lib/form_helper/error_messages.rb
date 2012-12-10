module FormHelper
  module ErrorMessages
    def error_messages(attr, opts={})
      tag        = opts[:tag]   || :div
      class_name = opts[:class] || 'invalid'
      @object.errors[attr].map{|error|
        if block_given?
          yield error
        else
          @template.content_tag(tag, ERB::Util.html_escape(error), class: class_name)
        end
      }.join("\n").html_safe
    end
  end
end
