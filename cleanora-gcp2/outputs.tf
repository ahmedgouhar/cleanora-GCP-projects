# output "vm_ip" {
#   value = module.template.public_ip
# }
output "website_url" {
  value = "http://${module.lb.lb_ip}"
}