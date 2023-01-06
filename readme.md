to install [terraformer](https://github.com/GoogleCloudPlatform/terraformer) on mac:
```
brew install --HEAD terraformer
```
if you get the plugin error:
```
.terraform.d/plugins/darwin_amd64: no such file or directory
```
run terraform init on [init.tf](init.tf) and copy the generated plugin under:
```
~/.terraform/providers/registry.terraform.io/hishicorp/{version}/darwin_arm64{or amd64}/*
```
to ~/.terraform.d/plugins/darwin_arm64{or amd64}/
```
see issue [590](https://github.com/GoogleCloudPlatform/terraformer/issues/590)

The attached terraformer.zip is an ARM64 bin ready to install and use. 
The attached terraform-provider-aws_v4.49.0_x5.zip is an ARM64 aws pulugin ready to be use.