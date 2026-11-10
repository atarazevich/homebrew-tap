cask "lore" do
  version "3.8.0"
  sha256 "85c8400a4d5e64bdfe7aa4ee925eee7c116e8909dfd23ed4bb9a2a8fcf770ebf"

  url "https://github.com/atarazevich/lore/releases/download/v#{version}/Lore-v#{version}.dmg"
  name "lore"
  desc "Local voice dictation and meeting transcription"
  homepage "https://lore.dev.devkit.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Lore.app"

  zap trash: [
    "~/Library/Application Support/Lore",
    "~/Library/Caches/com.lore.app",
    "~/Library/HTTPStorages/com.lore.app",
    "~/Library/HTTPStorages/com.lore.app.binarycookies",
    "~/Library/Preferences/com.lore.app.plist",
  ]
end
