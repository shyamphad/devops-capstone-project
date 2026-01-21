theia@theiaopenshift-shyamworldsp:/home/project/devops-capstone-project$ nosetests -v --with-spec --spec-color --with-coverage --cover-package=service

It should call the db-create command ... ok
It should Create an account and add it to the database ... ok
It should Create an Account and assert that it exists ... ok
It should Delete an account from the database ... ok
It should Deserialize an account ... ok
It should not Deserialize an account with a KeyError ... ok
It should not Deserialize an account with a TypeError ... ok
It should Find an Account by name ... ok
It should List all Accounts in the database ... ok
It should Read an account ... ok
It should Serialize an account ... ok
It should Update an account ... ok
It should not Create an Account when sending the wrong data ... ok
It should Create a new Account ... ok
It should be healthy ... ok
It should get 200_OK from the Home Page ... ok
It should not Create an Account when sending the wrong media type ... ok
It should return security headers ... ok
It should return a CORS header ... ok

Name                               Stmts   Miss  Cover   Missing
----------------------------------------------------------------
service/__init__.py                   22      3    86%   36-39
service/common/__init__.py             0      0   100%
service/common/cli_commands.py         7      0   100%
service/common/error_handlers.py      32      9    72%   35-37, 46-48, 76-78
service/common/log_handlers.py        10      1    90%   21
service/common/status.py              45      0   100%
service/config.py                     11      0   100%
service/models.py                     69      3    96%   32, 98, 127
service/routes.py                     56     22    61%   111-115, 124-128, 137-143, 152-156
----------------------------------------------------------------
TOTAL                                252     38    85%
----------------------------------------------------------------------
Ran 19 tests in 0.95s

OK
