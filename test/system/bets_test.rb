require "application_system_test_case"

class BetsTest < ApplicationSystemTestCase
  setup do
    @bet = bets(:one)
  end

  test "visiting the index" do
    visit bets_url
    assert_selector "h1", text: "Bets"
  end

  test "should create bet" do
    visit bets_url
    click_on "New bet"

    fill_in "Desc", with: @bet.Desc
    fill_in "Logoa", with: @bet.LogoA
    fill_in "Logob", with: @bet.LogoB
    fill_in "Teama", with: @bet.TeamA
    fill_in "Teamb", with: @bet.TeamB
    fill_in "Date", with: @bet.date
    fill_in "Predia", with: @bet.prediA
    fill_in "Predib", with: @bet.prediB
    click_on "Create Bet"

    assert_text "Bet was successfully created"
    click_on "Back"
  end

  test "should update Bet" do
    visit bet_url(@bet)
    click_on "Edit this bet", match: :first

    fill_in "Desc", with: @bet.Desc
    fill_in "Logoa", with: @bet.LogoA
    fill_in "Logob", with: @bet.LogoB
    fill_in "Teama", with: @bet.TeamA
    fill_in "Teamb", with: @bet.TeamB
    fill_in "Date", with: @bet.date
    fill_in "Predia", with: @bet.prediA
    fill_in "Predib", with: @bet.prediB
    click_on "Update Bet"

    assert_text "Bet was successfully updated"
    click_on "Back"
  end

  test "should destroy Bet" do
    visit bet_url(@bet)
    click_on "Destroy this bet", match: :first

    assert_text "Bet was successfully destroyed"
  end
end
