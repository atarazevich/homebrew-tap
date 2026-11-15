cask "lore" do
  version "3.12.0"
  sha256 "73bbf1272f829e295edbd435a333351ff549cf4b2c75c8b29cea486b63e67ff5"

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
