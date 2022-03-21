require 'test_helper'

class SloganContestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slogan_contest = slogan_contests(:one)
  end

  test "should get index" do
    get slogan_contests_url, as: :json
    assert_response :success
  end

  test "should create slogan_contest" do
    assert_difference('SloganContest.count') do
      post slogan_contests_url, params: { slogan_contest: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show slogan_contest" do
    get slogan_contest_url(@slogan_contest), as: :json
    assert_response :success
  end

  test "should update slogan_contest" do
    patch slogan_contest_url(@slogan_contest), params: { slogan_contest: {  } }, as: :json
    assert_response 200
  end

  test "should destroy slogan_contest" do
    assert_difference('SloganContest.count', -1) do
      delete slogan_contest_url(@slogan_contest), as: :json
    end

    assert_response 204
  end
end
