#Shake Maker

require 'sqlite3'

db = SQLite3::Database.new("Shake.db")

#Create Shake table
create_shakemeal_table = <<-SQL
	CREATE TABLE IF NOT EXISTS Shake(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		fruit BOOLEAN,
		veggie BOOLEAN,
		mixed BOOLEAN
)
SQL

fruits_list = <<-SQL
	CREATE TABLE IF NOT EXISTS fruits_list(
	id INTEGER PRIMARY KEY,
	fruits VARCHAR(255)
)
SQL

veggies_list = <<-SQL
	CREATE TABLE IF NOT EXISTS veggies_list(
	id INTEGER PRIMARY KEY,
	veggies VARCHAR(255)
)
SQL

protien_flav = <<-SQL
	CREATE TABLE IF NOT EXISTS protien_list(
	id INTEGER PRIMARY KEY,
	protien_flav VARCHAR(255)
)
SQL

more_meals = <<-SQL
	CREATE TABLE IF NOT EXISTS more_meals(
	id INTEGER PRIMARY KEY,
	fruits_id INT,
	veggies_id INT,
	protien_id INT,
	FOREIGN KEY(fruits_id) REFERENCES fruits_list(id),
  	FOREIGN KEY(veggies_id) REFERENCES veggies_list(id),
  	FOREIGN KEY(protien_id) REFERENCES protien_flav(id)
)
SQL

#creates table
db.execute(create_shakemeal_table)
db.execute(fruits_list)
db.execute(veggies_list)
db.execute(protien_flav)
db.execute(more_meals)

#create_menu 
def create_food(db,name, fruit,veggie,mixed)
	db.execute("INSERT INTO Shake(name, fruit,veggie,mixed) VALUES (?, ?, ?, ?)"  , [name, fruit,veggie,mixed])
end


create_food(db,"BananaStrawberry","true","false","false")