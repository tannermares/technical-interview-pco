# Added has_many to complete table association
# Also added inverse_of option to keep models in sync.
# (http://guides.rubyonrails.org/association_basics.html) 
class Organization < ActiveRecord::Base
  has_many :persons, :inverse_of => :organization
end

class Person < ActiveRecord::Base
  belongs_to :organization, :inverse_of => :persons

  def name
    first_name + " " + last_name
  end
end
# Removed posibility of SQL injection by removing the argument from
# the conditions string. It was previously unescaped and would be sent 
# to the database as is. (http://guides.rubyonrails.org/security.html#sql-injection)
#
# Replaced the ".each" method with ".find_each". The ".each" method becomes more impractical 
# as the table size increases, as it could return the entire table in a single pass.
# The ".find_each" method divides records into memory-friendly batches for processing, until
# all records are processed. (http://guides.rubyonrails.org/active_record_querying.html)
Person.where("name = ?", params[:id]).find_each do |p|
  puts "#{p.name}: #{p.organization.name}"
end
