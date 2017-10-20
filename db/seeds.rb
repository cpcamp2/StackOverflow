User.create [{ :username => 'chris ', :email => 'bsloan@umich.edu', :password => 'chris'},
             { :username => 'penn', :email => 'david@david.com', :password => 'penn'},
             { :username => 'jesus', :email => 'jon@jon.com', :password => 'tony'},
             { :username =>'smith', :email => 'mike@mike.com', :password => 'john'}]


Question.create [{ :title => 'What is CSS?', :content => 'You can style some shit', :user_id => 1},
                 { :title => 'JavaScript or Ruby?', :content => 'You can build some shit', :user_id => 2},
                 { :title => 'What is an HTTP request?', :content => 'You can get or post some shit', :user_id => 3},
                 { :title => 'How do you make a JavaScript object?', :content => 'Just make it', :user_id => 1}]

# Answer.create [{ :answer_text => 'CSS: cascading style sheets.', :user_id => 1, :question_id => 1},
#                { :answer_text => 'JavaScript', :user_id => 2, :question_id => 2},
#                { :answer_text => 'HTTP: hypertext transfer protocol', :user_id => 3, :question_id => 3},
#                { :answer_text => 'Constructor or object literal function', :user_id => 1, :question_id => 4}]

# Comment.create [{ :comment_text => 'Comment1', :user_id => 1, :commentable_id => 1, :commentable_type => "Answer"},
#                 { :comment_text => 'Comment2', :user_id => 2, :commentable_id => 2, :commentable_type => "Question"},
#                 { :comment_text => 'Comment3', :user_id => 3, :commentable_id => 3, :commentable_type => "Answer"},
#                 { :comment_text => 'Comment4', :user_id => 1, :commentable_id => 4, :commentable_type => "Question"},
#                 { :comment_text => 'Comment5', :user_id => 1, :commentable_id => 1, :commentable_type => "Answer"},
#                 { :comment_text => 'Comment6', :user_id => 2, :commentable_id => 2, :commentable_type => "Question"},
#                 { :comment_text => 'Comment7', :user_id => 3, :commentable_id => 3, :commentable_type => "Answer"},
#                 { :comment_text => 'Comment8', :user_id => 1, :commentable_id => 4, :commentable_type => "Question"}]

#   Vote.create [{ :vote => 1, :votable_type => "Question", :votable_id => 1, :user_id => 1},
#               { :vote => 1, :votable_type => "Answer", :votable_id => 2, :user_id => 2},
#               { :vote => 1, :votable_type => "Question", :votable_id => 3, :user_id => 3},
#               { :vote => 1, :votable_type => "Answer", :votable_id => 4, :user_id => 4},
#               {:vote => 1, :votable_type => "Question", :votable_id => 5, :user_id => 5},
#               {:vote => 1, :votable_type => "Question", :votable_id => 6, :user_id => 6},
#               {:vote => 1, :votable_type => "Answer", :votable_id => 7, :user_id => 7},
#               {:vote => 1, :votable_type => "Answer", :votable_id => 8, :user_id => 8}]
