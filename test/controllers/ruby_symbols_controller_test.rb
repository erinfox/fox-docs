require "test_helper"

class RubySymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_symbol = ruby_symbols(:one)
  end

  test "should get index" do
    get ruby_symbols_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_symbol_url
    assert_response :success
  end

  test "should create ruby_symbol" do
    assert_difference('RubySymbol.count') do
      post ruby_symbols_url, params: { ruby_symbol: { definition: @ruby_symbol.definition, example: @ruby_symbol.example, name: @ruby_symbol.name, sign: @ruby_symbol.sign } }
    end

    assert_redirected_to ruby_symbol_url(RubySymbol.last)
  end

  test "should show ruby_symbol" do
    get ruby_symbol_url(@ruby_symbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_symbol_url(@ruby_symbol)
    assert_response :success
  end

  test "should update ruby_symbol" do
    patch ruby_symbol_url(@ruby_symbol), params: { ruby_symbol: { definition: @ruby_symbol.definition, example: @ruby_symbol.example, name: @ruby_symbol.name, sign: @ruby_symbol.sign } }
    assert_redirected_to ruby_symbol_url(@ruby_symbol)
  end

  test "should destroy ruby_symbol" do
    assert_difference('RubySymbol.count', -1) do
      delete ruby_symbol_url(@ruby_symbol)
    end

    assert_redirected_to ruby_symbols_url
  end
end
