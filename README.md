# randomsamplepicker
A cross platform cli tool that efficiently picks random samples from folder for windows and *nix.

This tool is a successor to the tool that I have previously wrote called `randtake`. RandTake was so slow as hell. It really was not that good. The size of it was highier. The speed was trash.

But now `VrandTake.exe` outperforms that by a large margin. If you want a comparison, why not try them both.

> How to use vrandtake.exe
Just copy and paste the bin folder to your C: drive.
You may like to rename the `vrandtake.exe` to `vrt` for your conveniance.
Now update your environmental variables.
Goto to windows `Tap to search` bar and type `env` press enter.
Tap on `Edit environment variables` and click on path and add `C:\bin` to it for both default and user.

Now, goto to the workspace where you have to split the folder.

Assume, we have,
```
amit/
    jpg/
    png/
    mp3/
```
jpg, png and mp3 has 50 files each.

We are assigned to randomly pick 10 of each and make another folder called `amit_media`.

So, the code will be for that,
```
vrt --input jpg --output amit_media --size 10
vrt --input png --output amit_media --size 10
vrt --input mp3 --output amit_media --size 10
```

If the above code seems very verbose, try this instead,

```
vrt -i jpg -o amit_media -s 10
vrt -i png -o amit_media -s 10
vrt -i mp3 -o amit_media -s 10
```
This way you will have a folder `amit_media` inside `amit` containing all the required files.

Contributions are allowed. Send PR.