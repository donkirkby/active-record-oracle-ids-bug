require 'active_record'

class Professor < ActiveRecord::Base
    self.table_name = :professors
    self.primary_key = 'id'
end

puts "Hello, World!"

ActiveRecord::Base.establish_connection(
    adapter: 'oracle_enhanced',
    database: 'FREEPDB1',
    username: 'dev',
    password: 'dev')

p_count = Professor.count
puts "Found #{p_count} professors."

name = 'Doc Brown'
professor = Professor.find_by_name(name)
if ! professor.nil?
    puts "Found professor #{professor.name} with id #{professor.id.inspect}."
    professor.destroy!
    puts "Deleted #{professor.name}."
end

professor = Professor.create!(name: name, age: 61)

puts "Created professor #{professor.name} with id #{professor.id.inspect}."
