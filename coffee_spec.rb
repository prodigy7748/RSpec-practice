RSpec.describe 'A cup of coffee' do

  class Coffee
    def price
      30 + ingredients.size * 15
    end

    def ingredients
      @ingredients ||= []
    end

    def add(ingredient)
      ingredients << ingredient
    end
  end

  it 'costs NTD30' do
    coffee = Coffee.new
    expect(coffee.price).to eq(30)
  end

  context 'with milk' do
    coffee = Coffee.new

    it 'costs NTD45' do
      coffee.add('milk')
      expect(coffee.price).to eq(45)
    end
  end
end
