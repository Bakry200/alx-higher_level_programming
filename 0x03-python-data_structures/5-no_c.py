#!/usr/bin/python3
def no_c(my_string):
    ret = ""
    for i in range(len(my_string)):
        if (my_string[i] != 'C' and my_string[i] != 'c'):
            ret += my_string[i]
            return ret
