variable "allocated_storage" {
  type = number
  default = 10
}
variable "db_name" {
  type = string
  default = ""
}
variable "engine" {
  type = string
  default = ""

}
variable "engine_version" {
    type = number
 default = 1
}
variable "instance_class" {
  type = string
  default = "value"
}
variable "username" {
  type = string
  default = "value"
}
variable "password" {
  type = string
  default = "value"
}
variable "parameter_group_name" {
  type = string
  default = "value"
}
variable "skip_final_snapshot" {
    type = bool
    default = false
}