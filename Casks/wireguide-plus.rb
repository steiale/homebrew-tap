cask "wireguide-plus" do
  version "1.0.47"
  sha256 "b15885bfa994fe68670b45c07d7d10fb064f808fd01dcffce242c0cfb62cfc36"

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
