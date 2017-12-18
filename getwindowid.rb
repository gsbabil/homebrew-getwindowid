class Getwindowid < Formula
  desc "Retrieves the CGWindowID of the specified window"
  homepage "https://github.com/smokris/GetWindowID"
  url "https://github.com/smokris/GetWindowID/archive/1.0.tar.gz"
  sha256 "7f4ef6a215f52e76b0dae6fefb34ee7f83ae44daef6c5d2d55f9f8614fbb28ab"

  def install
    system "make"
    bin.install "GetWindowID"
  end

  test do
    system "#{bin}/GetWindowID", "Dock", "Dock"
  end
end
