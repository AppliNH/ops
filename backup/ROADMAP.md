# Backup Roadmap

Everything we want but dont have time to do

Backup everything !

- the config, data, bootstraps and maybe the binary..
	- are bootstraps stored on file system, not the FileDB ?
- A user needs all this in order to work from a 2nd machine if the 2st machne fails for whatever reason

Flutter GUI and CLI, and maybe TUI ?

- When using on your desktop, you need a GUI because users suck at terminals
- CLI is needed for Ops from server
- Our current CLI can talk to server from anywhere for remote ops
	- SO the GUI can also use this GRP API, so yu can do OPS with GUI or CLI.

Embed and non embed

- Probably need both
- We designed the architecture for this, so should not be too hard

Encrypt the rclone config.

- Of course...
- Their encrypt process looks really clean, lets use it for the cofig for everthing ?

---

Workflow

0. Status

- Main Page where you see setup, but also history / reports. SO this is really the Backup home page.

- Can then go to the other pages.

1. Configure / Setup

- Pick Sources.
	- Should have a standard list but also allow custom because you never know.

- Pick Remotes.
	- 

2. Run

- User can kick it off manually, and so can see it is working - jump to Ops..
- Should be exactly the same as the automatic runner.

3. Ops

- See the metrics, logs, live...

3. Reports

- Propably sent an email so a user knows its working.
- Send an email if fails. How to know.
- Maybe some Charts. Hence why i want PDF and Flutter to be agnostic in the system architecture. In other words the PDF is built via the GRPC API, just like the Flutter GUI. 
	- This is really something that should be part of Core.

4. Audit trail

- Is different from reports
- Just a list of what happened
- - This is really something that should be part of Core.

5. Restore

- If machine did not fail, then you might just want to go back in time, because a migration failed or you screwed up the system.

- If machne did fail, then from 2nd machine you want to restore.
	- back you need the config to do it and that config is on hte failed 1st machine.
	- So i guess we want to backup the actual backup config itself too ?
