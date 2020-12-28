require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  context '投稿がうまくいくとき' do

    it '必要な情報が記載されていれば登録ができる' do
      expect(@post).to be_valid
    end

    it '撮影日が空でも登録ができる' do
      @post.day = nil
      expect(@post).to be_valid
    end

    it '町名が空でも登録ができる' do
      @post.town = nil
      expect(@post).to be_valid
    end

    it '番地が空でも登録ができる' do
      @post.number = nil
      expect(@post).to be_valid
    end

    it '建物名が空でも登録ができる' do
      @post.building = nil
      expect(@post).to be_valid
    end

  end

  context '投稿がうまくいかないとき' do

    it '投稿画像がないと保存できない' do
      @post.image = nil
      @post.valid?
      expect(@post.errors.full_messages).to include("Image can't be blank")
    end

    it '投稿のタイトルがないと保存できない' do
      @post.title= nil
      @post.valid?
      expect(@post.errors.full_messages).to include("Title can't be blank")
    end

    it '投稿の詳細がないと保存できない' do
      @post.about= nil
      @post.valid?
      expect(@post.errors.full_messages).to include("About can't be blank")
    end

  end
  
end
