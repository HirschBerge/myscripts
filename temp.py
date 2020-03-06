#!/usr/bin/python3

import argparse

parser = argparse.ArgumentParser(
    description='Temperature calculator')
parser.add_argument('-f', '--fahrenheit',
                    action='store_true', help='Converts from F to C')
parser.add_argument('-c', '--celsius',
                    action='store_true', help='Converts from C to F')
parser.add_argument('-d', '--degrees', required=True,
                    help='Your starting degrees.')
args = parser.parse_args()
degrees = float(args.degrees)


def FtoC(degrees):
    cels = (degrees - 32) * (5 / 9)
    return cels


def CtoF(degrees):
    fah = (degrees * (9 / 5)) + 32
    return fah


if args.fahrenheit:
    print(degrees, 'degrees F converts into',
          '{0: .2f}'.format(FtoC(degrees)), 'degrees Celsuis')
else:
    pass
if args.celsius:
    CtoF(degrees)
    print(degrees, 'degrees C converts into',
          '{0: .2f}'.format(CtoF(degrees)), 'degrees Fahrenheit')
else:
    pass
