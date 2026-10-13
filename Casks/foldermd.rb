cask "foldermd" do
  version "0.1.11"
  sha256 "8a1118650e729046a8279e81f0aa9672772c9b746fdbb54240825c5fe4c3147f"

  url "https://downloads.foldermd.com/FolderMD-#{version}.dmg"
  name "FolderMD"
  desc "Reader for markdown written by agents"
  homepage "https://foldermd.com/"

  livecheck do
    url "https://foldermd.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "foldermd.app"

  zap trash: "~/Library/Application Support/foldermd"
end
