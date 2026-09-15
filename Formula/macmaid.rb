class Macmaid < Formula
  version "0.9.34"
  sha256 "ff3ba80cb70ec231fc5fee0f9083a2a6e68fde941cc437e42c009223bf3dca4a"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.34/MacMaid-0.9.34-arm64-cli.tar.gz"
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
