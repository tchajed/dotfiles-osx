from powerline.segments import common

def system_load(pl, num_avgs=3):
    return common.system_load(pl)[:num_avgs]
