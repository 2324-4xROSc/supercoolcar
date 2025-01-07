#!/usr/bin/env sh
sudo python3 ./imu/imu.py &
python3 ./camera/camera_publish_websocket.py &
python3 ./gps/gps\ nmea\ parser.py &
sudo python3 ./tof/TimeOfFlightSensor.py &
sudo python3 ./voltage-sensor/VoltageSensor.py &
python3 ./websocket/mqtt_subscriber.py &
sudo python3 ./servo/drive_steer.py &
python3 ./led-indicator/led_indicator.py
