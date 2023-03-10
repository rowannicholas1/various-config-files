from typing import Any

import docutils.utils

from ..cmd import Command

# Only defined if docutils is installed.
class SilentReporter(docutils.utils.Reporter):
    messages: Any
    def __init__(
        self,
        source,
        report_level,
        halt_level,
        stream: Any | None = ...,
        debug: int = ...,
        encoding: str = ...,
        error_handler: str = ...,
    ) -> None: ...
    def system_message(self, level, message, *children, **kwargs): ...

class check(Command):
    description: str
    user_options: Any
    boolean_options: Any
    restructuredtext: int
    metadata: int
    strict: int
    def initialize_options(self) -> None: ...
    def finalize_options(self) -> None: ...
    def warn(self, msg): ...
    def run(self) -> None: ...
    def check_metadata(self) -> None: ...
    def check_restructuredtext(self) -> None: ...
