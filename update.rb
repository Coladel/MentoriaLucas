
require 'pg'

def update_choice_post(value, message_id)
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("UPDATE posts SET post = '#{value}' WHERE id = '#{message_id}'")

res.clear
conn.close
end

def update_last_post(value)
conn = PGconn.connect('localhost', 5432, nil, nil, 'posts', 'postgres', 'mude6363')
res = conn.exec("UPDATE posts SET post = '#{value}' where id = (select max(id) from posts)")

res.clear
conn.close
end
