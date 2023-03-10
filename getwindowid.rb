class Getwindowid < Formula
  desc "Retrieves the CGWindowID of the specified window"
  homepage "https://github.com/gsbabil/GetWindowID"
  url "https://github.com/gsbabil/GetWindowID/archive/1.1.2.tar.gz"
  sha256 "79d2cc171a6686a2fcd98d556876124fb2782b3c148a51aecddb85967f71fb46"

  def install
    system "make"
    bin.install "GetWindowID"
  end

  test do
    system "#{bin}/GetWindowID", "Dock", "Dock"
  end
end
