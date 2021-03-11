class UserMailer < ApplicationMailer

        default from: 'kittiesshop@yopmail.com'
       
        def welcome_email(user)
          @user = user 
  
          @url = 'https://kittiesshop.herokuapp.com/users/sign_in' 
    
          mail(to: @user.email, subject: 'Bienvenue chez Kitties Shop !') 
        end
        
        def order_email(user)
          @user = User.find(user)

          @url = 'https://kittiesshop.herokuapp.com'

          mail(to: @user.email, subject: 'Commande chez Kitties Shop') 
        end

end
