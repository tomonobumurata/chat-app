module SignInSupport
  def sign_in(user)
    # トップページに遷移する
    visit root_path
    # すでに保存されているユーザーのemailとpasswordを入力する
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    # ログインボタンをクリックする
    click_on ('Log in')
    # トップページに遷移していることを確認する
    expect(current_path).to eq(root_path)
  end
end