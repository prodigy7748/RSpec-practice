RSpec.describe 'A cup of coffee' do
  it 'costs NTD30' do
    coffee = Coffee.new
    expect(coffee.price).to eq(30)
  end
end

class Coffee
  def price
    30
  end
end