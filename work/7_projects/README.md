# 7_projects: one folder per project

Each project gets its own folder, named `YYYY-MM_short-name`. Copy `_template/` to start one.

Every project folder has a `CONTEXT.md`: what the project is, which segment it serves, and a "Where we left off" section that the `wrap` skill updates at the end of each session. Open Claude Code inside the project folder and the session-start hook shows that handover, so the next session picks up where the last one stopped.

Keep the project's working files in its folder. When the project ends, move what lasts into the right segment folder and the rest into `9_archive/`.
