import pytube
import os


link = "https://youtu.be/7aKpeAu-IoM"
yt = pytube.YouTube(link)
print("Title:", yt.title)
print("Author:", yt.author)
print("Published date:", yt.publish_date.strftime("%Y-%m-%d"))
print("Number of views:", yt.views)
print("Length of video:", yt.length, "seconds")
yt.streams.get_highest_resolution().download()
print("Video successfullly downloaded from", link)