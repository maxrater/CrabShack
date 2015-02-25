class User < ActiveRecord::Base

  def say_hi
    "hello #{name}"
  end

  def say_goodbye(user)
    "#{name} Says Goodbye to #{user.name}"  
  end

end
