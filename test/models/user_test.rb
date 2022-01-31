require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users

  def user
    @user ||= users(:joe)
  end

  def bad_user
    @bad_user ||= users(:steve)
  end

  def test_valid_user
    assert user.valid?
  end

  def test_invalid_user
    assert_not bad_user.valid?
  end

  def test_user_name
    assert_equal 'Joe', user.name
  end

  def test_invalid_user_name
    assert_not_equal 'Joe Cena', user.name
  end
end
