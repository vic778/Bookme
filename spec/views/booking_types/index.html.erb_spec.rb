require 'rails_helper'

RSpec.describe 'booking_types/index', type: :view do
  before(:each) do
    assign(:booking_types, [
             BookingType.create!(
               name: 'Name',
               location: 'Location',
               description: nil,
               color: 'Color',
               duration: 2,
               payemnt_required: false,
               price: 3,
               user: nil
             ),
             BookingType.create!(
               name: 'Name',
               location: 'Location',
               description: nil,
               color: 'Color',
               duration: 2,
               payemnt_required: false,
               price: 3,
               user: nil
             )
           ])
  end

  it 'renders a list of booking_types' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Location'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'Color'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
