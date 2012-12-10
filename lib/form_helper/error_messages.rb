module FormHelper
  module ErrorMessages
    def error_messages(attr, opts={})
      tag        = opts[:tag]   || :div
      class_name = opts[:class] || 'invalid'
      errors = @object.errors
      errors[attr].map{|message|
        message = errors.full_message(attr, message)
        if block_given?
          yield message
        else
          @template.content_tag(tag, ERB::Util.html_escape(message), class: class_name)
        end
      }.join("\n").html_safe
    end
  end
end
