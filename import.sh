cp ../ecdproxytest/proxytest .
cp ../ecdproxytest/ecd_proxy.conf .

fn=$(find /fpga/ecd_master2 | grep \.bit$)
if [ ! -z "${fn}" ]; then
    echo Copying ecd_master bitfile
   cp $fn ecd_master.bit
fi


fn=$(find /fpga/eecd2 | grep \.bit$)
if [ ! -z "${fn}" ]; then
    echo Copying eecd bitfile
   cp $fn eecd.bit
fi
