cask "macmaid" do
  version "0.9.30"
  sha256 "900e7f58650f6e9187f68536e09fe782f2aa23b552be066e4c37baf6d57a989f"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.30/MacMaid-0.9.30-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
