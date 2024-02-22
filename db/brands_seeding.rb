
require 'csv'

def seed_brands
  csv_file_path = Rails.root.join('db', 'data', 'brands.csv')
  puts "Seeding brands from #{csv_file_path}..."
  
  csv_text = File.read(Rails.root.join('db', 'data', 'brands.csv'))
  csv = CSV.parse(csv_text, headers: true)
  
  csv.each do |row|
    b = Brand.create(name: row[0], url: row['official site'])
    b.vegan = true if row['certifications']&.include?("100% Vegan")
    b.organic = true if row['certifications']&.include?("Organic")
    b.leaping_bunny = true if row['certifications']&.include?("Leaping Bunny")
    b.peta = true if row['certifications']&.include?("PETA")
    b.clean_beauty = true if row['certifications']&.include?("Clean Beauty")
    b.choose_cruelty_free = true if row['certifications']&.include?("Choose Cruelty-free")
    b.save!
    puts "#{b.name} saved"
  end

  puts "Seeding brands from #{csv_file_path} done."
end
