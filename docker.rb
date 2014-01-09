require 'formula'

class Docker < Formula
  homepage 'https://www.docker.io/'

  if MacOS.prefer_64_bit?
    url 'https://get.docker.io/builds/Darwin/x86_64/docker-0.7.5.tgz'
    sha1 '3ea4948a757a48c31568bb808fc2e66967309cf4'
  else
    url 'https://get.docker.io/builds/Darwin/i386/docker-0.7.5.tgz'
    sha1 '386ae8b0e93d59a97da1c353afa77b6b7c48176c'
  end

  depends_on :arch => :intel

  def install
    bin.install 'local/bin/docker'
  end

  test do
    system "#{bin}/docker"
  end
end
