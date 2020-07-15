# Input Parameters

# Saturation voltage of the output switch [V]
Vsat = 1
# Forward voltage drop of the chosen output rectifier [V]
VF = 0.4
# Minimum input voltage [V]
Vin_min = 12.0
# Desired output voltage [V]
Vout = 28
# Desired output current [A]
Iout = 0.175
# Minimum desired output switching frequency at the selected
# values of Vin and Iout [Hz]
fmin = 33e3
# Desired peak-to-peak output ripple voltage [V]
Vripple = 400e-3
# Voltage sense resistor [Ohm]
R1 = 2.2e3


# Calculations

# t_on / t_off
ton_toff_ratio = (Vout + VF - Vin_min) / (Vin_min - Vsat)
# period [s]
T = 1 / fmin
# off time [s]
t_off = T / (ton_toff_ratio + 1)
# on time [s]
t_on = T - t_off
# Timing capacitance [F]
CT = 4.0e-5 * t_on
# Peak switch current
Ipk = 2 * Iout * (ton_toff_ratio + 1)
# Input resistance [Ohm]
Rsc = 0.3 / Ipk
# Minimum inductance [H]
Lmin = (Vin_min - Vsat) * t_on / Ipk
# Output capacitance [F]
Co = 9 * Iout * t_on / Vripple
# Voltage divider upper resistance [Ohm]
R2 = (Vout / 1.25 - 1) * R1


# Output Resulting Design Parameters

from math import log10, floor

def sigfig(x, n):
    return round(x, n - 1 - int(floor(log10(abs(x)))))

def report(name, symbol, value, prefix_value, unit):
    value_adj = sigfig(value / prefix_value, 3)
    if abs(value_adj) >= 100:
        value_adj = int(value_adj)
    unit_prefix = {
        1e-12: 'p',
        1e-9: 'n',
        1e-6: 'u',
        1e-3: 'm',
        1e0: '',
        1e3: 'k',
        1e6: 'M',
        1e9: 'G'
    }[prefix_value]
    print(name)
    print(f'{symbol} = {value_adj} {unit_prefix}{unit}')
    print()

report('Timing Capacitance',  'CT',   CT,   1e-9, 'F')
report('Peak Switch Current', 'Ipk',  Ipk,  1e-3, 'A')
report('Input Resistance',    'Rsc',  Rsc,  1e0,  'Ohm')
report('Minimum Inductance',  'Lmin', Lmin, 1e-6, 'H')
report('Output Capacitance',  'Co',   Co,   1e-6, 'F')
report('Voltage Divider Top', 'R2',   R2,   1e3,  'Ohm')

