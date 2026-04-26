resource "yandex_compute_instance" "compute-vm-gitlab-1777061438204" {
  boot_disk {
    initialize_params {
      name       = "disk-gitlab-16-1777061479762"
      type       = "network-hdd"
      size       = 20
      block_size = 4096
      image_id   = "fd85afom2lo7npcabct8"
    }
    auto_delete = true
  }
  folder_id = "b1gujsap45rldk9c2s9d"
  hostname  = "compute-vm-gitlab-1777061438204"
  metadata = {
    user-data = "#cloud-config\ndatasource:\n Ec2:\n  strict_id: false\nssh_pwauth: no\nusers:\n- name: admitry\n  sudo: ALL=(ALL) NOPASSWD:ALL\n  shell: /bin/bash\n  ssh_authorized_keys:\n  - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJnkYzgFxCSuK7B/y8FHFGHfxIPR/t/ElT/tCBy4wg83 dmitry@wsdeb"
    ssh-keys  = "admitry:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJnkYzgFxCSuK7B/y8FHFGHfxIPR/t/ElT/tCBy4wg83 dmitry@wsdeb"
  }
  name = "compute-vm-gitlab-1777061438204"
  network_interface {
    subnet_id = "e2lh33bmf7bar5mo2hsu"
    index     = 0
    nat       = true
  }
  platform_id = "standard-v3"
  resources {
    memory        = 6
    cores         = 2
    core_fraction = 20
  }
  scheduling_policy {
    preemptible = true
  }
  zone = "ru-central1-b"
}
