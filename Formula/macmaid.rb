class Macmaid < Formula
  version "0.9.26"
  sha256 "1cd982de1974c0c954eef2297e2a6066f07bc65a25dadf9c2a315bc6134fe6c2"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.26/MacMaid-v0.9.26-arm64-cli.tar.gz"
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
