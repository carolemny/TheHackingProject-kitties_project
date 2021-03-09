class UserMailer < ApplicationMailer
        default from: 'kittiesshop@yopmail.com'
       
        def welcome_email(user)
          @user = user 
      
          @url = 'https://kittiesshop.herokuapp.com/' 
    
          mail(to: @user.email, subject: 'Bienvenue chez Kitties Shop !') 
        end
end
