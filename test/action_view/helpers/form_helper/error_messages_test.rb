require 'test_helper'

class ActionView::Helpers::FormHelper::ErrorMessageTest < ActionView::TestCase
  tests ActionView::Helpers::FormHelper

  Routes = ActionDispatch::Routing::RouteSet.new
  Routes.draw do
    resources :users
  end
  include Routes.url_helpers

  def setup
    @controller.class.module_eval do
      def _routes
        Routes
      end
    end
  end

  def test_error_messages_default
    @user = User.new
    form_for(@user) do |f|

    end
  end
end
