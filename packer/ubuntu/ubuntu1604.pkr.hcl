packer {
  required_plugins {
    virtualbox = {
      version = ">= 0.0.1"
      source = "github.com/hashicorp/virtualbox"
    }
  }
}

source "virtualbox-iso" "basic-example" {
    guest_os_type = "Ubuntu_64"
    iso_url = "http://www.releases.ubuntu.com/21.04/ubuntu-21.04-live-server-amd64.iso"
    iso_checksum = "e4089c47104375b59951bad6c7b3ee5d9f6d80bfac4597e43a716bb8f5c1f3b0"
    ssh_username = "packer"
    ssh_password = "packer"
    shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
  }
  
  build {
    sources = ["sources.virtualbox-iso.basic-example"]
  }
  