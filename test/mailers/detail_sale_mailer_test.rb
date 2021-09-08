require 'test_helper'

class DetailSaleMailerTest < ActionMailer::TestCase
  test "notify_ended" do
    mail = DetailSaleMailer.notify_ended
    assert_equal "Notify ended", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
