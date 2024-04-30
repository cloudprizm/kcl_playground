protocol ServiceAProtocol:
    serviceA?: {str:}

mixin ServiceAMixin for ServiceAProtocol:
    serviceAConfig?: {str:}

    if serviceA:
        serviceAConfig = {
            labels.serviceA = "enabled"
            labels.serviceADetails = serviceA
        }

value = 'Hello World!'