cask "expanse" do
  version "0.1.20"
  sha256 "39e73424ab56eebab5082cc2f3a244a688a4f256d1618544ca55b82eb34b5d10"

  url "https://github.com/invig/expanse/releases/download/v#{version}/Expanse-#{version}.zip"
  name "Expanse"
  desc "Infinite canvas window manager"
  homepage "https://github.com/invig/expanse"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Expanse.app"

  uninstall quit: "com.invignation.expanse"

  zap trash: [
    "~/Library/Application Support/Expanse",
    "~/Library/Caches/com.invignation.expanse",
    "~/Library/HTTPStorages/com.invignation.expanse",
    "~/Library/Preferences/com.invignation.expanse.plist",
  ]
end
