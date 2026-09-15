class Macmaid < Formula
  version "0.9.22"
  sha256 "524bbf6be8643c133e785d37244c7e3a9a90bf66d5f2e69f303da2f1dab47e52"

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
