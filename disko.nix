{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
	device = "/dev/nvme0n1";
	content = {
	  type = "gpt";
	  partitions = {
	    ESP = {
	      size = "512M";
	      type = "EF00";
	      content = {
	        type = "filesystem";
		format = "vfat";
		mountpoint = "/boot";
		mountOptions = [
		  "defaults"
		];
	      };
	    };
	    luks = {
	      size = "100%";
	      content = {
	        type = "luks";
		name = "crypted";
		extraOpenArgs = [ ];
		settings = {
		  keyFile = "/tmp/secret.net"
		  allowDiscards = true;
		};
		content = {
		  type = "lvm_pv";
		  vg = "pool";
		};
	      };
	    };
	  };
	};
      };
    };
    lvm_vg = {
      pool = {
        type = "lvm_vg";
	lvs = {
	  swap = {
	    size = "8G";
	    content = {
	      type = "swap";
	      discardPolicy = "both";
	      resumeDevice = true;
	    };
	  };
	  root = {
	    size = "100G";
	    content = {
	      type = "filesystem";
	      format = "ext4";
	      mountpoint = "/";
	      mountOptions = [
	        "defaults"
	      ];
	    };
	  };
	  home = {
	    size = "100%";
	    content = {
	      type = "filesystem";
	      format = "ext4";
	      mountpoint = "/home";
	    };
          };
	};
      };
    };
  };
}
