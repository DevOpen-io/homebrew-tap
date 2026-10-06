class Macmaid < Formula
  version "0.15.34"
  sha256 "a26f635e130d8d544f80c1af61adba8dd575046ae968d069df299fe208a9f1ae"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.34/MacMaid-0.15.34-arm64-cli.tar.gz"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"
  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"macmaid"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/macmaid --version")
  end
end
