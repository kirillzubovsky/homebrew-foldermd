cask "foldermd" do
  version "0.1.13"
  sha256 "3ddad19b0a78b9df54379a235e8d25559e3d67661fe94caf85754da6bf68d9bf"

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

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "foldermd.app"

  zap trash: "~/Library/Application Support/foldermd"
end
