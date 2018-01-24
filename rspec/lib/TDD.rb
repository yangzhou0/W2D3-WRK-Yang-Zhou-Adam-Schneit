class BadMatrixError < StandardError; end

class Array
  def my_uniq 
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end
  
  def two_sum
    arr = []
    (0..self.length-2).each do |i|
      (i+1..self.length-1).each do |j|
        arr << [i,j] if self[i] + self[j] == 0
      end
    end
    arr
  end
end


def my_transpose(arr)
  raise BadMatrixError unless arr.count == arr[0].count
  
  dimension = arr.size
  col = Array.new(dimension){Array.new(dimension)}
  dimension.times do |i|
    dimension.times do |j|
      col[i][j] = row[j][i]
    end
  end
  col
end