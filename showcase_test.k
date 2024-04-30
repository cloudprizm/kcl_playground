import showcase

test_showcase = lambda {
    newResource = showcase.MyResource {
        name = "my-app"
        serviceA: {
            someValue: True,
            fromTest: True
        }
    }

    assert showcase.myResource.name == "test"
    assert newResource.serviceA.fromTest == True
}

