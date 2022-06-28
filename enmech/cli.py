import logging
import click

LOGGER = logging.getLogger(__name__)


@click.command()
def main():
    print("hello enmech")
