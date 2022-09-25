# Yolov3-training

* Build the docker image
  * `sudo docker build -t <docke image name> . --no-cache`
* Build docker container
  * `sudo docker run -it --name <container name> <docker image name>`
* We use the Yolov3 from DarkNet for training license in the container.
  * `git clone https://github.com/pjreddie/darknet`
  * `cd darknet`
  * `make`
  * Into darknet folder.
* Run voc_label after build container.
  * `cd data/voc`
  * `python3 voc_label.py`

Reference: <https://github.com/ultralytics/yolov3>
