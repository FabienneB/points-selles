require 'pry'
class Matrix
  def initialize(matrix_str)
    @matrix = matrix_str.strip.split(/['\n']/).map{ |el| el.split }
    @matrix = @matrix.each_with_object([]) do |arr, int_matrix|
      int_matrix << arr.map(&:to_i)
    end
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end

  def saddle_points
    # min of column
    # max of line
    return [] if @matrix == columns
    mins = Array.new
    maxs = Array.new
    selles_pts = Array.new

    rows.each_with_index do |row, id|
      # if row.find { |x| row.count(x) > 1 } == row.max
        # maxs << [row.max, row.index(row.max)]
        maxs << [row.max, id]
      else
        # maxs << [row.max, id]
      end
    end

    maxs.each_with_index do |max, id|
        mins << [columns[max[1]].min, id]
    end
    mins.each do |min|
      maxs.each do |max|
        begin
          selles_pts << [max[1], min[1]] if (@matrix[min[1]][max[1]] == min[0] && min[0] == max[0])
        rescue => exception
        end
      end
    end
    return selles_pts
  end
end