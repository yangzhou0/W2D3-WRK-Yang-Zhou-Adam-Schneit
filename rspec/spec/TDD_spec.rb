require 'rspec'
require 'TDD'

describe "#my_uniq" do
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
  
describe "#two_sum" do
   let(:arr){[-1,0,2,-2,1]}
   
   it "puts smaller index first" do
     result = arr.two_sum
     new_array = [result[0].first, result[1].first]
     expect(new_array).to eq(new_array.sort)
   end
   
   it "pairs in the result add up to 0" do
     expect(arr.two_sum).to eq([[0,4], [2,3]])
   end
end


describe 'my_transpose' do
  let (:row){[
    [0,1,2],
    [3,4,5],
    [6,7,8]
    ]}
  let (:col){[
    [0,3,6],
    [1,4,7],
    [2,5,8]
    ]}
  let (:error_matrix) {[
    [1,2],
    [3,4],
    [5,6]
    ]}
    it 'does not change the size of the array' do
      expect(my_transpose(row).size).to eq(row.size)
    end
    
    it 'does not accept non-symmetrical array'do

      expect{my_transpose(error_matrix)}.to raise_error(BadMatrixError)
    end
end

describe '#stock_picker' do
  let (:stocks){[3.56, 2.89, 4.78, 1.23, 3.23, 7.65, 4.34, 1.78]} 
    it "doesn't put sell date before buy date" do
      expect(stock_picker(stocks)[0]).to be < (stock_picker(stocks)[1])
    end
    
    it "gets the correct pair of days" do 
      expect(stock_picker(stocks)).to eq([3,5])
    end
  
end


