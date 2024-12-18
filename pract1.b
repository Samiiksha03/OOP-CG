def neither_cricket_nor_badminton(all_students, cricket, badminton):
    """Returns students who play neither cricket nor badminton."""
    return all_students.difference(cricket.union(badminton))

def cricket_and_football_not_badminton(cricket, football, badminton):
    """Returns students who play cricket and football but not badminton."""
    return cricket.intersection(football).difference(badminton)

# Input function
def get_students(group_name):
    """Takes user input for a group and returns a set of student names."""
    print(f"Enter the names of students in {group_name}, separated by spaces:")
    return set(input().strip().split())

# Input data
all_students = get_students("All Students")
group_A = get_students("Group A (Cricket)")
group_B = get_students("Group B (Badminton)")
group_C = get_students("Group C (Football)")

# Menu for user choice
while True:
    print("\nChoose an option:")
    print("1. Number of students who play neither cricket nor badminton")
    print("2. Number of students who play cricket and football but not badminton")
    print("3. Quit")
    choice = input("Enter your choice (1/2/3): ")

    if choice == "1":
        neither = neither_cricket_nor_badminton(all_students, group_A, group_B)
        print(f"Number of students who play neither cricket nor badminton: {len(neither)}")
        print("List of students:", neither)
    elif choice == "2":
        cricket_football = cricket_and_football_not_badminton(group_A, group_C, group_B)
        print(f"Number of students who play cricket and football but not badminton: {len(cricket_football)}")
        print("List of students:", cricket_football)
    elif choice == "3":
        print("Exiting the program.")
        break
    else:
        print("Invalid choice. Please try again.")
        
