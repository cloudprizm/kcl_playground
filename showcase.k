import basic_example
import composition

value = basic_example.value

schema MyResource(composition.Resource):
    labels = {}
    my_label: str = name

myResource = MyResource {
    name: "test"
    serviceA: {
        someValue: True
    }
}