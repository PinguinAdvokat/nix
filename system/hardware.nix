{ pkgs, ... }: {
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.grub = {
        enable = true;
        devices = [ "nodev" ];
        efiSupport = true;
        useOSProber = true;
    };
    services.pulseaudio.enable = false;
    services.xserver.videoDrivers = [ "amdgpu" ];
    hardware.bluetooth.enable = true;
    hardware.graphics = {
        enable = true;
        enable32Bit = true;
        extraPackages = with pkgs; [
            vulkan-loader
            vulkan-validation-layers
            vulkan-extension-layer
        ];
    };
}