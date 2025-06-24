instances = {
  frontened = "t2.micro"
  catalogue = "t3.micro"
  mongodb   = "t3.micro"
  redis     = "t3.micro"
  user      = "t3.micro"
  cart      = "t3.micro"
  payment   = "t2.micro"
}

env     = "dev"
zone_id = "Z01884403UGIZR0KUV9NU"
domain  = "unlockkey.online"

parameters = {
  frontened_catalogue   = { name = "frontened/catalogue/${env}/URL", value = "http://catalogue.${env}.${domain}:8080/" }
  MongoDB               = { name = "MongoDB/${env}/URL", value = "mongodb.${env}.${domain}" }
  mongodb_catalogue     = { name = "catalogue_MongoDB/${env}/URL", value = "mongodb://mongodb.${env}.${domain}:27017/catalogue" }
  mongodb_true          = { name = "MongoDB_true/${env}/URL", value = "MONGO=true" }
  mongodb_user          = { name = "user_MongoDB/${env}/URL", value = "mongodb://mongodb.${env}.${domain}:27017/users" }
  frontened_User        = { name = "frontened/User/${env}/URL", value = "http://user.${env}.${domain}:8080/" }
  frontened_Cart        = { name = "frontened/Cart/${env}/URL", value = "http://cart.${env}.${domain}:8080/" }
  frontened_Payment     = { name = "frontened/Payment/${env}/URL", value = "http://payment.${env}.${domain}:8080/" }
  frontened_Shipping    = { name = "frontened/Shipping/${env}/URL", value = "http://shipping.${env}.${domain}:8080/" }
  Redis                 = { name = "Redis/${env}/URL", value = "redis.${env}.${domain}" }
  Mysql                 = { name = "Mysql/${env}/URL", value = "mysql.${env}.${domain}" }
  catalogue_port        = { name = "catalogue_port/${env}/URL", value = "8080" }
  shipping_cart         = { name = "cart_shipping/${env}/URL", value = "cart.${env}.${domain}:8080" }
  payment_cart_host     = { name = "payment_cart_host/${env}/URL", value = "cart.${env}.${domain}" }
  payment_cart_port     = { name = "payment_cart_port/${env}/URL", value = "8080" }
  payment_user_host     = { name = "payment_user_host/${env}/URL", value = "user.${env}.${domain}" }
  payment_user_port     = { name = "payment_user_host/${env}/URL", value = "8080" }
  payment_rabbitmq_host = { name = "rabbit/${env}/URL", vlaue = "rabbit.${env}.${domain}" }

}


