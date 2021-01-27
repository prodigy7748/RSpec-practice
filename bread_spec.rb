RSpec.describe 'An ideal bread' do
  it 'is delicious' do
    Bread = Struct.new(:taste, :toppings)
    bread = Bread.new('delicious', [])
    taste = bread.taste
    expect(taste).to eq('delicious')
  end
  it "let's add topping!" do
    bread = Bread.new('delicious', [])
    bread.toppings << "meat"
    toppings = bread.toppings
    expect(toppings).not_to be_empty
  end
end