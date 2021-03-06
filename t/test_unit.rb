require_relative '../lib/alreadycracked.rb'
require 'test/unit'

class TestAlreadyCracked < Test::Unit::TestCase
  def setup
    @plain = 'helloworld'
    @hash_md5 = 'fc5e038d38a57032085441e7fe7010b0'
    @hash_sha1 = '6adfb183a4a2c94a2f92dab5ade762a47889a5a1'
    @hash_sha256 = '936a185caaa266bb9cbe981e9e05cb78cd732b0b3280eb944412bb6f8f8f07af'
  end

  def test_compute_digest
    assert_equal(@hash_md5, AlreadyCracked.new.compute_digest('md5', @plain), 'MD5 digest failed')
    assert_equal(@hash_sha1, AlreadyCracked.new.compute_digest('sha1', @plain), 'SHA1 digest failed')
    assert_equal(@hash_sha256, AlreadyCracked.new.compute_digest('sha256', @plain), 'SHA256 digest failed')
  end

  def test_detect_digest
    assert_equal('md5', AlreadyCracked.new.detect_digest(@hash_md5), 'MD5 digest detection failed')
    assert_equal('sha1', AlreadyCracked.new.detect_digest(@hash_sha1), 'SHA1 digest detection failed')
    assert_equal('sha256', AlreadyCracked.new.detect_digest(@hash_sha256), 'SHA256 digest detection failed')
  end

  def test_get_plain
    assert_equal(@plain, AlreadyCracked.new.get_plain(@hash_md5), 'Getting plain text failed')
  end

  def test_list_hash_types
    assert_equal(['md5', 'sha1', 'sha256'], AlreadyCracked.new.get_hash_types, 'Getting hash types failed')
  end
end
