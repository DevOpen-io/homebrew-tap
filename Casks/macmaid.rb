cask "macmaid" do
  version "0.15.26"
  sha256 "b5c7c8a304e5bd6d8fab162bcc299066cbbedbd04a90083cd51df1c56d4d0f14"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.26/MacMaid-0.15.26-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
