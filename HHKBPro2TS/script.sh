dfu-programmer atmega32u4 erase --force && \
dfu-programmer atmega32u4 flash $1  && \
dfu-programmer atmega32u4 launch
