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
    file_path = File.expand_path('../db/gossip.csv', __dir__)
    CSV.foreach(file_path, headers: true) do |ligne|
      gossip_provisoire = Gossip.new(ligne['author'], ligne['content'])
      all_gossips << gossip_provisoire
    end
    all_gossips
  end
end
