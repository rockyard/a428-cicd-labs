#!/usr/bin/env sh


echo 'Now...'
echo 'Visit http://localhost:3000 to see your Node.js/React application in action.'
echo '(This is why you specified the "args ''-p 3000:3000''" parameter when you'
echo 'created your initial Pipeline as a

set -x
npm start &
sleep 1
echo $! > .pidfile
set -x
