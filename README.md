# dist-chain-runner


## Requirements

- python 3.7
- opencv
- flask


## Usage (Local Machine)

First create a folder to store the images:

```bash
$ mkdir storage
```

On separate terminals, run the following:

A target point for the first app:

```bash
$ python rr_target_f.py 5000 apps/app1.py
```

A target point for the second app:

```bash
$ python rr_target_f.py 5002 apps/app2.py
```

And then run the sample entry point app:

```bash
$ python rr_sender_f.py
```