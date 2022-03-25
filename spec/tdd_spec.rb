require_relative '../tdd'
describe Solver do
  solve = Solver.new
  word = 'Habil'
  word_two = 'Sadiq'
  word_three = 'Akanbi'
  num = 5
  num_two = -3
  num_three = 0
  context 'Test the reverse String method in Solver Class' do
    it 'should return the reverse of the word' do
      reversed = solve.reverse(word)
      expect(reversed).to eq('libaH')
    end
    it 'should return the reverse of the word' do
      reversed = solve.reverse(word_two)
      expect(reversed).to eq('qidaS')
    end
    it 'should return the reverse of the word' do
      reversed = solve.reverse(word_three)
      expect(reversed).to eq('ibnakA')
    end
  end
  context 'Test the factorial method in Solver Class' do
    it 'should return the factorial of a given positive number' do
      factorial = solve.factorial(num)
      expect(factorial).to eq(120)
    end
    it 'should return an error if the given number is negative' do
      expect { solve.factorial(num_two) }.to raise_error('Number is less than 0')
    end
    it 'should return 1 when the given number is 0' do
      factorial_zero = solve.factorial(num_three)
      expect(factorial_zero).to eq(1)
    end
  end
end
