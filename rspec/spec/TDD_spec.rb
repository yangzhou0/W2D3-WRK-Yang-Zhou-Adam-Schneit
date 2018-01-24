require 'rspec'
require 'TDD'

describe "#my_uniq" do
  # it "should take in an Array" 
  # 
  #   expect([1,2,1,3,3].my_uniq).to eq ([1,2,3]) 
  # end
  let(:arr){[1, 2, 1, 3, 3]} 
  
  it 'should not use built-in uniq' do
    expect(arr.my_uniq).to_not receive (:uniq)
  
  end
  
  it 'should reduce the size of the original array' do
    expect(arr.my_uniq).to eq([1,2,3])
  end
  
  it 'does not modify original array' do
    expect{arr.my_uniq}.to_not change{arr}
  
  end
  
end