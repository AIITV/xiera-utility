import pytube
import os

link = print (os.environ["LINK"])

yt = pytube.YouTube(link)

info = print("Title:", yt.title)
print("Author:", yt.author)
print("Published date:", yt.publish_date.strftime("%Y-%m-%d"))
print("Number of views:", yt.views)
print("Length of video:", yt.length, "seconds")


with open("YT.txt", "w") as text_file:
    text_file.write(info)