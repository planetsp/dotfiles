rclone bisync onedrive:/Pictures/wallpapers ~/Pictures/wallpapers
rclone sync ~/ onedrive:LinuxBackup/ \
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
  --exclude "VirtualBox VMs/**" \
  --exclude "gatech/**" \
  --exclude "Pictures/wallpapers/**" \
  --progress
