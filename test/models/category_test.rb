require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "sports")
  end

  test "categoria tem que ser válida" do
    assert @category.valid?
  end

  test "nome inválido" do
    @category.name = " "
    assert_not @category.valid?
  end

    test "nome ja registrado!" do
      @category.save
      category2 = Category.new(name: "sports")
      assert_not category2.valid?
    end

  test "name should not be too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

  test "name should not be too short" do
    @category.name = "aa"
    assert_not @category.valid?
  end

end