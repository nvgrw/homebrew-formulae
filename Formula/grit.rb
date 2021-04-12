class Grit < Formula
  desc "Multitree-based personal task manager"
  homepage "https://github.com/climech/grit/"
  url "https://github.com/climech/grit/archive/refs/tags/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "6c6ef08ba01c080e0d7fc3dd7fdaf1c8662dad6456da22ef453e2963c44bab01"
  license "MIT"
  head "https://github.com/climech/grit.git"

  depends_on "go" => :build

  def install
    gopath = "#{buildpath}/gopath"
    mkdir_p gopath
    ENV["GOPATH"] = gopath
    ENV["PREFIX"] = prefix

    system "make"
    system "make", "install"
  end
end
