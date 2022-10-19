# Yolov3-training

* Build the docker image
  * `sudo docker build -t <docke image name> . --no-cache`
* Build docker container
  * `sudo docker run -it --name <container name> <docker image name>`
* We use the Yolov3 from DarkNet for training license in the container.
  * `git clone https://github.com/pjreddie/darknet`
  * `cd darknet`
  * `make`
* Run voc_label after.
  * `cd data/voc`
  * `python3 voc_label.py`
* Use dark net to train model
  * Modify yolov3-tiny.cfg
    ```
     [net]
     batch=64
     subdivisions=4
     angle=5
     max_batches=220000
     steps=70000,200000
     ...
     filters=225

     [yolo]
     anchors = 12,27, 17,45, 23,61, 37,58, 198,140, 344,319

     classes=70

     ignore_thresh = .7

     ...
     ```
  * `darknet.exe detector train data/voc.data cfg/yolov3-tiny.cfg`

Reference: <https://github.com/ultralytics/yolov3>
