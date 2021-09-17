#!/bin/bash
for filename in test/features/yellow/payments/ToDo/0_Pending/*.feature; do
    
        #cat "$filename" | grep Feature
        cat "$filename" | grep Scenario | grep -v "#"
    
done