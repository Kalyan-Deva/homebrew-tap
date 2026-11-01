class Pqdoctor < Formula
  desc "Why isn't this server post-quantum? Handshake-only TLS probes, the cause and the fix"
  homepage "https://pqdoctor.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    url "https://pqdoctor.com/downloads/v0.4.0/pqdoctor-0.4.0-macos-universal.tar.gz"
    sha256 "548efe1df8874e3d424141d5c893afefe6cd6a0206bccf0e701076c3834e9ceb"
  end

  on_linux do
    on_intel do
      url "https://pqdoctor.com/downloads/v0.4.0/pqdoctor-0.4.0-linux-x64.tar.gz"
      sha256 "f2b7e7d162efb52162ccb2bf3b6c0ef2d1a8acf8f341442ca68a7aa840ce8847"
    end
    on_arm do
      url "https://pqdoctor.com/downloads/v0.4.0/pqdoctor-0.4.0-linux-arm64.tar.gz"
      sha256 "e0aa5893bd56284be6a81684c4fe724f87de3d0aaf572378e76febd1e390677a"
    end
  end

  def install
    bin.install "pqdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pqdoctor --version")
  end
end
