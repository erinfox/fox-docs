require "application_system_test_case"

class RubySymbolsTest < ApplicationSystemTestCase
  setup do
    @ruby_symbol = ruby_symbols(:one)
  end

  test "visiting the index" do
    visit ruby_symbols_url
    assert_selector "h1", text: "Ruby Symbols"
  end

  test "creating a Ruby symbol" do
    visit ruby_symbols_url
    click_on "New Ruby Symbol"

    fill_in "Definition", with: @ruby_symbol.definition
    fill_in "Example", with: @ruby_symbol.example
    fill_in "Name", with: @ruby_symbol.name
    fill_in "Sign", with: @ruby_symbol.sign
    click_on "Create Ruby symbol"

    assert_text "Ruby symbol was successfully created"
    click_on "Back"
  end

  test "updating a Ruby symbol" do
    visit ruby_symbols_url
    click_on "Edit", match: :first

    fill_in "Definition", with: @ruby_symbol.definition
    fill_in "Example", with: @ruby_symbol.example
    fill_in "Name", with: @ruby_symbol.name
    fill_in "Sign", with: @ruby_symbol.sign
    click_on "Update Ruby symbol"

    assert_text "Ruby symbol was successfully updated"
    click_on "Back"
  end

  test "destroying a Ruby symbol" do
    visit ruby_symbols_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ruby symbol was successfully destroyed"
  end
end
