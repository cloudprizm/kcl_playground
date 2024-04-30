import config
import service
import data

cfg = config.Config {
    labels.test_1 = "abc"
    labels.test_2 = "cde"
}

cfg_2 = config.Config {
}

value = "${config.value}${service.value}${data.value}${cfg.labels}${cfg_2.labels}"