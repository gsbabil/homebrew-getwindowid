class Getwindowid < Formula
  desc "Retrieves the CGWindowID of the specified window"
  homepage "https://github.com/gsbabil/GetWindowID"
  url "https://github.com/gsbabil/GetWindowID/archive/1.1.1.tar.gz"
  sha256 "802401935fec24231143b4bbcf1ccafe36a1f9eec8e0eb900afe52144f009032"

  def install
    system "make"
    bin.install "GetWindowID"
  end

  test do
    system "#{bin}/GetWindowID", "Dock", "Dock"
  end
end
