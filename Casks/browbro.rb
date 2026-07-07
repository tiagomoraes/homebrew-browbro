cask "browbro" do
  version "0.1.6"
  sha256 "6220d137b1162a17e6ee2470d2ce24e955393e6d3cddcabcceb532ce2900dde9"

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
