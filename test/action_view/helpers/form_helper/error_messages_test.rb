require 'test_helper'

class ActionView::Helpers::FormHelper::ErrorMessageTest < ActionView::TestCase
  tests ActionView::Helpers::FormHelper

  def test_error_messages_default
    @user = User.new
    form_for(@user) do |f|
    end
  end
end
