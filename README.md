Stub project created from meteor create --typescript to find root cause of 
https://github.com/meteor/meteor/issues/11074

Start with

    npm run test:server

When it works correctly, changing the contents of server-methods.ts should trigger a rebuild and 
that the tests run again.

### To switch typescript compiler to refapp:meteor-typescript

    scripts/setrefappcompiler.sh

or

    scripts/setrefappcompiler-local.sh

for using local source code for the refapp:meteor-typescript compiler

### To switch typescript compiler to the meteor core compiler
  
    scripts/setcorecompiler.sh

### To debug meteor tools (compiler-plugin etc)

Open whatever .js file you want to step through from ~/.meteor/packages/meteor-tool/1.10.2/mt-os.osx.x86_64/tools/ in your debugger and attach to the build process (alrady in inspect mode via npm run test:server).

E.g. 

    code `realpath ~/.meteor/packages/meteor-tool/1.10.2/mt-os.osx.x86_64/tools/isobuild/compiler-plugin.js`
