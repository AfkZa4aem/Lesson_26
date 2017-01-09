require 'sqlite3'

db = SQLite3::Database.new 'barbershop.db'
# applying hash output
db.results_as_hash = true

db.execute 'select * from Users' do |row|
	# calling results like hash
	puts "#{row['username']} signed #{row['datestamp']}"
	puts '======='
end
