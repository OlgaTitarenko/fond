require "application_system_test_case"

class BecomeMembersTest < ApplicationSystemTestCase
  setup do
    @become_member = become_members(:one)
  end

  test "visiting the index" do
    visit become_members_url
    assert_selector "h1", text: "Become Members"
  end

  test "creating a Become member" do
    visit become_members_url
    click_on "New Become Member"

    fill_in "City", with: @become_member.city
    check "Coordinator" if @become_member.coordinator
    fill_in "Distinct", with: @become_member.distinct
    fill_in "Email", with: @become_member.email
    check "Knitt" if @become_member.knitt
    check "Meetings" if @become_member.meetings
    fill_in "Name", with: @become_member.name
    fill_in "Other", with: @become_member.other
    fill_in "Phone", with: @become_member.phone
    click_on "Create Become member"

    assert_text "Become member was successfully created"
    click_on "Back"
  end

  test "updating a Become member" do
    visit become_members_url
    click_on "Edit", match: :first

    fill_in "City", with: @become_member.city
    check "Coordinator" if @become_member.coordinator
    fill_in "Distinct", with: @become_member.distinct
    fill_in "Email", with: @become_member.email
    check "Knitt" if @become_member.knitt
    check "Meetings" if @become_member.meetings
    fill_in "Name", with: @become_member.name
    fill_in "Other", with: @become_member.other
    fill_in "Phone", with: @become_member.phone
    click_on "Update Become member"

    assert_text "Become member was successfully updated"
    click_on "Back"
  end

  test "destroying a Become member" do
    visit become_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Become member was successfully destroyed"
  end
end
