package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestExampleCompleteRepo(t *testing.T) {
	t.Parallel()

	repoName := fmt.Sprintf("repo-name-%s", random.UniqueId())
	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "../examples/complete-github-repo",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"name":       repoName,
			"visibility": "private",
		},
	}

	// At the end of the test, clean up everything that it created
	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndPlan(t, terraformOptions)
	terraform.ApplyAndIdempotent(t, terraformOptions)
}
