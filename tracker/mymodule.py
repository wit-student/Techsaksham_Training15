import os
workouts = []  # List to store workout entries
  # File to save workouts
filename='practicle.txt'
def enter_workout(name,duration,calories,typeworkout): 
    workout_entry = f"{name},{duration},{calories},{typeworkout}\n"
    workouts.append(workout_entry)
    print("Workout added successfully!")

def view_workouts(name):
       
    if not workouts: 
        print("{}".format(name))
        return
    print("\nSaved Workouts:")
    for i in workouts:
        print(i)
        
def save_workouts(): 
    try: 
        with open(filename, "a") as file: 
            file.writelines(workouts) 
            print("Workouts saved successfully!")
    except Exception as e: 
        print(f"Error saving workouts: {e}")

def load_workouts(): 
    with open(filename, "r") as file: 
        file.readlines()
        print("Workouts loaded successfully!")
def delete_plan():
    os.remove('practicle.txt')
        
  