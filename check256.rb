class Check256 < Formula
  desc "calculate sha256 hash of given version of given repository on github for homebrew"
  homepage "https://github.com/Cj-bc/check256.git"
  head "https://github.com/Cj-bc/check256.git"
  url "https://github.com/Cj-bc/check256/archive/v0.1.1.tar.gz"
  sha256 "b0bc196dd0975b62745ab4e5778e93b426cdb548de6a8484bea100b2323bd910"

  depends_on "openssl"
  depends_on "wget"

  def install
    system "mv", "check256.sh", "check256"
    bin.install "check256"
  end

  test do
    system "check256", "Cj-bc/check256", "v0.1.1"
  end
end
