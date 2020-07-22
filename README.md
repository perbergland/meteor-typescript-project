Stub project created from meteor create --typescript to find root cause of 
https://github.com/meteor/meteor/issues/11074

Start with npm run test:server

When it works correctly, changing the contents of server-methods.ts should trigger a rebuild and 
that the tests run again.

## To switch typescript compiler to refapp:meteor-typescript

meteor remove typescript
meteor add refapp:meteor-typescript

## To switch typescript compiler to the meteor core compiler
meteor remove refapp:meteor-typescript
meteor add typescript
