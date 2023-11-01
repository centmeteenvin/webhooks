# Github Webhooks Server
A simple dart program that can execute a simple script on activation of the POST /webhook endpoint.

## How it works
The program reads in the configuration.json file. You can find an the template file as `configuration.TEMPLATE.json`.
In this file you define which repository and branch on that repository to listen to. When a push commit on the remote activates the webhook it will parse the json into a custom object.
It will compare the incoming repository plus branch condition to execute the corresponding script. This script will run detached from the dart program instance.

## How to start
Create a configuration.json file, e.g:
```
{
    "configuration_entries": [
        {
            "repository_name":"centmeteenvin/foo",
            "branch":"/bar",
            "executable":"test/resources/test.cmd"
        }
    ]
}
```
Then use `dart run bin/server.dart [ip-address] [port]`.
Any script will be run detached from the dart program itself. The stderr and stdout will print to console.
