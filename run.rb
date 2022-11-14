# frozen_string_literal: true

require_relative 'part1'
require_relative 'part2'

printf 'Select part (1..2): '
sel = gets
sel = sel.match?(/^[1-2]$/) ? Integer(sel) : 0
case sel
when 1
  printf 'Input name with path to file source (example: file.txt): '
  path_s = gets.chomp
  text = []
  puts 'Input text, for end print ^z'
  loop do
    temp = gets.chomp
    text << temp.tr('\^z', '')
    break if temp.include?('^z')
  end
  puts FirstPart.generate_file(text.join('\n'), path_s)
  printf 'Input name with path to file for copy (example: NewFile.txt): '
  puts FirstPart.copy_file(gets.chomp, path_s)
  puts FirstPart.show_file('NewFile.txt')
when 2
  puts 'Input a number for triangle coordinates'
  vals = []
  6.times do
    vals << gets.chomp.to_f
  end
  tr = Triangle.new(vals)
  puts tr.square
else
  p 'Bad input, exit...'
end
