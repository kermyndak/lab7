# frozen_string_literal: true

require_relative 'part2'

RSpec.describe Prizma do
  describe '#Class for calculating the area of a prism' do
    prizma = Prizma.new([12, 34, 56, 67, 78, 89], 50)
    triangle = Triangle.new([12, 34, 56, 67, 78, 89])
    it 'Give normal results' do
      expect(prizma.square).to eq(8843.272240359061)
      expect(triangle.square).to eq(120.99999999999787)
    end

    it 'Check classes' do
      expect(prizma.class.superclass).to eq(Triangle)
    end
  end
end
