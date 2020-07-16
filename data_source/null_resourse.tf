resource null_resource "Sera" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
      connection {
          type = "ssh"
          user = "ubuntu"
          private_key = "${file("~/.ssh/id_rsa.pub")}""
          host = "{aws_instance.web.public_ip}"

          Inline = [
              "sudo apt-get inatall telnet -y"''
              "sudo mkdir /tmp/ubuntu",
              "w",
              "free -m",
              "sleep 5",
              "sudo apt-get install wget -y",
              "wget https://wordpress.org/latest.tar.gz",
          ]
  }
}
