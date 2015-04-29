class AnswersController < ApplicationController
def first
 @sub = Topic.getUserQuestions
 # @sub1 = Question.getTopics1
 # @sub2 = Question.getTopicName
 end
def second
 @sub =  Topic.getUserQuestions
 @sub1 = Topic.getUserQuestions1
# @sub2 = Topic.getUserQuestions2
# @sub3 = Topic.getUserQuestions3
 end
def third
 @sub =  Topic.getUserQuestions
 @sub1 = Topic.getUserQuestions1
 @sub2 = Topic.correctAnswers
# @sub3 = Topic.getUserQuestions3
 end

end
