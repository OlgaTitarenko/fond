require 'test_helper'

class BecomeMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @become_member = become_members(:one)
  end

  test "should get index" do
    get become_members_url
    assert_response :success
  end

  test "should get new" do
    get new_become_member_url
    assert_response :success
  end

  test "should create become_member" do
    assert_difference('BecomeMember.count') do
      post become_members_url, params: { become_member: { city: @become_member.city, coordinator: @become_member.coordinator, distinct: @become_member.distinct, email: @become_member.email, knitt: @become_member.knitt, meetings: @become_member.meetings, name: @become_member.name, other: @become_member.other, phone: @become_member.phone } }
    end

    assert_redirected_to become_member_url(BecomeMember.last)
  end

  test "should show become_member" do
    get become_member_url(@become_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_become_member_url(@become_member)
    assert_response :success
  end

  test "should update become_member" do
    patch become_member_url(@become_member), params: { become_member: { city: @become_member.city, coordinator: @become_member.coordinator, distinct: @become_member.distinct, email: @become_member.email, knitt: @become_member.knitt, meetings: @become_member.meetings, name: @become_member.name, other: @become_member.other, phone: @become_member.phone } }
    assert_redirected_to become_member_url(@become_member)
  end

  test "should destroy become_member" do
    assert_difference('BecomeMember.count', -1) do
      delete become_member_url(@become_member)
    end

    assert_redirected_to become_members_url
  end
end
