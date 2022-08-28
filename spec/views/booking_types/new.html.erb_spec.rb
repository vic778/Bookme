require 'rails_helper'

RSpec.describe 'booking_types/new', type: :view do
  before(:each) do
    assign(:booking_type, BookingType.new(
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

  it 'renders new booking_type form' do
    render

    assert_select 'form[action=?][method=?]', booking_types_path, 'post' do
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
