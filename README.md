# filepool
Simple (yet dumb) way to share file using a docker image

TL;DR;

Although this is might seem very silly and/or dumb in a few ways, others may find it useful as it was for me.

The background: I was tasked with a requirement to distribute some JSON file across multiple zones and servers. At first I thought, ok easy. But nay! It turned out to have hundreds of destination servers, multiple DMZs, PCI/NonPCI zones, segmented networks, environments, etc... Just the initial step of planning firewall and route changes gave me headaches, let alone, wouldn't be a good practice to transport the data within the same flow thru different security zones. So I have no time to sit and cry, then I decided to create a docker image to share the file. 

Whoa?! Docker is supposed to go beyond that!! Yeah yeah, everyone already preached me... With this, any environment, server, inside the customer network that has access to the its corporate registry, can perfectly pull the image and access the file perfectly by their will. 

Essentially, the docker image has a 'cat' written in GO and the file that I want to share. The files on this repo are generically and should be pretty self explanatory. Feel free to reach me if not.

The image is based on SCRATCH, so it is very small. Would have essentially the size of 'gocat' binary (~2mb) and the file you want to share. I my case and taking the file on my reqs, I managed to have an image that is 4mb worth only. 

For the GO 'cat', it needs to compiled (considering that you have GO installed, obviously)

<code>
GOOS=linux go build -o catgo catgo.go
</code>

Then, edit Dockerfile by your will adding your file there and build it as it other. 

<b>Dont forget to EDIT the Dockerfile as your will</b>
<br/>
<b>Dont blame me for not editing YOUR Dockerfile</b>

Enjoy!
