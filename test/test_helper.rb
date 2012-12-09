ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
require 'test/unit'
require 'action_view/test_case'
[:capture, :tag, :sanitize, :text, :url, :form_tag].each do |name|
  require "action_view/helpers/#{name}_helper"
end
require 'action_view/helpers/form_helper'
require 'action_view-helpers-form_helper-error_messages'
require 'models/user'

Routes = ActionDispatch::Routing::RouteSet.new
Routes.draw do
  resources :users
end

class ActionView::TestCase::TestController
  include Routes.url_helpers
  def _routes
    Routes
  end
end
