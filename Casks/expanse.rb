cask "expanse" do
  version "0.1.25"
  sha256 "7576546d4621f89601ca5859764e291d1277fd61016037506358791fcf61e9a0"

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
