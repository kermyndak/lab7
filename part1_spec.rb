# frozen_string_literal: true

require_relative 'part1'

RSpec.describe FirstPart do
  describe '#Copy file' do
    it 'Give normal answer' do
      described_class.generate_file('random\ntext\nasdfghjkl\nqwert', 'file.txt')
      described_class.copy_file('NewFile.txt', 'file.txt')
      expect(described_class.show_file('NewFile.txt')).to eq(%w[modna x lkjhgfdsa wq])
      system('rm file.txt NewFile.txt')
    end

    it 'Give normal answer with invisible files' do
      described_class.generate_file('random\ntext\nasdfghjkl\nqwert', '.file.txt')
      described_class.copy_file('.NewFile.txt', '.file.txt')
      expect(described_class.show_file('.NewFile.txt')).to eq(%w[modna x lkjhgfdsa wq])
      system('rm .file.txt .NewFile.txt')
    end

    it 'Give path-error' do
      expect(described_class.generate_file('random\ntext\nasdfghjkl\nqwert', 'file')).to eq('File-Path-Error')
      expect(described_class.copy_file('NewFile', 'file')).to eq('File-Path-Error')
    end

    it 'Random test' do
      gen = proc { "#{(1..rand(1000)).map { ('a'..'z').to_a[rand(26)] }.join}\n" }
      text = (1..rand(500)).map { gen.call }.join.chomp
      described_class.generate_file(text, 'file.txt')
      described_class.copy_file('NewFile.txt', 'file.txt')
      expect(described_class.show_file('NewFile.txt')).to eq(text.split("\n").map { |i| i.gsub(/[eErtU]/, '').reverse })
    end
  end
end
