require 'test_helper'

class BoardMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @board_member = board_members(:one)
  end

  test "should get index" do
    get board_members_url
    assert_response :success
  end

  test "should get new" do
    get new_board_member_url
    assert_response :success
  end

  test "should create board_member" do
    assert_difference('BoardMember.count') do
      post board_members_url, params: { board_member: { cell: @board_member.cell, email: @board_member.email, first: @board_member.first, last: @board_member.last, middle: @board_member.middle, work: @board_member.work } }
    end

    assert_redirected_to board_member_url(BoardMember.last)
  end

  test "should show board_member" do
    get board_member_url(@board_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_board_member_url(@board_member)
    assert_response :success
  end

  test "should update board_member" do
    patch board_member_url(@board_member), params: { board_member: { cell: @board_member.cell, email: @board_member.email, first: @board_member.first, last: @board_member.last, middle: @board_member.middle, work: @board_member.work } }
    assert_redirected_to board_member_url(@board_member)
  end

  test "should destroy board_member" do
    assert_difference('BoardMember.count', -1) do
      delete board_member_url(@board_member)
    end

    assert_redirected_to board_members_url
  end
end
