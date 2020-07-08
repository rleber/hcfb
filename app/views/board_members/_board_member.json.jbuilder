json.extract! board_member, :id, :first, :middle, :last, :email, :work, :cell, :created_at, :updated_at
json.url board_member_url(board_member, format: :json)
