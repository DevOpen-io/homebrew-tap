class Macmaid < Formula
  version "0.9.30"
  sha256 "482edf3f38b5663b83eeb4080c552e10931fd950957d19cac2ac5477a54c46f3"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.30/MacMaid-0.9.30-arm64-cli.tar.gz"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  def install
    bin.install "macmaid"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/macmaid --version")
  end
end
