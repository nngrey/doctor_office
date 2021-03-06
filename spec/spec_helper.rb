require 'rspec'
require 'doctor'
require 'pg'
require 'specialty'
require 'patient'
require 'insurance'

DB = PG.connect({:dbname => 'doctor_office_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM doctors *;")
    DB.exec("DELETE FROM patients *;")
  end
end
