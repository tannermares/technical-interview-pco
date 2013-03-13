class Organization < ActiveRecord::Base
end

class Person < ActiveRecord::Base
  belongs_to :organization

  def name
    first_name + " " + last_name
  end
end

Person.where("name = '#{params[:id]}'").each do |p|
  puts "#{p.name}: #{p.organization.name}"
end