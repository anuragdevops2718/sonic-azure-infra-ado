package test

import (
  "testing"
  "github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformInfra(t *testing.T) {
  terraformOptions := &terraform.Options{
    TerraformDir: "../infrastructure_landing_zone/environment/dev",
  }

  terraform.InitAndPlan(t, terraformOptions)
}
