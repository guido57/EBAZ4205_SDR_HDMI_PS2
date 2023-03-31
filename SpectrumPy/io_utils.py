import os
import subprocess
import re
import mmap

DEV_ADC_TEST_SWITCH = "/dev/uio0"
DEV_DDS_TEST_GEN    = "/dev/uio1" 
DEV_DDS_LO          = "/dev/uio2"
DEV_FILTER_GAIN     = "/dev/uio3" 
DEV_DEC_RATE_I      = "/dev/uio4"
DEV_DEC_RATE_Q      = "/dev/uio5"
DEV_RF_CAPTURE      = "/dev/uio6"

MAP_MASK = mmap.PAGESIZE - 1


class UIO:

	def __init__(self, devuio ) :
		self.devuio = devuio
		self.fd = os.open(devuio, os.O_RDWR | os.O_SYNC)
		self.mem = mmap.mmap(self.fd, mmap.PAGESIZE, mmap.MAP_SHARED, 
		       mmap.PROT_READ | mmap.PROT_WRITE, offset=0)

	def __del__(self):
		self.Close()

	def Close(self):
		self.mem.close()
		os.close(self.fd)		


class DDS_LO(UIO):
	def __init__(self ) :
		UIO(DEV_DDS_LO)




def value_to_hex(value):
	return '0x%08x' % value


def read_addr(mem, addr, length):
	global MAP_MASK
	mem.seek(addr & MAP_MASK)
	# print mem.size()
	val = 0x0
	for i in range(length):
		val |= ord(mem.read_byte()) << (i * 8)
	return val


def write_addr(mem, addr, value, length):
	global MAP_MASK
	mem.seek(addr & MAP_MASK)
	valueString = ""
	for i in range(length):
		valueString += chr((value >> (i*8)) & 0xff)
	mem.write(valueString)


def read(addr, length=4):
	f = os.open("/dev/uio0", os.O_RDWR | os.O_SYNC)
	mem = mmap.mmap(f, mmap.PAGESIZE, mmap.MAP_SHARED,
	                mmap.PROT_READ | mmap.PROT_WRITE, offset=addr & ~MAP_MASK)
	# print mem, hex(addr)
	val = read_addr(mem, addr, length)
	mem.close()
	os.close(f)
	return val


def write(addr, value, length=4, mask=0xffffffff):
	f = os.open("/dev/mem", os.O_RDWR)
	# print "/dev/mem opened"
	mem = mmap.mmap(f, mmap.PAGESIZE, mmap.MAP_SHARED, mmap.PROT_READ | mmap.PROT_WRITE, offset=addr & ~MAP_MASK)
	# print "mmap made"
  	# read old value
  		
	readValue = read_addr(mem, addr, length)
	# print "value:",value_to_hex(readValue),"read"
	# apply mask
	maskedValue = value | (readValue & ~mask)
  	# write new value
	write_addr(mem, addr, maskedValue, length)
  	# print "value:",value_to_hex(maskedValue),"written"
	# read new value
	newValue = read_addr(mem, addr, length)
	# print "value:",value_to_hex(newValue),"read"
	mem.close()
	os.close(f)
	return newValue

def append_hex(a, b):
	sizeof_b = 0
	# get size of b in bits
	while((b >> sizeof_b) > 0):
		sizeof_b += 1
		if sizeof_b < 4:sizeof_b = 4
	else:
		# align answer to nearest 4 bits (hex digit)
		sizeof_b += sizeof_b % 4
	return (a << sizeof_b) | b


def toHex(reg_string):
	output = 0x0
	for j in range((len(reg_string) / 4)):
		nibble = reg_string[(j * 4):((j * 4)+4)]
		if nibble == '0000':
			output = (append_hex(output, 0x0))
		elif nibble == '0001':
			output = (append_hex(output, 0x1))
		elif nibble == '0010':
			output = (append_hex(output, 0x2))
		elif nibble == '0011':
			output = (append_hex(output, 0x3))
		elif nibble == '0100':
			output = (append_hex(output, 0x4))
		elif nibble == '0101':
			output = (append_hex(output, 0x5))
		elif nibble == '0110':
			output = (append_hex(output, 0x6))
		elif nibble == '0111':
			output = (append_hex(output, 0x7))
		elif nibble == '1000':
			output = (append_hex(output, 0x8))
		elif nibble == '1001':
			output = (append_hex(output, 0x9))
		elif nibble == '1010':
			output = (append_hex(output, 0xA))
		elif nibble == '1011':
			output = (append_hex(output, 0xB))
		elif nibble == '1100':
			output = (append_hex(output, 0xC))
		elif nibble == '1101':
			output = (append_hex(output, 0xD))
		elif nibble == '1110':
			output = (append_hex(output, 0xE))
		else:
			output = (append_hex(output, 0xF))
	return output
	
def get_ip_addr(string):
	addr_temp = string.split('@')
	addr = addr_temp[1]
	if len(addr) == 0:
		print('Error: no address found')
		return 0
	output = 0x0
	for j in range(len(addr)):
		digit = addr[j]
		if digit == '0':
			output = (append_hex(output, 0x0))
		elif digit == '1':
			output = (append_hex(output, 0x1))
		elif digit == '2':
			output = (append_hex(output, 0x2))
		elif digit == '3':
			output = (append_hex(output, 0x3))
		elif digit == '4':
			output = (append_hex(output, 0x4))
		elif digit == '5':
			output = (append_hex(output, 0x5))
		elif digit == '6':
			output = (append_hex(output, 0x6))
		elif digit == '7':
			output = (append_hex(output, 0x7))
		elif digit == '8':
			output = (append_hex(output, 0x8))
		elif digit == '9':
			output = (append_hex(output, 0x9))
		elif digit == 'a':
			output = (append_hex(output, 0xa))
		elif digit == 'b':
			output = (append_hex(output, 0xb))
		elif digit == 'c':
			output = (append_hex(output, 0xc))
		elif digit == 'd':
			output = (append_hex(output, 0xd))
		elif digit == 'e':
			output = (append_hex(output, 0xe))
		else:
			output = (append_hex(output, 0xf))
	return output

def is_ip_node(ip):
	found = re.findall('@', ip)
	if len(found) > 0:
		return 1
	else:
		return 0
		
def is_hier(ip):
	if "/" in ip:
		return 1
	else:
		return 0
		
# returns a tupple
def sub_command(command):
	# print('executing command: ' + command)
	cmd = [command]
	proc = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	out, err = proc.communicate()
	exitcode = proc.returncode
	return exitcode, out, err
	

def get_property(ip_name, property):
	ip = search_ip(ip_name)
	if len(ip) > 0:
		path = '/proc/device-tree/amba/'
		temp = sub_command('cat '+path+ip_name+'/'+property)
		prop = temp[1].decode('ascii').strip().strip('\x00')	
		return(prop)
	else:
		print('Error: ' + ip_name + ' not found')

def search_ip(ip_name):
	list_ips = []
	path = '/proc/device-tree/amba*/'
	temp = sub_command('ls '+path)
	ips = str.split(temp[1])
	for ip in ips:
		found = re.findall(ip_name, ip)
		if len(found) > 0 or ip_name == 'all_ip' and is_ip_node(ip) == 1 and is_hier(ip) == 0:
			list_ips.append(ip)
	return(list_ips)

# only supports one property for now
def get_ip(*argsv, **kwargs):
	ret_ip = []
	if len(argsv) == 1:
		ip_name = argsv[0]
	else:
		ip_name = 'all_ip'
	ips = search_ip(ip_name)
	if kwargs:
		for prop, prop_val in kwargs.items():
			print('Return for all IP containing ' + ip_name + ' with ' + prop + ' = ' + prop_val)
			for ip in ips:
				dt_prop_val = get_property(ip, prop)
				# print(dt_prop_val)
				val_found = re.findall(dt_prop_val, prop_val)
				if len(val_found) > 0:
					ret_ip.append(ip)
					# return ip
		if len(ret_ip) > 0:
			return ret_ip
		else:
			return ips
	else:
		print('Return for all IP containing ' + ip_name)
		return ips


def read_mdio(base_addr, phy_addr, reg_offset):
	mdio_reg = '0110100000000000000000'
	new_line = mdio_reg[:4] + format(phy_addr, '05b') + format(reg_offset, '05b') + mdio_reg[4:]
	hex_string = toHex(new_line)
	value_to_hex(write(base_addr, hex_string))
	data = read(base_addr) & 0xffff
	return (format(data, '#06x'))

def get_phy_addr(base_addr):
	i = 0
	while(i != 31):
		test = read_mdio(base_addr, i, 0)
		if test != '0xffff':
			print('phy address found: ' + hex(i))
			return(i)
		i = i + 1
	return -1
	
def mii_dump():
	eth_addr_temp = get_ip('ethernet', status='okay')
	eth_addr = get_ip_addr(eth_addr_temp[0])
	if eth_addr > 0:
		base_addr = eth_addr + 0x34
		print('found valid ethernet IP at ' + hex(base_addr))
	else:
		return -1
		
	phy_addr = get_phy_addr(base_addr)
	if phy_addr == -1:
		print('Error: No valid phy address for' + hex(base_addr))
		return -1

	mii_name = ["MII Basic Mode Control",
                "MII Basic Mode Status",
                "MII PHY ID 1",
                "MII PHY ID 2",
                "MII Advertisement Control",
                "MII Link Parner Ability",
                "MII Expansion",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII 1000BASE-T Control",
                "MII 1000BASE-T Status",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Extended Status",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Disconnect Counter",
                "MII False Carrier Counter",
                "MII N-way Auto Neg Test",
                "MII Receive Error Counter",
                "MII Silicon Revision",
                "MII TPI Status for 10 Mbps",
                "MII Network Interface Config",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Manf Specific",
                "MII Manf Specific"]
                
	for i in range(0x20):
		print("{0!s:38} {1}".format(mii_name[i] + ' Register:',
                                    read_mdio(base_addr, phy_addr, i)))
	

if __name__ == '__main__':
    
	#xx = read(0x41210000)
	xx = read(0)
	print(xx)
