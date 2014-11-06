from powerline.segments import common
from powerline.segments.common import bat

def system_load(pl, num_avgs=3):
    return common.system_load(pl)[:num_avgs]

def battery(pl, max_percent=101):
    if bat._get_capacity(pl) < max_percent:
        return common.battery(pl)
    return []
