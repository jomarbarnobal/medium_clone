module UsersHelper
  def user_avatar(user, options = { size: 80 } )
    size = options[:size]
    if user.avatar?
      image_tag user.avatar_url(:thumb), width: size
    else
      image_tag "default-avatar.png", width: size
    end
  end

  def user_name?
    if current_user.username
        current_user.username
      else
        current_user.email
    end
  end

end
