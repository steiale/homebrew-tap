cask "lockplus" do
  version "2.0.2"
  sha256 "f5fba87d4f9255ec6dc685c455b1b74b7a2213351a5b3bea2fa2555a56cc9b02"

  url "https://github.com/steiale/lockplus-updates/releases/download/v#{version}/LockPlus.dmg"
  name "LockPlus"
  desc "WireGuard and OpenVPN client with a kill switch"
  homepage "https://github.com/steiale/lockplus"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "LockPlus.app"

  uninstall quit: "io.github.steiale.lockplus.mac"

  # Covers LockPlus 2, LockPlus 1.x (1.0.57 to 1.2.0) and WireGuide+ (1.0.1 to 1.0.56): zap is a full removal only.
  zap trash: [
    "/Library/Application Support/lockplus",
    "/Library/Application Support/wireguide-plus",
    "/Library/LaunchDaemons/io.github.steiale.lockplus.helper.plist",
    "/Library/LaunchDaemons/io.github.steiale.wireguide-plus.helper.plist",
    "/Library/PrivilegedHelperTools/io.github.steiale.lockplus.helper",
    "/Library/PrivilegedHelperTools/io.github.steiale.wireguide-plus.helper",
    "/Library/PrivilegedHelperTools/openvpn",
    "/var/log/lockplus-helper.log",
    "/var/log/wireguide-plus-helper.log",
    "/var/run/lockplus",
    "/var/run/wireguide-plus",
    "~/Library/Application Support/io.github.steiale.lockplus.mac",
    "~/Library/Application Support/lockplus",
    "~/Library/Application Support/wireguide-plus",
    "~/Library/Caches/io.github.steiale.lockplus",
    "~/Library/Caches/io.github.steiale.lockplus.mac",
    "~/Library/Containers/io.github.steiale.lockplus.mac.validator",
    "~/Library/HTTPStorages/io.github.steiale.lockplus.mac",
    "~/Library/LaunchAgents/io.github.steiale.lockplus.gui.plist",
    "~/Library/LaunchAgents/io.github.steiale.wireguide-plus.gui.plist",
    "~/Library/Logs/lockplus",
    "~/Library/Preferences/io.github.steiale.lockplus.mac.plist",
    "~/Library/Preferences/io.github.steiale.lockplus.plist",
    "~/Library/Preferences/io.github.steiale.wireguide-plus.plist",
    "~/Library/Saved Application State/io.github.steiale.lockplus.mac.savedState",
    "~/Library/WebKit/io.github.steiale.lockplus",
  ]

  caveats <<~EOS
    LockPlus 2 needs macOS 26 and Apple silicon. On older systems, stay on LockPlus 1.2.0.
    On first launch LockPlus copies your LockPlus 1.x profiles and settings; it never changes them.
    After upgrading from LockPlus 1, quit LockPlus 1 if it is still open, then open LockPlus.
    If LockPlus 1.x left its helper installed, LockPlus 2 offers to remove it on first launch
    (Remove Old Helper…, one administrator prompt).
    To remove LockPlus's network extension and VPN configurations, use
    Settings > Advanced > Uninstall LockPlus… before `brew uninstall --zap`.
  EOS
end
