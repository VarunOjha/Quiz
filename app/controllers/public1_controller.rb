class Public1Controller < ApplicationController
def level
 @sub = Question.getLevels1
 end
def topic
 @sub = Question.getTopics2
 @sub1 = Question.getTopics1
 @sub2 = Question.getTopicName
 end
def t_l
 @hash1=Question.getTopLevel1
 @hash2=Question.getTopLevel2
 @hash3=Question.getTopLevel3
 @sub2 = Question.getTopicName
 end
 def top_least
 @sub = Question.getTopic1
 @sub2 = Question.getTopicName
  end
def eval
 @hash1=Question.getTopLevel1
 @hash2=Question.getTopLevel2
 @hash3=Question.getTopLevel3
 @sub2 = Question.getTopicName
 end
end
