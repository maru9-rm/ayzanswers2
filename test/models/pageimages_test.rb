require 'test_helper'

class PageimagesTest < ActiveSupport::TestCase
  test 'sorts titles by their numeric portions' do
    titles = ['10', '2', '1', 'p11', 'p3']

    sorted_titles = titles.sort_by { |title| Pageimage.natural_title_key(title) }

    assert_equal ['1', '2', '10', 'p3', 'p11'], sorted_titles
  end
end
