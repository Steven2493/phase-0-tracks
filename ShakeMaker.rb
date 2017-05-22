#Shake Maker

require 'sqlite3'

db = SQLite3::Database.new("Shake.db")

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
#db.execute(create_shakemeal_table)
db.execute(fruits_list)
db.execute(veggies_list)
db.execute(protien_flav)
db.execute(more_meals)

#create_menu 
def create_food(db,fruit,veggie,protein)
	db.execute("INSERT INTO more_meals(fruits_id,veggies_id,protien_id) VALUES (?, ?,?)"  , [fruit,veggie,protein])
end

def create_fruit_list(db, fruits)
  db.execute("INSERT INTO fruits_list (fruits) VALUES (?)", [fruits])
end

def create_veggies_list(db, veggies)
  db.execute("INSERT INTO veggies_list (veggies) VALUES (?)", [veggies])
end

def create_protein_list(db, protien_flav)
  db.execute("INSERT INTO protien_list (protien_flav) VALUES (?)", [protien_flav])
end



#Creates Fruits list
create_fruit_list(db,"Apple")
create_fruit_list(db,"Banana")
create_fruit_list(db,"Strawberry")

#Creates Veggie list
create_veggies_list(db, "Kale")
create_veggies_list(db, "Spinach")
create_veggies_list(db, "Carrots")

#Creates Portein list
create_protein_list(db, "Chocolate")
create_protein_list(db, "Vanilla")
create_protein_list(db, "Unflavored")

create_food(db,2,1,2)