require 'test_helper'

class FormHelper::ErrorMessageTest < ActionView::TestCase
  tests ActionView::Helpers::FormHelper

  setup do
    @user = User.new
  end

  test '#error_messages default' do
    form_for(@user) do |f|
      assert_dom_equal('<div class="invalid">Name can&#x27;t be blank</div>', f.error_messages(:name))
    end
  end

  test "#error_messages with options" do
    form_for(@user) do |f|
      assert_dom_equal('<span class="error">Name can&#x27;t be blank</span>', f.error_messages(:name, tag: 'span', class: 'error'))
    end
  end

  test "#error_messages with block" do
    form_for(@user) do |f|
      assert_dom_equal("It Name can't be blank!!",
                       f.error_messages(:name){|message| 'It ' + message + '!!' })
    end
  end
end
