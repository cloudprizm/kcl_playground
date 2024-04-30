protocol ServiceAProtocol:
    serviceA?: {str:}

mixin ServiceAMixin for ServiceAProtocol:
    serviceAConfig?: {str:}

    if serviceA:
        labels.serviceA = "enabled"  # this is nice - top level labels

        serviceAConfig = {
            labels.serviceA = "enabled"
            labels.serviceADetails = serviceA.someValue
        }

value = 'Hello World!'