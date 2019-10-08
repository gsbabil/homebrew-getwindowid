class Getwindowid < Formula
  desc "Retrieves the CGWindowID of the specified window"
  homepage "https://github.com/smokris/GetWindowID"
  url "https://github.com/smokris/GetWindowID/archive/1.1.tar.gz"
  sha256 "fa6f1c28c675041021c8fe7944446e6d98f764140ac3a62a2707a220bd116c04"

  def install
    system "make"
    bin.install "GetWindowID"
  end

  test do
    system "#{bin}/GetWindowID", "Dock", "Dock"
  end
end
