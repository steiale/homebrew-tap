cask "wireguide-plus" do
  version "1.0.54"
  sha256 "4a43568bea80f077dc62dd0b5bf9f9e6ccc0fcf243d139558c201184d1edd928"

  url "https://github.com/steiale/wireguide/releases/download/v#{version}/wireguide-plus-v#{version}-darwin-arm64.zip"
  name "WireGuide+"
  desc "WireGuard VPN desktop client"
  homepage "https://github.com/steiale/wireguide"

  app "WireGuide+.app"

  zap trash: [
    "~/Library/Application Support/wireguide-plus",
    "~/Library/Preferences/io.github.steiale.wireguide-plus.plist",
    "/Library/LaunchDaemons/io.github.steiale.wireguide-plus.helper.plist",
    "/Library/PrivilegedHelperTools/io.github.steiale.wireguide-plus.helper",
  ]
end
