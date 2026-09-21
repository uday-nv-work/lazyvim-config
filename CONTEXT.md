# Context

**Current Task**: Switched AI CLI terminals to use bare Neovim splits instead of Snacks.terminal to ensure processes terminate on editor exit.

**Key Decisions**:
- Removed `Snacks.terminal` usage in favor of `termopen()` and a hand-rolled toggle function.
- Retained standard split layout (right vertical split, 30% width).
- Acknowledged potential to revert to Snacks in the future with a `VimLeavePre` autocmd if the built-in tracking falls short.

**Next Steps**:
- Monitor bare terminal behavior and process cleanup.
- If needed later, restore Snacks and add the explicit cleanup autocmd.
