# Download Docker Desktop Installer
Invoke-WebRequest -Uri https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe -OutFile DockerDesktopInstaller.exe

# Start the installer
Start-Process -FilePath .\DockerDesktopInstaller.exe -ArgumentList "/install", "/quiet", "/norestart" -Wait

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart

# Verify installation
docker --version
