# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. My sample_var value "

}

resource "null_resource" "sleep" {


  provisioner "local-exec" {
    command = "echo wpid= $IC_SCHEMATICS_WORKSPACE_ID"
    timeout = 10

  }
}
