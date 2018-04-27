class Check256 < Formula
  desc "calculate sha256 hash of given version of given repository on github for homebrew"
  homepage "https://github.com/Cj-bc/check256.git"
  head "https://github.com/Cj-bc/check256.git"
  url "https://github.com.H/Cj-bc/check256˜/archive/v0.1.1.tar.gz"

  def install
    system "mv", "check256.sh", "check256"
    bin.install "check256"
  end

  test do
    system "check256", "Cj-bc/check256", "v0.1.1"
  end
end
