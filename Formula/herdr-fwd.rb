class HerdrFwd < Formula
  desc "Automatic loopback port forwarding for remote Herdr sessions"
  homepage "https://github.com/go-min/herdr-fwd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.4/herdr-fwd-macos-aarch64.tar.gz"
      sha256 "355175568d5ef0346413a256f4a1bd2d3f9e79d76f6341e06cdae8b55ac4fd54"
    else
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.4/herdr-fwd-macos-x86_64.tar.gz"
      sha256 "02c0687555892ef8344b4f57a3fd0e432140578e05a8d1531a3c285f3142bcc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.4/herdr-fwd-linux-aarch64.tar.gz"
      sha256 "a0916ba40727c4fd425907f2653fac4d1c06e06809ec7cbb465b90a05ddaf7dd"
    else
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.4/herdr-fwd-linux-x86_64.tar.gz"
      sha256 "56a5b6a9324647f8855131e4ddd5a99b1e29999bc3e5453088923d9b15d1570a"
    end
  end

  def install
    bin.install "hfwd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hfwd --version")
  end
end
