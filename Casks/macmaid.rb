cask "macmaid" do
  version "0.14.10"
  sha256 "48d81c3cec7a97652da80f8fbb1090398201277bc6a738754aa6d5ce2325389b"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.14.10/MacMaid-0.14.10-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
