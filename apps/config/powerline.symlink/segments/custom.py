from powerline.segments.common import bat, sys

def system_load(pl, num_avgs=3):
    return sys.system_load(pl)[:num_avgs]

def battery(pl, max_percent=101):
    if bat._get_capacity(pl) < max_percent:
        return bat.battery(pl)
    return []
