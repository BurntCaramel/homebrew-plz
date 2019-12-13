class Plz < Formula
  desc "CLI for common developer queries"
  homepage "https://github.com/RoyalIcing/plz"
  url "https://github.com/RoyalIcing/plz/archive/0.1.tar.gz"
  sha256 "7b7d7fd65050cd099f861bee62e9cd57bc115f56eba0cf75b1b31963d77dabb4"

  depends_on "go" => :build

  def install
    system "gobuild.sh"
    bin.install ".gobuild/bin/plz" => "plz"
  end

  test do
    system "#{bin}/plz", "--help"
  end
end
