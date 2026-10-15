cask "foldermd" do
  version "0.1.12"
  sha256 "99f7204b6d997fcb02479650b8adeea766e3103885ec662248f983c55de7212f"

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
