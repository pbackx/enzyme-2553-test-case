This is a small test project to demonstrate an issue in the Enzyme adapter for React 16.14. It was reported right here:
https://github.com/enzymejs/enzyme/issues/2553

To demonstrate the problem, run the following:

    docker build . -f react.16.14.0.Dockerfile -t mocha_test:16.14.0
    docker run --rm mocha_test:16.14.0

This will hang the container and you will need to forcefully stop it.

However, if you do the same with React 16.4.2:

    docker build . -f react.16.4.2.Dockerfile -t mocha_test:16.4.2
    docker run --rm mocha_test:16.4.2

It works correctly.

I was able to track it down to the `import Adapter from 'enzyme-adapter-react-16';` statement in `test/my.test.js`.
If this line is commented out everything works correctly.
