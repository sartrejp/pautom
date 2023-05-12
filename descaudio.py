from pytube import YouTube

# Obtener el enlace del video
link = input("Ingrese el enlace del video de YouTube: ")

# Crear objeto de YouTube
yt = YouTube(link)

# Descargar el audio
audio = yt.streams.filter(only_audio=True).first()
audio.download()
