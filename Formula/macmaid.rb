class Macmaid < Formula
  version "0.15.35"
  sha256 "645cf921ff0bdd8b33172a2c14ba242f805cf65d93a7f94a7f3a00766fbc0f62"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.35/MacMaid-0.15.35-arm64-cli.tar.gz"
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
