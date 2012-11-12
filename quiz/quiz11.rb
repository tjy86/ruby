require "pry"
require "test/unit"

class MyString
	def self.length(x)
		x.length
	end
end

class MyTest < Test::Unit::TestCase
	def test_simple
		assert_equal(MyString.length('hello world'),11)
	end
end