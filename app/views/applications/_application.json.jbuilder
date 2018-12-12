json.extract! application, :id, :name, :dob, :country, :email, :homeaddress, :gender, :arrival_date, :destination, :passport_number, :passport_issued, :passport_expire, :price, :created_at, :updated_at
json.url application_url(application, format: :json)
