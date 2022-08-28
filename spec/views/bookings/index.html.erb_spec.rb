require 'rails_helper'

RSpec.describe 'bookings/index', type: :view do
  before(:each) do
    assign(:bookings, [
             Booking.create!(
               status: 2,
               first_name: 'First Name',
               last_name: 'Last Name',
               email: 'Email'
             ),
             Booking.create!(
               status: 2,
               first_name: 'First Name',
               last_name: 'Last Name',
               email: 'Email'
             )
           ])
  end

  it 'renders a list of bookings' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'First Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Last Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Email'.to_s, count: 2
  end
end
