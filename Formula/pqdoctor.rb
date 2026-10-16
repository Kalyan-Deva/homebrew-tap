class Pqdoctor < Formula
  desc "Why isn't this server post-quantum? Handshake-only TLS probes, the cause and the fix"
  homepage "https://pqdoctor.com"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://pqdoctor.com/downloads/v0.2.1/pqdoctor-0.2.1-macos-universal.tar.gz"
    sha256 "52fb423de0e387e460519b64867a8dbb9f493dab5b401befaa7e98fbae94cdf8"
  end

  on_linux do
    on_intel do
      url "https://pqdoctor.com/downloads/v0.2.1/pqdoctor-0.2.1-linux-x64.tar.gz"
      sha256 "6be9049979c1d6377d6b3c49f1cbf3c280b6cec7b760ea998257139d74c4e727"
    end
    on_arm do
      url "https://pqdoctor.com/downloads/v0.2.1/pqdoctor-0.2.1-linux-arm64.tar.gz"
      sha256 "3ded3bcfd31b6e698e0800abe1c1a7d1e2ccfb7dc6b2e44c40d1970ec077d8ac"
    end
  end

  def install
    bin.install "pqdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pqdoctor --version")
  end
end
