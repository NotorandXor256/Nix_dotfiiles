# Nix_dotfiiles

```

.
├── flake.lock
├── flake.nix
├── home
│   ├── home.nix
│   ├── modules
│   │   ├── bash.nix
│   │   ├── git.nix
│   │   ├── nvchad.nix
│   │   ├── programs.nix
│   │   └── tmux.nix
│   ├── pkgs
│   │   └── logseqDB
│   │       └── default.nix
│   └── users
│       ├── aavart
│       │   ├── default.nix
│       │   └── modules
│       │       ├── applications.nix
│       │       ├── obsidian.nix
│       │       ├── packages.nix
│       │       ├── programs.nix
│       │       ├── setting.nix
│       │       ├── userSetting.nix
│       │       ├── yazi.nix
│       │       └── zsh.nix
│       └── oggy
│           ├── default.nix
│           └── modules
│               ├── packages.nix
│               ├── programs.nix
│               └── services.nix
├── hosts
│   ├── machine
│   │   ├── laptop
│   │   │   ├── default.nix
│   │   │   └── hardware-configuration.nix
│   │   └── silica
│   │       ├── default.nix
│   │       └── hardware-configuration.nix
│   └── modules
│       ├── desktop
│       │   ├── packages.nix
│       │   ├── plasma.nix
│       │   ├── programs.nix
│       │   └── virtualisation.nix
│       ├── fonts
│       │   └── default.nix
│       ├── hardware
│       │   ├── audio.nix
│       │   ├── bluetooth.nix
│       │   ├── bootloader.nix
│       │   ├── networkmanager.nix
│       │   └── zram.nix
│       └── services
│           └── ssh.nix
├── LICENSE
├── overlays
│   └── default.nix
├── README.md
└── users
    ├── aavart.nix
    └── oggy.nix

```

```nix
nix flake update

sudo nixos-rebuild switch --flake .#laptop

```
