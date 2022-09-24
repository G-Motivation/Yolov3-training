FROM continuumio/anaconda3

# Install python dependencies
RUN python -m pip install --upgrade pip
RUN pip uninstall opencv-python
RUN pip uninstall opencv-contrib-python
RUN pip uninstall opencv-contrib-python-headless
RUN pip install opencv-contrib-python==4.5.5.62
RUN pip install --no-cache -U numpy Pillow

# Create working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy contents
COPY . /usr/src/app

ENV PATH /usr/src/app/data/voc
