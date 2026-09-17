cask "macmaid" do
  version "0.11.35"
  sha256 "c68c023e30c6fff2c442ff4386ff1a9260568a8e26f47f89e036b5d8af55a67f"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.35/MacMaid-0.11.35-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
