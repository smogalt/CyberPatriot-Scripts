# CyberPatriot Scripts
## Automation for the AFA Cyber Patriot competitions
Some simple scripts to help in the Cyber Patriot Ubuntu image...
Enjoy!

## package_sniffer.sh
Used to find errant packages. Default term is "games" (to look for game related packages), however you can use other terms to find specific packages. Could use some optimization, however it's speed is not critical.

## media_hawk.sh
Used to find media files. It only searches for
- Audio files
  - .mp3
  - .wav
- Video files
  - .mp4
  - .mov
- Image files
  - .jpeg
  - .png

Without an option, the default directory is the root directory.

## security_configs.sh
Sets up UFW, and ClamAV. Adds configs to PAM.
