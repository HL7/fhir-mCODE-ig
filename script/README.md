# Mac/Linux script wrappers

In addition to calling the standard IG build scripts (e.g., `_genonce.sh`) directly, there are some wrappers specific for Mac/Linux users:

- `script/build` wraps `_genonce.sh` to provide the following additional features:
    1. macOS system notifications when a build completes or fails
    2. The ability to set a default terminology server with `echo 'TX_SERVER_DEFAULT=http://example.com:1234' > .env`
    3. Automatic rebuild of UML-based images if the source files have changed
    4. Automatic display of QA errors directly in the Terminal output if `SHOW_ERRORS_AFTER_IG_BUILD=1` is set in `.env`
- `script/nosushi-build` does the same thing as `script/build` but does not run SUSHI. This exists primarily for tab autocomplete of the command.
- `script/show-errors` shows QA errors directly in the Terminal output. Used by `script/build`, but can also be run directly.

## `.env`

Options for the script wrappers are stored in a `.env` file in the root folder of this repository. This file is ignored by git. Sample contents of `.env`:

    TX_SERVER_DEFAULT=http://your.tx.server.example.com:1234
    PLANTUML_PATH="/path/to/plantuml.jar"
    SHOW_ERRORS_AFTER_IG_BUILD=1
