require 'rails_helper'

RSpec.describe 'bookings/new', type: :view do
  before(:each) do
    assign(:booking, Booking.new(
                       status: 1,
                       first_name: 'MyString',
                       last_name: 'MyString',
                       email: 'MyString'
                     ))
  end

  it 'renders new booking form' do
    render

    assert_select 'form[action=?][method=?]', bookings_path, 'post' do
      assert_select 'input[name=?]', 'booking[status]'

      assert_select 'input[name=?]', 'booking[first_name]'

      assert_select 'input[name=?]', 'booking[last_name]'

      assert_select 'input[name=?]', 'booking[email]'
    end
  end
end
