require "application_system_test_case"

class BoardMembersTest < ApplicationSystemTestCase
  setup do
    @board_member = board_members(:one)
  end

  test "visiting the index" do
    visit board_members_url
    assert_selector "h1", text: "Board Members"
  end

  test "creating a Board member" do
    visit board_members_url
    click_on "New Board Member"

    fill_in "Cell", with: @board_member.cell
    fill_in "Email", with: @board_member.email
    fill_in "First", with: @board_member.first
    fill_in "Last", with: @board_member.last
    fill_in "Middle", with: @board_member.middle
    fill_in "Work", with: @board_member.work
    click_on "Create Board member"

    assert_text "Board member was successfully created"
    click_on "Back"
  end

  test "updating a Board member" do
    visit board_members_url
    click_on "Edit", match: :first

    fill_in "Cell", with: @board_member.cell
    fill_in "Email", with: @board_member.email
    fill_in "First", with: @board_member.first
    fill_in "Last", with: @board_member.last
    fill_in "Middle", with: @board_member.middle
    fill_in "Work", with: @board_member.work
    click_on "Update Board member"

    assert_text "Board member was successfully updated"
    click_on "Back"
  end

  test "destroying a Board member" do
    visit board_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Board member was successfully destroyed"
  end
end
