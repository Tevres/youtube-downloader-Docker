import subprocess

yt_link = input("Bitte den YouTube-Link eingeben: ")

download_path = "downloads/%(title)s - %(channel)s.%(ext)s"

command = [
    "yt-dlp",
    "-f", "bestaudio/best",
    "--extract-audio",
    "--audio-format", "mp3",
    "-o", download_path,
    yt_link
]

subprocess.run(command, check=True)
