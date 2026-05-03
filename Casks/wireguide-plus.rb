cask "wireguide-plus" do
  version "1.0.21"
  sha256 "5909914fcdb882824e5b7d8885ac323c6d40f19b71bdcdd24cca72acaf3053b4"

  url "https://github.com/steiale/wireguide/releases/download/v#{version}/wireguide-plus-v#{version}-darwin-universal.zip"
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
