import basic_example
import composition

value = basic_example.value

schema MyResource(composition.Resource):
    name_ref: str = name

myResource = MyResource {
    name: "test"
    serviceA: {
        someValue: True
    }
}

myResourceWithoutServiceDefinition = MyResource {
    name: "test"
}