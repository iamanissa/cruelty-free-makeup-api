
require 'csv'

def seed_brands
  csv_file_path = '#{RAILS_ROOT}/db/data/brands.csv'
  puts "Seeding brands from #{csv_file_path}..."
  
  csv_text = File.read(Rails.root.join('db', 'data', 'brands.csv'))
  csv = CSV.parse(csv_text, headers: true, encoding:'ISO-8859-1')
  
  csv.each do |row|
    b = Brand.new
    b.name = row['name']
    b.save
    puts "#{b.name} saved"
  end

  puts "Seeding brands from #{csv_file_path} done."
end