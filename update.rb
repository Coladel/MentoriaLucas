require './connectbd'

def update_choice_post(value, message_id)
  connect_bd_and_exec("UPDATE posts SET post = '#{value}' WHERE id = '#{message_id}'")
end
