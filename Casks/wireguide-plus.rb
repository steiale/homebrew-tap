cask "wireguide-plus" do
  version "1.0.34"
  sha256 "79037d940d5db2881eeb10a48e1f7005095ae27845e9dd199d2b45d34bbf4d23"

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
