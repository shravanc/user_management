require 'test_helper'

module Ums
  class UsersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get create" do
      get users_create_url
      assert_response :success
    end

    test "should get update" do
      get users_update_url
      assert_response :success
    end

  end
end
