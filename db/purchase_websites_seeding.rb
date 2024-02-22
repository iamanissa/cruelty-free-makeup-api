
require 'csv'

def seed_official_websites
  csv_file_path = '#{RAILS_ROOT}/db/data/purchase_websites.csv'
  puts "Seeding purchase sites from #{csv_file_path}..."
  
  csv_text = File.read(Rails.root.join('db', 'data', 'purchase_websites.csv'))
  csv = CSV.parse(csv_text, headers: true)
  
  csv.each do |row|
    b = Brand.find_by(name: row[0])
    b.store = (...) 
    puts "#{b} stores have been saved"
  end

  puts "Seeding purchase sites from #{csv_file_path} done."
end
