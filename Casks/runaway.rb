cask "runaway" do
  version "1.0.0"
  sha256 "4ebb8dc52bb4374453d4b38ae082c0de3b7fab6b4d8f69fd1b4fbe39873300fa"

  url "https://github.com/sudarshanvenkatesh13/runaway-releases/releases/download/v#{version}/Runaway-#{version}.dmg",
      verified: "github.com/sudarshanvenkatesh13/runaway-releases/"
  name "Runaway"
  desc "Claude Pro/Max usage meter that lives in the notch"
  homepage "https://runawaynotch.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Runaway.app"

  zap trash: [
    "~/.claude/runway",
    "~/Library/Preferences/com.winspiretech.runway.plist",
  ]
end
