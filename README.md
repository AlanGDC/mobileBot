# mobileBot


1 -Install Appium
yarn global add appium
yarn global add appium-doctor
echo "Install appium"

2-Check Appium Doctor
 echo "Check appium doctor: "
appium-doctor


3- Install coreutils
brew install coreutils
echo "Install coreutils"

$ANDROID_HOME/tools/bin/sdkmanager --list

4- Download and install emulator image
 #$ANDROID_HOME/tools/bin/sdkmanager --update
$ANDROID_HOME/tools/bin/sdkmanager --list

echo "--install android image---"
echo "y" | $ANDROID_HOME/tools/bin/sdkmanager --install '$(EMULATOR_VERSION_28)'

echo "--install HAXM---"
#echo "y" | $ANDROID_HOME/tools/bin/sdkmanager --install 'extras;intel;Hardware_Accelerated_Execution_Manager'

5- Create avd device and start emulator
echo "-----Create avd device-----"
echo "no" | $ANDROID_HOME/tools/bin/avdmanager create avd -n android_emulator -k '$(EMULATOR_VERSION_28)' -d 17 --force
echo " "
echo "-----Create avd device-----"
echo " "

echo "Emulator created successfully, launching it"

echo " "
echo "-----Create Emulator-----"
# adb -e shell getprop init.svc.bootanim

nohup $ANDROID_HOME/emulator/emulator -avd android_emulator -gpu auto -no-window -camera-back none -camera-front none -memory 1536  -no-boot-anim -no-snapshot-save -accel on -engine qemu2 -no-audio > /dev/null 2>&1 &
#  -verbose -no-window -no-audio
echo "-----Create Emulator-----"

$ANDROID_HOME/platform-tools/adb devices

6- Reset adb
$ANDROID_HOME/platform-tools/adb kill-server && adb start-server

7- Wait For Emulator branch
chmod 755 ./utils/WaitForEmulator.sh
#gtimeout 5m ./utils/WaitForEmulator.sh
./utils/WaitForEmulator.sh
#gtimeout 15m $ANDROID_HOME/platform-tools/adb wait-for-device shell 'while [[ -z $(getprop sys.boot_completed | tr -d '\r') ]]; do sleep 1; done'

#$ANDROID_HOME/platform-tools/adb wait-for-device shell 'while [[ -z $(getprop sys.boot_completed | tr -d '\r') ]]; do sleep 1; done'

8 - Check Emulator Status

$ANDROID_HOME/platform-tools/adb devices
echo "Emulator started"

echo "Check emulator accele support"
$ANDROID_HOME/emulator/emulator -accel-check

echo "Check Apps running"
$ANDROID_HOME/platform-tools/adb shell ps


9 - Close "SystemUI isnt responding" if has
chmod 755 ./utils/checkANRopen.sh
./utils/checkANRopen.sh