cask "lore" do
  version "3.13.0"
  sha256 "cb85500430816ec2b6ad63c7773d01f9e369a778a530a6b324e6754a091e4337"

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
