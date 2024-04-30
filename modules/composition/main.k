import service

schema Composition:
    name: str
    labels: {str:str} = {}

schema Resource(Composition):
    mixin [service.ServiceAMixin]
    serviceA?: {str:}
    """ pvc user interface data defined by PersistentVolumeClaimMixin """

value = 'Hello World from config!'