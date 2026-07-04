cask "browbro" do
  version "0.1.2"
  sha256 "0b440c1cd99d24263dbe93b8d81ac695a4eaa5eb6692f7ee8aca3fced9f9ac01"

  url "https://github.com/tiagomoraes/browbro/releases/download/v#{version}/BrowBro.dmg",
      verified: "github.com/tiagomoraes/browbro/"
  name "BrowBro"
  desc "Menu-bar browser router for picking a browser or Chrome profile per link"
  homepage "https://browbro.tiagomoraes.cloud/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "BrowBro.app"

  zap trash: [
    "~/Library/Application Support/BrowBro",
    "~/Library/Preferences/so.aca.browbro.plist",
  ]

  caveats <<~CAVEATS
    BrowBro is not yet notarized, so macOS blocks it on first launch. To open it:
      System Settings, then Privacy & Security, then click "Open Anyway",
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/BrowBro.app"
  CAVEATS
end
