Technical-interview
===================

Solutions for technical interview questions at Planning Center Online. Topics discussed are jQuery, Rails w/ SQL, and Ruby classes

Question 1.
-----------
- Updated Method since JQuery 1.7
- Replaced die() and live() methods with new off() and on().
 - http://api.jquery.com/die/
- Added event.preventDefault() to stop default action from clicking element

Question 2.
-----------
- Added has_many to complete table association
- Also added inverse_of option to keep models in sync. 
 - (http://guides.rubyonrails.org/association_basics.html)
- Removed posibility of SQL injection by removing the argument from
the conditions string. (It was previously unescaped and would be sent to the database as is.)
 - (http://guides.rubyonrails.org/security.html#sql-injection)
- Replaced the ".each" method with ".find_each".
 - The ".each" method becomes more impractical as the table size increases, as it could return the entire table in a single pass.
 - The ".find_each" method divides records into memory-friendly batches for processing, until all records are processed.
 - (http://guides.rubyonrails.org/active_record_querying.html)

Question 3.
-----------
Here are the highlights! (See comments in code for full explanation)
- Used regex for Test::Unit asset_match and assert_no_match
 - http://stackoverflow.com/questions/3426413/create-a-case-insensitive-regular-expression-from-a-string-in-ruby
- Test::Unit Assertion docs. Surprisingly simple. 
 - http://ruby-doc.org/stdlib-2.0/libdoc/test/unit/rdoc/Test/Unit/Assertions.html
- Had to include path to .rb files in parent directory with "-I dir" to get tests to run
 - http://www.tutorialspoint.com/ruby/ruby_command_line_options.htm
- Gave me some clues on custom comparable methods
 - http://andreacfm.com/2011/07/27/make-your-ruby-classes-comparable-and-enumerable/
- Method help, link to enumerable module 
 - http://ruby-doc.org/core-2.0/Array.html
- Showed me destructive sort! (which was what I wanted)
 - https://ariejan.net/2007/01/28/ruby-sort-an-array-of-objects-by-an-attribute
