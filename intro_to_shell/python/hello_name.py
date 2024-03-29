import sys

def main():
    if len(sys.argv) != 2:
        print("Usage: python3 hello_name.py <your name>")
        sys.exit(1)
    
    your_name = sys.argv[1]
    print(f"You entered: {your_name}")

if __name__ == "__main__":
    main()
