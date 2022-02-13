require './stock_picker.rb'

RSpec.describe 'Stock Picker' do
  describe 'picks best time to but and sell from array' do
    
    it 'baseline list' do
      best_days = stock_picker([14,3,6,9,15,8,6,1,10])
      result = [1, 4]
      expect(best_days).to eq(result)
    end

    it 'highest day first' do
      best_days = stock_picker([17,3,6,9,15,8,6,1,10])
      result = [1, 4]
      expect(best_days).to eq(result)
    end

    it 'lowest day last' do
      best_days = stock_picker([17,3,6,9,15,8,6,12,1])
      result = [1, 4]
      expect(best_days).to eq(result)
    end

    it 'repeating numbers' do
      best_days = stock_picker([34, 19, 5, 5, 23, 65, 76, 23, 76, 12, 35])
      result = [2, 6]
      expect(best_days).to eq(result)
    end
  end
end