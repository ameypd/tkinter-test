import json
import os
import argparse
import psutil

parser = argparse.ArgumentParser()
parser.add_argument("filepath", help="the filepath to process")
args = parser.parse_args()

freq = psutil.cpu_freq().current
print(f"Current CPU frequency: {freq} MHz")


# Execute lscc command
cmd = 'lscc '+args.filepath+' -o dest.s'
os.system(cmd)

# Define a function to read in the MIPS code from a file
def read_mips_code():
    with open('dest.s', 'r') as f:
        mips_code = f.read()
    # print(mips_code)
    return mips_code

# Define a function to count the frequency of each MIPS instruction
def count_mips_frequency(mips_code):
    # Load circuit data from JSON file
    with open('cycle.json', 'r') as f:
        cycle_data = json.load(f)

    frequency_dict = {}
    total_cycles = 0
    
    for line in mips_code.split('\n'):
        if line.strip():
            instruction = line.split()[0]
            if instruction in frequency_dict:
                frequency_dict[instruction] += 1
            else:
                frequency_dict[instruction] = 1

            # Calculate power consumed by instruction

            # print(instruction)
            if instruction in cycle_data:
                total_cycles += cycle_data[instruction]
                # total_cycles += cycle_count

    return frequency_dict, total_cycles


# Read in the MIPS code from the file
mips_code = read_mips_code()


# Count the frequency of each MIPS instruction  and total power consumed
frequency_dict, total_cycles = count_mips_frequency(mips_code)
# Print out the frequency of each MIPS instruction
for instruction, frequency in frequency_dict.items():
    print(instruction + ': ' + str(frequency))
    
print()
print("Total Cycles: ", total_cycles)


#EXECUTION TIME----------------------------------------
clock_speed = 1/freq
clock_speed = round(clock_speed, 4)
print(clock_speed)
execution_time = total_cycles*clock_speed

print("Execution time is %.4f microsecond" % execution_time)


