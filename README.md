# Kindle Book Transfer Script

This repository contains a simple Bash script to transfer eBooks from your local media directory to your Kindle device over the network using `scp`.

## Features

- Supports common ebook formats: `.epub`, `.mobi`, `.azw3`, and `.pdf`.
- Automatically finds and copies all supported books recursively.
- Uses a configurable SSH port and user.
- Easy to customize for your Kindle's directory.

## Requirements

- A Kindle device with SSH access enabled.
- `scp` installed on your local machine.
- Network access to your Kindle.
- KOReader installed on your Kindle to read formats like `.epub` and `.pdf`.
- Update the script with your Kindle's IP address, SSH port, user, and destination directory.
