require 'rails_helper'

RSpec.describe 'booking_types/edit', type: :view do
  before(:each) do
    @booking_type = assign(:booking_type, BookingType.create!(
                                            name: 'MyString',
                                            location: 'MyString',
                                            description: nil,
                                            color: 'MyString',
                                            duration: 1,
                                            payemnt_required: false,
                                            price: 1,
                                            user: nil
                                          ))
  end

  it 'renders the edit booking_type form' do
    render

    assert_select 'form[action=?][method=?]', booking_type_path(@booking_type), 'post' do
      assert_select 'input[name=?]', 'booking_type[name]'

      assert_select 'input[name=?]', 'booking_type[location]'

      assert_select 'input[name=?]', 'booking_type[description]'

      assert_select 'input[name=?]', 'booking_type[color]'

      assert_select 'input[name=?]', 'booking_type[duration]'

      assert_select 'input[name=?]', 'booking_type[payemnt_required]'

      assert_select 'input[name=?]', 'booking_type[price]'

      assert_select 'input[name=?]', 'booking_type[user_id]'
    end
  end
end
