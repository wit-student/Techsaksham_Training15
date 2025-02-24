# -*- coding: utf-8 -*-
"""
Created on Thu Feb 20 07:19:03 2025

@author: saksh
"""
import mymodule
while True:
        name=input(("enter yout name:"))
    
        print("\n1. Enter Workout\n2. View Workouts\n3. Save Workouts\n4. Load Workouts\n5. Delete plan\n 6.exit")
        choice = input("Choose an option: ")

        if choice == "1":
            name = input("Enter workout name: ")
            duration = input("Enter duration (mins): ")
            calories = input("Enter calories burned: ")
            typeworkout=input("enter typeworkout:")
            mymodule.enter_workout(name, duration,calories,typeworkout)

        elif choice == "2":
            mymodule.view_workouts(name)

        elif choice == "3":
            mymodule.save_workouts()

        elif choice == "4":
            mymodule.load_workouts()

        elif choice == "5":
            
            mymodule.delete_plan();
            print("delte plan")

        elif choice=="6":
            print("exiting")
            break
        
           
            