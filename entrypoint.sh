#!/bin/sh -l

if [ "$2" == 'dotnet' ]
then
  profile="dotnet build $3"
  echo "::set-output name=profile::$profile"
elif [ "$2" == 'angular' ]
then
  profile="npm install && npm run build --if-present"
  echo "::set-output name=profile::$profile"
elif [ "$2" == 'python' ]
then
  #profile="python -m pip install --upgrade pip && pip install -r requirements.txt"
  profile="python -m pip install --upgrade pip"
  echo "::set-output name=profile::$profile"
else
  profile="echo \"Please select from dotnet , angular or python \""
  echo "::set-output name=profile::$profile"
fi

#echo "Hello $2"
#profile="dotnet build"
#echo "::set-output name=profile::$profile"

#time=$(date)
#echo "::set-output name=time::$time"