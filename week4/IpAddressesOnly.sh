#!/bin/bash

/bin/bash "IpInfo.sh" | sed -n '/Subnet/!p' | sed -n '/Broadcast/!p'

