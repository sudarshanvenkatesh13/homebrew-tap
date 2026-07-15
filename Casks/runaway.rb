cask "runaway" do
  version "1.0.1"
  sha256 "6edd49c964510f12b987457fd26ab79faef73f72d87c9f65fc18ea13cbd7a9b8"

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
