require 'rails_helper'

RSpec.describe 'bookings/edit', type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
                                  status: 1,
                                  first_name: 'MyString',
                                  last_name: 'MyString',
                                  email: 'MyString'
                                ))
  end

  it 'renders the edit booking form' do
    render

    assert_select 'form[action=?][method=?]', booking_path(@booking), 'post' do
      assert_select 'input[name=?]', 'booking[status]'

      assert_select 'input[name=?]', 'booking[first_name]'

      assert_select 'input[name=?]', 'booking[last_name]'

      assert_select 'input[name=?]', 'booking[email]'
    end
  end
end
