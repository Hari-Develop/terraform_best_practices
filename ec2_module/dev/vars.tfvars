instances = {
  frontened = "t2.micro"
  catalogue = "t3.micro"
  mongodb   = "t3.micro"
  redis     = "t3.micro"  
  user      = "t3.micro"
  cart      = "t3.micro"
  payment   = "t3.micro"
}

env     = "dev"
zone_id = "Z01884403UGIZR0KUV9NU"
domain  = "unlockkey.online"

parameters = {
  catalogue = { name = "catalogue/${env}/URL", value = "http://catalogue.${env}.${domain}:8080/" }
  MongoDB   = { name = "MongoDB/${env}/URL", value = "http://mongodb.${env}.${domain}:8080/" }
  User      = { name = "User/${env}/URL", value = "http://user.${env}.${domain}:8080/" }
  Cart      = { name = "Cart/${env}/URL", value = "http://cart.${env}.${domain}:8080/" }
  Payment   = { name = "Payment/${env}/URL", value = "http://payment.${env}.${domain}:8080/" }
  Shipping  = { name = "Shipping/${env}/URL", value = "http://shipping.${env}.${domain}:8080/" }
  Redis     = { name = "Redis./${env}/URL", value = "http://redis.${env}.${domain}:8080/" }
  Mysql     = { name = "Mysql./${env}/URL", value = "http://mysql.${env}.${domain}:8080/" }
}


