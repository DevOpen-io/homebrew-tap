cask "macmaid" do
  version "0.9.22"
  sha256 "d6cbda55a0a896264b6815c2f39be512ed58018fdb43379aa3d647374bf20076"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.22/MacMaid-v0.9.22-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64

  app "MacMaid.app"
  binary "#{appdir}/MacMaid.app/Contents/MacOS/macmaid-bin", target: "macmaid"
end
