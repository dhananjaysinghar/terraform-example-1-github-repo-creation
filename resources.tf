resource "github_repository" "terraform-repo-creation-ref-1" {
  name        = "${var.GIT_REPO_1}"
  description = "${var.GIT_REPO_1}"
  visibility = "public"
  auto_init = true
}

resource "github_repository" "terraform-repo-creation-ref-2" {
  name        = "${var.GIT_REPO_2}"
  description = "${var.GIT_REPO_2}"
  visibility = "public"
  auto_init = true
}