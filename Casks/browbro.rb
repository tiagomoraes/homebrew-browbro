cask "browbro" do
  version "0.1.7"
  sha256 "95b0fa09a8ef9436ed52eb1d5ffae695fa1d86fb45a92c2bf59aa4050cf8c9db"

  url "https://github.com/tiagomoraes/browbro/releases/download/v#{version}/BrowBro.dmg"
  name "BrowBro"
  desc "Menu-bar browser router for picking a browser or Chrome profile per link"
  homepage "https://browbro.tiagomoraes.cloud/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sonoma

  app "BrowBro.app"

  zap trash: [
    "~/Library/Application Support/BrowBro",
    "~/Library/Preferences/so.aca.browbro.plist",
  ]
end
