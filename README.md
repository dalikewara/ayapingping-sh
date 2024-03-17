# ayapingping-sh

![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/dalikewara/ayapingping-sh)
![GitHub license](https://img.shields.io/github/license/dalikewara/ayapingping-sh)

**ayapingping-sh** is the main shell script (`/bin/sh`) for **ayapingping**'s generator, which follows **POSIX** standards to ensure 
it can run effectively on any platform, operating system, or programming language shell session. This script is currently 
used by every **ayapingping** variant and will be used in the next variant. Because the main generator is written in shell 
script, adapting the next **ayapingping** variant to a new or different programming language should be straightforward.

## Variants

Currently, **ayapingping** has the following variants:

- Golang: [ayapingping-go](https://github.com/dalikewara/ayapingping-go)
- Python: [ayapingping-py](https://github.com/dalikewara/ayapingping-py)
- TypeScript: [ayapingping-ts](https://github.com/dalikewara/ayapingping-ts)

## Requirements

- Operating systems supporting `/bin/sh` with **POSIX** standards. **Linux** and **macOS** should have no issues here as they support it by default
- For **Windows** users, consider using WSL instead

## Getting Started

There's no need to get started here. To see how the generator works, see the description below, or just take a look at the `main_*.sh` file.

## The Generator Synchronization

Every **ayapingping** variant ships with the default `main_*.sh` that is copied manually from this repo for the first time when the variant was created to be included in the installation directory. How does it work?

Let's assume you have installed one of the **ayapingping** variants, for example: **ayapingping-go**. When you call any **ayapingping-go** command: `ayapingping-go`, `ayapingping-go version`, `ayapingping-go importFeature bla bla bla`, and so on... It will:

1. Check if you can get the latest `main_*.sh` version from this repo. It means you have to connect to the internet
2. If you can't (either you're offline or something else), **ayapingping-go** will use the current `main_*.sh` file from its installation directory
3. If you can, **ayapingping-go** will replace the current `main_*.sh` file in its installation directory with the latest one and will use it for the next process
4. So, this will make sure that **ayapingping-go** always uses the latest version of the generator without breaking or changing anything
5. The same behavior applies to the other variants too
6. This means any fixes, changes, or adjustments made to the generator will also automatically be applied to all the **ayapingping** variants

To check the version of the generator, just use the `version` command:

```bash
ayapingping-go version
# Output: AyaPingPing (Golang) v4.4.0 sh4.0.0
```

The `sh4.0.0` is the generator version.

## Release

### Changelog

Read it at [CHANGELOG.md](https://github.com/dalikewara/ayapingping-sh/blob/master/CHANGELOG.md).

### Credits

Copyright &copy; 2024 [Dali Kewara](https://www.dalikewara.com)

### License

[MIT License](https://github.com/dalikewara/ayapingping-sh/blob/master/LICENSE)
