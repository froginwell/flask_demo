import os

from setuptools import find_packages, setup


here = os.path.abspath(os.path.dirname(__file__))
install_requires = [
    'flask',
]
about = {}
with open(os.path.join(here, 'flask_demo', '__version__.py'), 'r') as f:
    exec(f.read(), about)


setup(
    name='flask_demo',
    version=about['__version__'],
    packages=find_packages(exclude=['tests.*', 'tests']),
    description='flask_demo',
    author='froginwell',
    include_package_data=True,
    platforms='any',
    install_requires=install_requires,
    zip_safe=True,
    entry_points={}
)
