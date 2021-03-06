# mashpodder (BobRecio mod)
### A mod of Chess Griffin's MashPodder - https://github.com/chessgriffin/mashpodder

This version prepends the season and episode id, as "s00e00", to the filename so that you can properly sort the files in a filesystem.
It requires 3 files:
1. mashpodder.sh
2. parse_rss.xsl
3. mp.conf

Additionally, when the .m3u is created it is named the same as the podcast directory.

### Usage...
The same as the MashPodder instructions.
Remember to set the BASEDIR.

### Why...
I've found myself getting into Podcast Dramas (Wolf 365, Rabbits, etc) and have found the need to catch up on some of them. Therefore, I wanted the ability to download all the episodes, store them as MP3s and load them to my iPod (classic, 160Gb).

I'm using the iPod because 1) I don't want to fill up the limited amount of storage on my phone and 2) I want to have the content offline so that I don't have to use my data plan to download the episodes. The iPod has plenty of space and, since I'm using the RockBox (http://rockbox.org) firmware, it's simple to load files to it - even though it has no wireless connectivity capability of any kind.

I figured that if I could download the episodes en-masse, then I could store them on the iPod. I started by using BashPodder and found out that most of the podcasts thate i'm interested in have mp3 file names that do not sort properly - they are simpley the name of the episode, or the filename is a coded id that doesn't even indicate the name of the episode. In looking at the RSS feed, I noticed that the season (itunes:season) and episode (itunes:episode) numbers are indicated in the XML.

Linux is one of my hobbies. I've been using it since 1996. But I'm no an expert. And I only learn things as I need to know them. I'm not fluent with BASH or AWK or SED or XML. Therefore, I was excited to come across bashpodder - and then mashpodder.

### What's different? ###
The parse_rss.XSL file returns more information: URL, PodcastTitle, Season+Episode ("s00e00"), EpisodeTitle. Then, in the .sh file we parse the lines and make a filename in the format of "s00e00_EpisodeTitle.mp3".

Thanks!
-Bob.

### to-do...
1. Deal with episodes that are missing episode and/or season numbers.
2. Are there any other nodes that have good information??
