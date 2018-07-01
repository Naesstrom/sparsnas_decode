docker build -t sparsnas --build-arg SENSORS="1234 1000" \
  --build-arg MQTT_HOST=192.168.x.x --build-arg MQTT_PORT=1883 \
  --build-arg MQTT_USERNAME=username --build-arg MQTT_PASSWORD=password \
  https://github.com/tubalainen/sparsnas_decoder.git

docker run -it --device=/dev/bus/usb --name=sparsnas --restart=always sparsnas:latest
