require 'test_helper'

module Ums
  class SessionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get create" do
      get sessions_create_url
      assert_response :success
    end

    test "should get update" do
      get sessions_update_url
      assert_response :success
    end

  end
end
