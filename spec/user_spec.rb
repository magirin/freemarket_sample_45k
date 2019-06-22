require 'rails_helper'

describe User do
  describe '#create' do

    it "is valid with a nickname, email, password, password_confirmation, kanji_name, kana_name" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "password and password_confirmation is same value" do
      user = create(:user)
      expect(user.password).to eq user.password_confirmation
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end


    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end


    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without a password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("can't be blank")
    end

    it "is invalid without a kanji_name" do
      user = build(:user, kanji_name: "")
      user.valid?
      expect(user.errors[:kanji_name]).to include("can't be blank")
    end

    it "is invalid without a kana_name" do
      user = build(:user, kana_name: "")
      user.valid?
      expect(user.errors[:kana_name]).to include("can't be blank")
    end

    it "using not katakana in kana_name" do
      user = build(:user, kana_name: "ひらがな")
      user.valid?
      expect(user.errors[:kana_name]).to include("全角カタカナのみで入力して下さい")
    end

  end

end