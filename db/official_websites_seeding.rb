
require 'csv'

def seed_official_websites
  csv_file_path = '#{RAILS_ROOT}/db/data/official_websites.csv'
  puts "Seeding official sites from #{csv_file_path}..."
  
  csv_text = File.read(Rails.root.join('db', 'data', 'official_websites.csv'))
  csv = CSV.parse(csv_text, headers: true)
  
  csv.each do |row|
    b = Brand.find_or_create_by(name: row[0], url: row['official site'])
    b.save!
    puts "#{b.url} saved"
  end

  puts "Seeding official sites from #{csv_file_path} done."
end