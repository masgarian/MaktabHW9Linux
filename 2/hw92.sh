#!/bin/bash

ifconfig | grep -Eo '(Mask:[0-9,.]*(.*?))'
ifconfig | grep -Eo '(inet addr:[0-9,.]*)'
ifconfig | grep -Eo '(HWaddr [0-9,a-z,:]*)'
