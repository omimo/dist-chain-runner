# dist-chain-runner


## Requirements

- python 3.7
- opencv
- flask


## Test Demo (Local Machine)

An entry-point app takes a photo from the webcam and asks for some information (e.g., name). It then sends it to the first app, which performs its operations on the photo. Once app1 is finished, it will send the photo to the second app. 

First create a folder to store the images:

```bash
$ mkdir storage
$ mkdir storage/app1
$ mkdir storage/app2
$ mkdir storage/sender
```

On separate terminals, run the following:

A target point for the first app:

```bash
$ python rr_target_f.py 5000 apps/app1.py storage/app1
```

A target point for the second app:

```bash
$ python rr_target_f.py 5002 apps/app2.py storage/app2
```

And then run the sample entry point app:

```bash
$ python rr_sender_f.py
```