package test

import (
  "testing"
  "github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformInfra(t *testing.T) {
  terraformOptions := &terraform.Options{
    TerraformDir: "../environment/dev",
    TerraformBinary: "terraform",
  }

  terraform.InitAndPlan(t, terraformOptions)
}
