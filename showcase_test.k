import showcase

test_showcase = lambda {
    newResource = showcase.MyResource {
        name = "my-app"
        serviceA: {
            someValue: True,
            fromTest: True
        }
    }

    assert newResource.serviceA.fromTest == True
    assert newResource.labels.serviceA == "enabled"

    newEmptyResource = showcase.MyResource {
        name = "my-app"
    }

    assert not newEmptyResource.serviceAConfig
    assert not newEmptyResource.serviceA
    assert not newEmptyResource.labels.serviceA
}

