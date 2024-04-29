# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/workbench_instance
resource "google_workbench_instance" "instance" {
  name = var.workbench_instance_name
  location = var.main_zone

  gce_setup {
    machine_type = var.instance_machine_type
    /*
    accelerator_configs {
      type         = "NVIDIA_TESLA_T4"
      core_count   = 1
    }

    shielded_instance_config {
      enable_secure_boot = true
      enable_vtpm = true
      enable_integrity_monitoring = true
    }
    */

    disable_public_ip = true

    
    service_accounts {
      email = var.instance_service_account_email
    }
    

    /*
    boot_disk {
      disk_size_gb  = 310
      disk_type = "PD_SSD"
      disk_encryption = "CMEK"
      kms_key = "my-crypto-key"
    }

    data_disks {
      disk_size_gb  = 330
      disk_type = "PD_SSD"
      disk_encryption = "CMEK"
      kms_key = "my-crypto-key"
    }
    */
    network_interfaces {
      network = var.network_name
      subnet = var.subnet_name
      
      #nic_type = "GVNIC"
    }

    /*
    metadata = {
      terraform = "true"
    }

    enable_ip_forwarding = true

    tags = ["abc", "def"]
    */
  } // End of gce SetUp

  /*
  disable_proxy_access = "true"

  instance_owners  = [ "my@service-account.com"]

  labels = {
    k = "val"
  }
  */

  desired_state = "ACTIVE"

}