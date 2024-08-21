## Installation of Terraform
- Go to https://developer.hashicorp.com/terraform/install?product_intent=terraform
~~~
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
~~~
### References
- https://registry.terraform.io/browse/providers
- https://registry.terraform.io/providers/integrations/github/latest/docs
- https://developer.hashicorp.com/terraform/language/functions

### Run below commands

~~~
> terraform init
> terraform validate         
> terraform providers
> terraform apply --auto-approve
> terraform destroy --auto-approve
~~~
### Run below command Destroy any specific resource  
~~~
> terraform destroy --target github_repository.terraform-repo-ref_1 --auto-approve
~~~


##### ~/Doc/G/python_fundamentals/Examples/Terraform/4 main ?1 > terraform init                                                                 
~~~
Initializing the backend...
Initializing provider plugins...
- Finding latest version of hashicorp/github...
- Installing hashicorp/github v6.2.3...
- Installed hashicorp/github v6.2.3 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

╷
│ Warning: Additional provider information from registry
│ 
│ The remote registry returned warnings for registry.terraform.io/hashicorp/github:
│ - For users on Terraform 0.13 or greater, this provider has moved to integrations/github. Please update your source in required_providers.
╵
Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
~~~

##### ~/Doc/G/python_fundamentals/Examples/Terraform/4 main ?1 > terraform validate
~~~
Success! The configuration is valid.
~~~

##### ~/Doc/G/python_fundamentals/Examples/Terraform/4 main ?1 > terraform apply --auto-approve
~~~
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.terraform-repo-creation-ref-1 will be created
  + resource "github_repository" "terraform-repo-creation-ref-1" {
      + allow_auto_merge            = false
      + allow_merge_commit          = true
      + allow_rebase_merge          = true
      + allow_squash_merge          = true
      + archived                    = false
      + auto_init                   = true
      + default_branch              = (known after apply)
      + delete_branch_on_merge      = false
      + description                 = "terraform-repo-creation-example-1"
      + etag                        = (known after apply)
      + full_name                   = (known after apply)
      + git_clone_url               = (known after apply)
      + html_url                    = (known after apply)
      + http_clone_url              = (known after apply)
      + id                          = (known after apply)
      + merge_commit_message        = "PR_TITLE"
      + merge_commit_title          = "MERGE_MESSAGE"
      + name                        = "terraform-repo-creation-example-1"
      + node_id                     = (known after apply)
      + primary_language            = (known after apply)
      + private                     = (known after apply)
      + repo_id                     = (known after apply)
      + squash_merge_commit_message = "COMMIT_MESSAGES"
      + squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
      + ssh_clone_url               = (known after apply)
      + svn_url                     = (known after apply)
      + topics                      = (known after apply)
      + visibility                  = "public"
      + web_commit_signoff_required = false

      + security_and_analysis (known after apply)
    }

  # github_repository.terraform-repo-creation-ref-2 will be created
  + resource "github_repository" "terraform-repo-creation-ref-2" {
      + allow_auto_merge            = false
      + allow_merge_commit          = true
      + allow_rebase_merge          = true
      + allow_squash_merge          = true
      + archived                    = false
      + auto_init                   = true
      + default_branch              = (known after apply)
      + delete_branch_on_merge      = false
      + description                 = "terraform-repo-creation-example-2"
      + etag                        = (known after apply)
      + full_name                   = (known after apply)
      + git_clone_url               = (known after apply)
      + html_url                    = (known after apply)
      + http_clone_url              = (known after apply)
      + id                          = (known after apply)
      + merge_commit_message        = "PR_TITLE"
      + merge_commit_title          = "MERGE_MESSAGE"
      + name                        = "terraform-repo-creation-example-2"
      + node_id                     = (known after apply)
      + primary_language            = (known after apply)
      + private                     = (known after apply)
      + repo_id                     = (known after apply)
      + squash_merge_commit_message = "COMMIT_MESSAGES"
      + squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
      + ssh_clone_url               = (known after apply)
      + svn_url                     = (known after apply)
      + topics                      = (known after apply)
      + visibility                  = "public"
      + web_commit_signoff_required = false

      + security_and_analysis (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.
github_repository.terraform-repo-creation-ref-1: Creating...
github_repository.terraform-repo-creation-ref-2: Creating...
github_repository.terraform-repo-creation-ref-1: Still creating... [10s elapsed]
github_repository.terraform-repo-creation-ref-2: Still creating... [10s elapsed]
github_repository.terraform-repo-creation-ref-1: Creation complete after 11s [id=terraform-repo-creation-example-1]
github_repository.terraform-repo-creation-ref-2: Creation complete after 11s [id=terraform-repo-creation-example-2]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

~~~

##### ~/Doc/G/python_fundamentals/E/Terraform/4 main ?1 > terraform destroy --auto-approve
~~~
github_repository.terraform-repo-creation-ref-1: Refreshing state... [id=terraform-repo-creation-example-1]
github_repository.terraform-repo-creation-ref-2: Refreshing state... [id=terraform-repo-creation-example-2]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # github_repository.terraform-repo-creation-ref-1 will be destroyed
  - resource "github_repository" "terraform-repo-creation-ref-1" {
      - allow_auto_merge            = false -> null
      - allow_merge_commit          = true -> null
      - allow_rebase_merge          = true -> null
      - allow_squash_merge          = true -> null
      - allow_update_branch         = false -> null
      - archived                    = false -> null
      - auto_init                   = true -> null
      - default_branch              = "main" -> null
      - delete_branch_on_merge      = false -> null
      - description                 = "terraform-repo-creation-example-1" -> null
      - etag                        = "W/\"935ed39807d65e2b6dc366c212b752190c499bc3ed307cf41a817ca7118dc890\"" -> null
      - full_name                   = "DSS049/terraform-repo-creation-example-1" -> null
      - git_clone_url               = "git://github.com/DSS049/terraform-repo-creation-example-1.git" -> null
      - has_discussions             = false -> null
      - has_downloads               = false -> null
      - has_issues                  = false -> null
      - has_projects                = false -> null
      - has_wiki                    = false -> null
      - html_url                    = "https://github.com/DSS049/terraform-repo-creation-example-1" -> null
      - http_clone_url              = "https://github.com/DSS049/terraform-repo-creation-example-1.git" -> null
      - id                          = "terraform-repo-creation-example-1" -> null
      - is_template                 = false -> null
      - merge_commit_message        = "PR_TITLE" -> null
      - merge_commit_title          = "MERGE_MESSAGE" -> null
      - name                        = "terraform-repo-creation-example-1" -> null
      - node_id                     = "R_kgDOMmWD2A" -> null
      - private                     = false -> null
      - repo_id                     = 845513688 -> null
      - squash_merge_commit_message = "COMMIT_MESSAGES" -> null
      - squash_merge_commit_title   = "COMMIT_OR_PR_TITLE" -> null
      - ssh_clone_url               = "git@github.com:DSS049/terraform-repo-creation-example-1.git" -> null
      - svn_url                     = "https://github.com/DSS049/terraform-repo-creation-example-1" -> null
      - topics                      = [] -> null
      - visibility                  = "public" -> null
      - vulnerability_alerts        = false -> null
      - web_commit_signoff_required = false -> null
        # (2 unchanged attributes hidden)

      - security_and_analysis {
          - secret_scanning {
              - status = "enabled" -> null
            }
          - secret_scanning_push_protection {
              - status = "enabled" -> null
            }
        }
    }

  # github_repository.terraform-repo-creation-ref-2 will be destroyed
  - resource "github_repository" "terraform-repo-creation-ref-2" {
      - allow_auto_merge            = false -> null
      - allow_merge_commit          = true -> null
      - allow_rebase_merge          = true -> null
      - allow_squash_merge          = true -> null
      - allow_update_branch         = false -> null
      - archived                    = false -> null
      - auto_init                   = true -> null
      - default_branch              = "main" -> null
      - delete_branch_on_merge      = false -> null
      - description                 = "terraform-repo-creation-example-2" -> null
      - etag                        = "W/\"1b6f9fe1a4a4149d5ecdea462d2a1133753f23b965f6b791d8bbb55df81a75c9\"" -> null
      - full_name                   = "DSS049/terraform-repo-creation-example-2" -> null
      - git_clone_url               = "git://github.com/DSS049/terraform-repo-creation-example-2.git" -> null
      - has_discussions             = false -> null
      - has_downloads               = false -> null
      - has_issues                  = false -> null
      - has_projects                = false -> null
      - has_wiki                    = false -> null
      - html_url                    = "https://github.com/DSS049/terraform-repo-creation-example-2" -> null
      - http_clone_url              = "https://github.com/DSS049/terraform-repo-creation-example-2.git" -> null
      - id                          = "terraform-repo-creation-example-2" -> null
      - is_template                 = false -> null
      - merge_commit_message        = "PR_TITLE" -> null
      - merge_commit_title          = "MERGE_MESSAGE" -> null
      - name                        = "terraform-repo-creation-example-2" -> null
      - node_id                     = "R_kgDOMmWD5w" -> null
      - private                     = false -> null
      - repo_id                     = 845513703 -> null
      - squash_merge_commit_message = "COMMIT_MESSAGES" -> null
      - squash_merge_commit_title   = "COMMIT_OR_PR_TITLE" -> null
      - ssh_clone_url               = "git@github.com:DSS049/terraform-repo-creation-example-2.git" -> null
      - svn_url                     = "https://github.com/DSS049/terraform-repo-creation-example-2" -> null
      - topics                      = [] -> null
      - visibility                  = "public" -> null
      - vulnerability_alerts        = false -> null
      - web_commit_signoff_required = false -> null
        # (2 unchanged attributes hidden)

      - security_and_analysis {
          - secret_scanning {
              - status = "enabled" -> null
            }
          - secret_scanning_push_protection {
              - status = "enabled" -> null
            }
        }
    }

Plan: 0 to add, 0 to change, 2 to destroy.
github_repository.terraform-repo-creation-ref-1: Destroying... [id=terraform-repo-creation-example-1]
github_repository.terraform-repo-creation-ref-2: Destroying... [id=terraform-repo-creation-example-2]
github_repository.terraform-repo-creation-ref-2: Destruction complete after 1s
github_repository.terraform-repo-creation-ref-1: Destruction complete after 2s

Destroy complete! Resources: 2 destroyed.
                                                                                   
~~~
