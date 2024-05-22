from dotenv import load_dotenv
import click
import os

load_dotenv()


@click.command()
@click.option('--option1')
@click.option('--option2')
def main(option1,option2):
    print(f"Option 1 {option1} - Option 2 {option2}")
    print(os.environ.get("KEY"))
    return

if __name__ == '__main__':
    main()