class Topic < ActiveRecord::Base
def self.getUserQuestions
           questions = Question.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(user_id) '#{t.id}' from user_answers where question_id='#{t.id}' "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
def self.getUserQuestions1
           questions = Question.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(user_id) '#{t.id}',q.question_level 'LEVEL' from user_answers, questions q where question_id='#{t.id}'
                      and q.id=question_id"

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
def self.correctAnswers
           questions = Question.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(user_id) '#{t.id}' from user_answers where question_id='#{t.id}' and credit_scored > 0 "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
end
