from textwrap import wrap

def access_bit(data, num):
    base = int(num // 8)
    shift = 7 - int(num % 8)
    return (data[base] & (1 << shift)) >> shift

def block(pos, x):
    bits = [access_bit(x, i) for i in range(pos * 8, pos * 8 + 0x100)]
    ret = []
    for i in range(0, 0x110, 7):
        if (i > len(bits)):
            break
        ret.append(0)
        for j in range(7):
            if (i + j >= len(bits)):
                break
            ret[-1] += (2 ** (6 - j)) * bits[i + j]
    
    while len(ret) > 0x25:
        del ret[-1]
    
    ret[-1] = ret[-1] & 0b01111000

    return ret

def tosyx(x):
    final = [b'\xf0\x00\x20\x29\x00\x71\x02\x0c\x00\x00\x00\x02\x08\x09\xf7\xf0\x00\x20\x29\x00\x7c\x00\x30\x30\x30\x32\x38\x39\x00\x00\x00\x01\x00\x09\x03\x08\x0a\x0c\x0c\x08\x0e\x02\x04\x00\xf7']

    for i in range(0x20, len(x), 0x20):
        final.append(b'\xf0\x00 )\x00r' + bytes(block(i, x)) + b'\xf7')
    
    final.append(b'\xf0\x00 )\x00s' + bytes(block(0, x)) + b'\xf7')
    
    return b''.join(final)

in_file = open(input() + ".hex", "rb")
data = in_file.read()
in_file.close()

out_file = open(input() + ".syx", "wb")
out_file.write(tosyx(data))
out_file.close()
