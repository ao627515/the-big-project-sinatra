require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    file_path = File.expand_path('../db/gossip.csv', __dir__)
    CSV.open(file_path, 'ab') do |csv|
      csv << [@author, @content]
    end
    puts "Le gossip a été sauvegardés dans #{file_path}"
  end

  def self.all
    all_gossips = []
    CSV.read('./db/gossip.csv').each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    all_gossips
  end

  def self.find(id)
    all[id.to_i]
  end

  def update(author, content)
    file_path = File.expand_path('../db/gossip.csv', __dir__)
    gossips = CSV.read(file_path)
    gossips[@id.to_i] = [author, content]
    CSV.open(file_path, 'w') do |csv|
      gossips.each { |row| csv << row }
    end
  end
end
