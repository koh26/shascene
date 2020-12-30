require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @post = FactoryBot.create(:post)
    @comment = FactoryBot.create(:comment, user_id: @user.id, post_id: @post.id)
  end

  describe 'コメント投稿' do

    context 'コメントがうまくいくとき' do

      it 'コメントが入力されていれば投稿できる' do
        expect(@comment).to be_valid
      end
      
    end

    context 'コメントがうまくいかないとき' do

      it 'コメントが入力されていないと投稿できない' do
        @comment.text = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
      
    end
  
  end

end