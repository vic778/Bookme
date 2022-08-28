require 'rails_helper'

RSpec.describe 'booking_types/show', type: :view do
  before(:each) do
    @booking_type = assign(:booking_type, BookingType.create!(
                                            name: 'Name',
                                            location: 'Location',
                                            description: nil,
                                            color: 'Color',
                                            duration: 2,
                                            payemnt_required: false,
                                            price: 3,
                                            user: nil
                                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
