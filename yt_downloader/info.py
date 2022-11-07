import pytube
import os

link = print (os.environ["LINK"])

yt = pytube.YouTube(link)

info = print ("Title:", yt.title
"Author:", yt.author
"Published date:", yt.publish_date.strftime("%Y-%m-%d")
"Views:", yt.views
"Length:", yt.length, "seconds")


with open("YT.txt", "w") as text_file:
    text_file.write(info)