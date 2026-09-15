class Macmaid < Formula
  version "0.9.29"
  sha256 "643835542d756b944c8027f48866347b4e5f8c79ac260ad37e2f64a4483b548d"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.29/MacMaid-0.9.29-arm64-cli.tar.gz"
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
