cask "expanse" do
  version "0.1.26"
  sha256 "db7c3571ad07a707e5964487a6b2c75e1256f53d489e3634d35358676a94775b"

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
