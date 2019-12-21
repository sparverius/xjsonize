#include "./../HATS/x.hats"
#staload STM = "{$x}/SATS/stamp0.sats"

#staload "./json.sats"

fun jsonize_stamp : jsonize_type($STM.stamp)
overload jsonize with jsonize_stamp

fun labify_stamp : labify_type($STM.stamp)
overload labify with labify_stamp
