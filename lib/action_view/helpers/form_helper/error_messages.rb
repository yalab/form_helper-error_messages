module ActionView
  module Helpers
    module FormHelper
      module ErrorMessages
        def error_messages(attr, opts={})
          tag = opts[:tag] || :div
          @object.errors[attr].map{|error|
            @template.content_tag(tag, ERB::Util.html_escape(error), :class => 'invalid')
          }.join("\n").html_safe
        end
      end
    end
  end
end
