# Input Parameters

# Schematic output
sch_out = 'mc34063-design.sch'
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

# Represents a quantity with explicit units
class Q:
    def __init__(self, value, unit, sig = 3):
        self.value = value
        self.unit = unit
        self.sig = sig
    def fmt(self, pattern, prefix = ''):
        # Q(CT, 'F').fmt('{value} {prefix}{unit}')
        prefix_factor = {
            'p': 1e-12, 'n': 1e-9, 'u': 1e-6, 'm': 1e-3,
            '': 1e0, 'k': 1e3, 'M': 1e6, 'G': '1e9'
        }[prefix]
        value_adj = self.value / prefix_factor
        places = self.sig - 1 - int(floor(log10(abs(value_adj))))
        value_rounded = round(value_adj, places)
        if places <= 0:
            value_rounded = int(value_rounded)
        result = pattern
        result = result.replace('{value}', str(value_rounded))
        result = result.replace('{prefix}', prefix)
        result = result.replace('{unit}', self.unit)
        return result

def report(name, symbol, value, unit, prefix = ''):
    value_str = Q(value, unit).fmt('{value} {prefix}{unit}', prefix)
    print(name)
    print(f'{symbol} = {value_str}')
    print()

report('Timing Capacitance',  'CT',   CT,   'F', 'n')
report('Peak Switch Current', 'Ipk',  Ipk,  'A', 'm')
report('Input Resistance',    'Rsc',  Rsc,  'Ω', '' )
report('Minimum Inductance',  'Lmin', Lmin, 'H', 'u')
report('Output Capacitance',  'Co',   Co,   'F', 'u')
report('Voltage Divider Top', 'R2',   R2,   'Ω', 'k' )

with open('kicad-mc34063-boost.sch', 'r') as f_in:
    with open(sch_out, 'w') as f_out:
        sch = f_in.read()
        fmt = '{value}{prefix}'
        sch = sch.replace('{CT}',   Q(CT,   'F').fmt(fmt, 'n'))
        sch = sch.replace('{Rsc}',  Q(Rsc,  'Ω').fmt(fmt, '' ))
        sch = sch.replace('{Lmin}', Q(Lmin, 'H').fmt(fmt, 'u'))
        sch = sch.replace('{Co}',   Q(Co,   'F').fmt(fmt, 'u'))
        sch = sch.replace('{R1}',   Q(R1,   'Ω').fmt(fmt, 'k'))
        sch = sch.replace('{R2}',   Q(R2,   'Ω').fmt(fmt, 'k'))
        f_out.write(sch)
print('KiCAD schematic written to:', sch_out)
