# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/rockdoves' do
  @NY_students = db.execute("SELECT * FROM students WHERE campus=?", ['NYC'])
  erb :rockdoves
end

get '/campuses/new' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :new_campus
end

post '/campuses' do
  db.execute("INSERT INTO campuses (name) VALUES (?)", [params['name']])
  redirect '/campuses/new'
end
# add static resources