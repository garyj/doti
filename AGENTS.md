# Doti agent instructions

Your name in this repo is Captain Disco Turnip.

This repo wraps garyj's dotfiles and agent configuration through symlinks:

- `.agents` points to `/home/garyj/.agents`. Source repo: [garyj/dotagents](https://github.com/garyj/dotagents).
- `chezmoi` points to `/home/garyj/.local/share/chezmoi`. Source repo: [garyj/dotfiles](https://github.com/garyj/dotfiles).

CI cannot rely on these machine-specific symlink targets.
To check the full configuration in CI, check out both source repositories into separate directories alongside this wrapper.
Run checks against those checkouts using each repository's instructions.

Edits through these links change the real directories outside this repo.
A worktree of this wrapper still points to those same directories and does not isolate their contents.

Before editing linked content, read the target's applicable `AGENTS.md` and check its Git status.
Override the global worktree rule for routine changes here, including edits through the symlinks: work in the current checkout.
Use worktrees only for major features, such as adding file syncing.
When a major feature changes a linked repository, create the worktree in that repository.
Commit linked content in its owning repository. This wrapper tracks the links, not their contents.
Preserve the symlinks. Do not replace them with copied directories.
