require 'minitest/autorun'
require 'fieldbook-ruby'

class FieldbookTest < Minitest::Test
  def test_english_hello
    assert_equal "hello world", Fieldbook.hi('english')
  end

  def test_any_hello
    assert_equal 'hello world', Fieldbook.hi('ruby')
  end

  def test_spanish_hello
    assert_equal 'hola mundo', Fieldbook.hi('spanish')
  end
end
