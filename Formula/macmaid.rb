class Macmaid < Formula
  version "0.11.18"
  sha256 "aad9932daf6f4ee4dfd26b0de6d618be0e744be82e748827c3e7f67dc9dc25fe"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.18/MacMaid-0.11.18-arm64-cli.tar.gz"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"macmaid"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/macmaid --version")
  end
end
