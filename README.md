# homebrew-supstack

Homebrew tap for [`@supstack/cli`](https://www.npmjs.com/package/@supstack/cli) — the SupStack CLI + MCP server (evidence-based supplement intelligence).

## Install

```bash
brew install drbaher/supstack/supstack
```

…or tap first, then install:

```bash
brew tap drbaher/supstack
brew install supstack
```

Then turn on shell completion:

```bash
supstack completion install
```

## Update

```bash
brew upgrade supstack
```

## What you get

`supstack` — search/compare/rate supplements, check interactions, browse studies, manage a stack, and run `supstack mcp` as a Model Context Protocol server for AI agents. See the [docs](https://supstack.me/developers/cli).

The formula installs the npm package via Homebrew's Node support; it's updated automatically on each `@supstack/cli` release.

## License

The CLI is MIT. This tap is maintained alongside [DrBaher/supstack-cli](https://github.com/DrBaher/supstack-cli).
