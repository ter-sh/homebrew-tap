class HerdrFwd < Formula
  desc "Automatic loopback port forwarding for remote Herdr sessions"
  homepage "https://github.com/go-min/herdr-fwd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.5/herdr-fwd-macos-aarch64.tar.gz"
      sha256 "9978ff0589f576b475e24294d9b53624c05dd0139c431140eba1d10f26aebd05"
    else
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.5/herdr-fwd-macos-x86_64.tar.gz"
      sha256 "3f58a6bb5162b7a17e3232853851f53fe51f884bec6edf8b4f55cb8bfefb5b43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.5/herdr-fwd-linux-aarch64.tar.gz"
      sha256 "328c0e0cf4f4b56d104fdd334aa0dc096a2a0579ad624528e8df8cfa393e3a06"
    else
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.5/herdr-fwd-linux-x86_64.tar.gz"
      sha256 "1e5f0aeb1ea737e4f6af877ca074656c5a68f766e0fe741c25f74df36e2d159c"
    end
  end

  def install
    bin.install "hfwd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hfwd --version")
  end
end
