cask "expanse" do
  version "0.1.38"
  sha256 "b2bd0451bd2c827bd015029f0a816081627d09e39199d0fbb6ec2cc4fbcca46d"

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
