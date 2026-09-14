class Macmaid < Formula
  version "0.9.22"
  sha256 "fb118cd6a573a11cf4fcb0febdb8f01bd33537a431dbd0889d3e9d6d8348459d"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.22/MacMaid-v0.9.22-arm64-cli.tar.gz"
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
