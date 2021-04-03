class Grit < Formula
  desc "A multitree-based personal task manager"
  homepage "https://github.com/climech/grit/"
  license "MIT"
  url "https://github.com/climech/grit/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "dddf63cbebd9ea99c0c0290fca4f48e9ad395dfa39e6ded373b459f290179e40"
  head "https://github.com/climech/grit.git"

  depends_on "go" => :build

  def install
    gopath = "#{buildpath}/gopath"
    mkdir_p gopath
    ENV["GOPATH"] = gopath
    ENV["PREFIX"] = "#{prefix}"

    system "make"
    system "make", "install"
  end
end
