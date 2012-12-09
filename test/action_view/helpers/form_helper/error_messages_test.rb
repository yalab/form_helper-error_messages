require 'test_helper'

class ActionView::Helpers::FormHelper::ErrorMessageTest < ActionView::TestCase
  tests ActionView::Helpers::FormHelper

  setup do
    @user = User.new
  end

  test '#error_messages default' do
    form_for(@user) do |f|
      assert_dom_equal('<div class="invalid">can&#x27;t be blank</div>', f.error_messages(:name))
    end
  end

  test "#error_messages with options" do
    form_for(@user) do |f|
      assert_dom_equal('<span class="error">can&#x27;t be blank</span>', f.error_messages(:name, tag: 'span', class: 'error'))
    end
  end
end
