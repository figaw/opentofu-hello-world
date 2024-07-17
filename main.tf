resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

output "foo_content" {
  value = local_file.foo.content
}

terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

provider "local" {
  # Configuration options
}
