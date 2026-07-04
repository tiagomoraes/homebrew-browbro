cask "browbro" do
  version "0.1.0"
  sha256 "a2c5152f42cbfce2925c19507ee3ee26fce83ebbf0625d88e2df12e3e5da2009"

  url "https://github.com/tiagomoraes/browbro/releases/download/v#{version}/BrowBro.dmg",
      verified: "github.com/tiagomoraes/browbro/"
  name "BrowBro"
  desc "Menu-bar browser router for picking a browser or Chrome profile per link"
  homepage "https://browbro.tiagomoraes.cloud/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "BrowBro.app"

  caveats <<~CAVEATS
    BrowBro is not yet notarized, so macOS blocks it on first launch. To open it:
      System Settings, then Privacy & Security, then click "Open Anyway",
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/BrowBro.app"
  CAVEATS

  zap trash: [
    "~/Library/Preferences/so.aca.browbro.plist",
    "~/Library/Application Support/BrowBro",
  ]
end
