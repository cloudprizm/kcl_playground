import basic_example
import composition

value = basic_example.value

schema MyResource(composition.Resource):
    my_label: str = name

value2 = MyResource {
    name: "test"
    labels: {}
    serviceA: {
        someValue: True
    }
}