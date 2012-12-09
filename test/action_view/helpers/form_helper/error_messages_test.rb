require 'test_helper'

class ActionView::Helpers::FormHelper::ErrorMessageTest < ActionView::TestCase
  tests ActionView::Helpers::FormHelper

  test '#error_messages default' do
    @user = User.new
    form_for(@user) do |f|
      assert_dom_equal('<div class="invalid">can&#x27;t be blank</div>', f.error_messages(:name))
    end
  end
end
