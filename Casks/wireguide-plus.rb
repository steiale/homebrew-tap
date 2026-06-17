cask "wireguide-plus" do
  version "1.0.51"
  sha256 "73a69884399af23aa19c10638b1c4132454430fc4c2e388e3c3ef72a72b66e81"

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
