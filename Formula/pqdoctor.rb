class Pqdoctor < Formula
  desc "Why isn't this server post-quantum? Handshake-only TLS probes, the cause and the fix"
  homepage "https://pqdoctor.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://pqdoctor.com/downloads/v0.3.0/pqdoctor-0.3.0-macos-universal.tar.gz"
sha256 "a0d536c7055fcbf5b0721f46dc3f7a415f89b7782d4e4abd12dd53e81de815f3"
  end

  on_linux do
    on_intel do
      url "https://pqdoctor.com/downloads/v0.3.0/pqdoctor-0.3.0-linux-x64.tar.gz"
sha256 "c903eb1dba8f33b0630ba367716cdb1491cd98eae504ce510afbf2efbeeba66e"
    end
    on_arm do
      url "https://pqdoctor.com/downloads/v0.3.0/pqdoctor-0.3.0-linux-arm64.tar.gz"
sha256 "668d2b3382d262279d9b87febadea98ac31c78e3760a25c0d9c09574b72c3140"
    end
  end

  def install
    bin.install "pqdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pqdoctor --version")
  end
end
