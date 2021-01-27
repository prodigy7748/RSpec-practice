RSpec.describe 'An ideal bread' do
  it 'is delicious' do
    Bread = Struct.new(:taste, :toppings)
    bread = Bread.new('delicious', [])
    taste = bread.taste
    expect(taste).to eq('delicious')
  end
end