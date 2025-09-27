rclone bisync onedrive:/Pictures/wallpapers ~/Pictures/wallpapers
rclone bisync onedrive:/Music ~/Music
rclone sync ~/ onedrive:LinuxLaptopBackup/ \
  --exclude ".*" \
  --exclude ".*/**" \
  --exclude "__pycache__/**" \
  --exclude "node_modules/**" \
  --exclude ".git/**" \
  --exclude "*.tmp" \
  --exclude "*.log" \
  --exclude ".cache/**" \
  --exclude ".local/share/Trash/**" \
  --exclude "go/**" \
  --exclude "Games/**" \
  --exclude "Documents/dev/**" \
  --exclude "Documents/Libation/**" \
  --exclude "VirtualBox VMs/**" \
  --exclude "gatech/**" \
  --exclude "Pictures/wallpapers/**" \
  --exclude "Music/**" \
  --progress
