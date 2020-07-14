from setuptools import setup, find_packages

setup(
    name='FlakeyApp',
    packages=find_packages(),
    install_requires=[],
    #setup_requires=['pytest-runner'],
    tests_require=['pytest', 'pytest-pylint', 'pylint'],
    entry_points={
        'console_scripts': [
            'application = flakey_app.fancy_app:main'
        ]
    },
)
