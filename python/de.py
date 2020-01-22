from textwrap import wrap

def access_bit(data, num):
    base = int(num // 7)
    shift = 6 - int(num % 7)
    return (data[base] & (1 << shift)) >> shift

def block(x, replace):
    x = x.replace(replace, b'')
    bits = [access_bit(x, i) for i in range(len(x) * 7)]
    ret = []
    for i in range(0, len(bits), 8):
        ret.append(0)
        for j in range(8):
            if (i + j >= len(bits)):
                del ret[-1]
                break
            ret[-1] += (2 ** (7 - j)) * bits[i + j]
    return ret

def toihex(x):
    seventythree = None
    final = []

    for i in x:
        if len(i) == 0 or b'\xf0\x00 )\x00q' in i or b'\xf0\x00 )\x00|' in i or b'\xf0\x00 )\x00v' in i: # header, x checksum, cfw checksum
            continue

        if b'\xf0\x00 )\x00s' in i:
            seventythree = i
            continue

        final.append(block(i, b'\xf0\x00 )\x00r'))
    
    if seventythree != None:
        final.insert(0, block(seventythree, b'\xf0\x00 )\x00s'))
    
    return b''.join([bytes(i) for i in final])

in_file = open(input() + ".syx", "rb")
data = in_file.read()
in_file.close()

out_file = open(input() + ".hex", "wb")
out_file.write(toihex(data.split(b'\xf7')))
out_file.close()
