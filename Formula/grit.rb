class Grit < Formula
  desc "Multitree-based personal task manager"
  homepage "https://github.com/climech/grit/"
  license "MIT"
  url "https://github.com/climech/grit/archive/ab30f8612e2c46ad0981a2f29c1e344bb60f6e35.tar.gz"
  sha256 "6e02c2ba58e9596c808ce7aa327b2a212da2ee516acf90ee702a6439466bedfe"
  version "0.2.0"
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
