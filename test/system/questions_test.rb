require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  # test 'saying Hello yields a grumpy response from the coach' do
  #   visit home_url
  #   fill_in 'question', with: 'Hello'
  #   click_on 'Ask'

  #   assert_text "I don't care, get dressed and go to work!"
  # end

  # test 'saying Hello? yields a grumpy response from the coach' do
  #   visit home_url
  #   fill_in 'question', with: 'Hello?'
  #   click_on 'Ask'

  #   assert_text 'Silly question, get dressed and go to work!'
  # end

  test 'saying I am going to work yields a good response from the coach' do
    visit home_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask'

    assert_text 'Great!'
  end
end
