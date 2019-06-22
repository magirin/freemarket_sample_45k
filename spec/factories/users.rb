FactoryBot.define do

    factory :user do
        nickname              {"まぎじぐ"}
        email                 {"kkk@gmail.com"}
        password              {"000000"}
        password_confirmation {"000000"}
        kanji_name            {"山田太郎"}
        kana_name             {"ヤマダタロウ"}
    end
end