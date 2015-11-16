from powerline.segments.common import bat, sys

def system_load(pl, num_avgs=3):
    return sys.system_load(pl)[:num_avgs]

def battery(pl, max_percent=101):
    capacity, ac_powered = bat._get_battery_status(pl)
    if capacity < max_percent:
        return bat.battery(pl)
    return []
