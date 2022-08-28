require 'rails_helper'

RSpec.describe 'bookings/show', type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
                                  status: 2,
                                  first_name: 'First Name',
                                  last_name: 'Last Name',
                                  email: 'Email'
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
  end
end
