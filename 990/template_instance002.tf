data "external" "example" {
 program = ["python3", "-c", "import json; import subprocess; print(json.dumps({'output': str(subprocess.getoutput('bash instance.tpl'))}))"]
}
 
resource "null_resource" "null" {
 triggers = {
    output = data.external.example.result.output
 }
}