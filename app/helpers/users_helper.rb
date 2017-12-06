module UsersHelper
  def user_avatar(user, options = { size: 80 } )
    size = options[:size]
    if user.avatar?
      image_tag user.avatar_url(:thumb), widht: size
    else
      image_tag "default-avatar.png", width: size
    end
  end
end
