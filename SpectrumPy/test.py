import debugpy

# 5678 is the default attach port in the VS Code debug configurations. Unless a host and port are specified, host defaults to 127.0.0.1
#debugpy.listen(("0.0.0.0",5678))
print("Waiting for debugger attach")
#debugpy.wait_for_client()
debugpy.breakpoint()
print('break on this line')

import time

print('Running script on remote EBAZ...')
time.sleep(3)

print('All done!')

print('All done2!')


print('All donetto3!')


print('All done4!')
