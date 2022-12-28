RSpec.describe 'Basic Enums Test' do
  it 'solve for x' do
    s = 'xxxxx'
    5.times { puts s }
    expect(s).to eq('xxxxx')
  end

  it 'simple sum' do
    sum = 0
    numbers = [1, 2, 3, 4, 5]
    numbers.each do |num|
      sum += num
    end
    expect(sum).to eq(15)
  end
end
