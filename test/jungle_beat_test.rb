require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test
  def test_it_is_a_new_Jungle_Beat
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_it_is_a_new_list
    jb = JungleBeat.new
    assert_nil jb.list.head
  end

  def test_it_appends
    jb = JungleBeat.new
    jb.append("deep")
    assert_equal "deep", jb.list.head.data
  end

  def test_it_appends_multiple_items
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
  end

  def test_it_can_access_a_single_sound_from_a_list_added_at_once
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
  end

  def test_it_can_count_again
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_it_can_access_count_from_list
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.list.count
  end

  def test_it_makes_sweet_beats_baby
    #ummmm? how can you test if those beats are sweet? I mean isn't at least some of this subjective?
  end

end