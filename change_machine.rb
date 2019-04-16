require 'rspec'

class ChangeMachine
  def change(cents)
    purse = []
    coins = [25,10,5,1]
    coins.each do |coin|
      while cents >= coin
        purse << coin
        cents -= coin
      end
    end
    return purse
  end
end
#     while cents >= 25
#       purse << 25
#       cents -= 25
#     end
#     while cents >= 10
#       purse << 10
#       cents -= 10
#     end
#     while cents >= 5
#       purse << 5
#       cents -= 5
#     end
#     while cents > 0
#       purse << 1
#       cents -= 1
#     end
#     return purse
#   end
# end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      change_machine = ChangeMachine.new
      result = change_machine.change(1)
      expect(result).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      change_machine = ChangeMachine.new
      result = change_machine.change(2)
      expect(result).to eq([1, 1])
    end
    it 'should return [1, 1, 1] when given 3' do
      change_machine = ChangeMachine.new
      result = change_machine.change(3)
      expect(result).to eq([1, 1, 1])
    end
    it 'should return [5] when given 5' do
      change_machine = ChangeMachine.new
      result = change_machine.change(5)
      expect(result).to eq([5])
    end 
    it 'should return [5, 1, 1] when given 5' do
      change_machine = ChangeMachine.new
      result = change_machine.change(7)
      expect(result).to eq([5, 1, 1])
    end
    it 'should return [10] when given 10' do
      change_machine = ChangeMachine.new
      result = change_machine.change(10)
      expect(result).to eq([10])
    end
    it 'should return [10, 5, 1, 1, 1] when given 18' do
      change_machine = ChangeMachine.new
      result = change_machine.change(18)
      expect(result).to eq([10, 5, 1, 1, 1])
    end
    it 'should return [25] when given 25' do
      change_machine = ChangeMachine.new
      result = change_machine.change(25)
      expect(result).to eq([25])
    end
    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
      change_machine = ChangeMachine.new
      result = change_machine.change(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end