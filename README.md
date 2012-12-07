## Introduction
FakeS3 Rack is a lightweight mountable Rack server that responds to the same calls Amazon S3 responds to.
It is extremely useful for testing of S3 in a sandbox environment without actually
making calls to Amazon, which not only require network, but also cost you precious dollars.

The goal of Fake S3 is to minimize runtime dependencies and be more of a
development tool to test S3 calls in your code rather than a production server
looking to duplicate S3 functionality.  Trying RiakCS, ParkPlace/Boardwalk, or
Ceph might be a place to start if that is your goal.

FakeS3 Rack doesn't support all of the S3 command set, but the basic ones like put, get,
list, copy, and make bucket are supported.  More coming soon.

## Installation

    gem install fakes3-rack

## Running Tests

Start the test server using

    rake test_server

Then in another terminal window run

    rake test

It is a TODO to get this to be just one command
