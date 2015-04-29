class Question < ActiveRecord::Base
# This Basically helps us get the required levels from the Questions Table
def self.getLevels1
           questions = Question.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(question_id) 'LEVEL' from user_answers, questions q
                       where q.id=question_id and q.question_level= #{t.id} "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
def self.getLevels
           questions = Question.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "Select count(*) 'LEVEL' from questions where question_level = #{t.id} "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end

def self.getTopicName
          topics = Topic.find(:all)

           results_array = Array.new
           

          topics.each do |t|
                
               sql = "Select name '#{t.id}' from topics where id = #{t.id} "
              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
# This allows us to get the number of question on different types of Topics

def self.getTopics
           topics = Topic.find(:all)

           results_array = Array.new
           

          topics.each do |t|
                
               sql = "Select count(*) '#{t.id}' from questions where question_topic = #{t.id} "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end

         return results_array
end
def self.getTopic1
           topics = Topic.find(:all)

           results_array = Array.new
           

          topics.each do |t|
                
               sql = "Select count(*) '#{t.id}' from user_answers, questions q where q.id=question_id and question_topic = #{t.id} "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end

         return results_array
end
def self.getTopics2
           questions = Topic.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(question_id) '#{t.id}' from user_answers, questions q
                       where q.id=question_id and q.question_topic= #{t.id} "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
# This allows us to get the number of questions on different types of Topics, under the key 'COUNT'

def self.getTopics1
           topics = Topic.find(:all)

           results_array = Array.new
           

          topics.each do |t|
                
               sql = "Select count(*) 'COUNT' from questions where question_topic = #{t.id} "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end

         return results_array
end
# Questions where level =1

def self.getDetails1
           topics = Topic.find(:all)

           results_array = Array.new
           

          topics.each do |t|
                
               sql = "Select count(*) '#{t.id}' from questions where question_topic = #{t.id} and question_level=1 "
              result =   ActiveRecord::Base.connection.select_all(sql)

              results_array << result 

         end

         return results_array
end

#Questions where level=2
def self.getDetails2
           topics = Topic.find(:all)

           results_array = Array.new
           

          topics.each do |t|
                
              sql = "Select count(*) '#{t.id}' from questions where question_topic = #{t.id} and question_level=2 "

              result =   ActiveRecord::Base.connection.select_all(sql)

              results_array << result 

         end

         return results_array
end
#Questions where level =3
def self.getDetails3
           topics = Topic.find(:all)

           results_array = Array.new
           

          topics.each do |t|
                
               sql = "Select count(*) '#{t.id}' from questions where question_topic = #{t.id} and question_level=3 "

              result =   ActiveRecord::Base.connection.select_all(sql)

              results_array << result 

         end

         return results_array
end
def self.getTopLevel1
           questions = Topic.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(question_id) '#{t.id}' from user_answers, questions q
                       where q.id=question_id and q.question_topic='#{t.id}'and q.question_level= 1 "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
def self.getTopLevel2
           questions = Topic.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(question_id) '#{t.id}' from user_answers, questions q
                       where q.id=question_id and q.question_topic='#{t.id}'and q.question_level= 2 "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
def self.getTopLevel3
           questions = Topic.find(:all)

           results_array = Array.new
           

          questions.each do |t|
                
               sql = "select distinct count(question_id) '#{t.id}' from user_answers, questions q
                       where q.id=question_id and q.question_topic='#{t.id}'and q.question_level= 3 "

              result =   ActiveRecord::Base.connection.select_all(sql)
               
              results_array << result

         end
          
         return results_array
end
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
end
