cask "expanse" do
  version "0.1.11"
  sha256 "5d2d3a820679e16d8c105e4fa0bac7efac5d46ebdb10c109c48a176e9641a88b"

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
