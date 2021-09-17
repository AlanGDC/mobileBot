for file in /Users/integracioncontinua/Workspace/automation-mobile/test/features/yellow/payments/ToDo/3_Done/Ready/*
do
    #whatever you need with "$file"
     wdio ./config/wdio.android.js --spec "$file"
done