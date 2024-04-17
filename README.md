# inspire-labs-tms-tech/webssh

A custom fork of https://github.com/huashengdun/webssh.

## Alterations

This fork has several advantages over the original, base image:
- unnecessary settings and restrictions that hinder use behind a reverse proxy are removed
- the default UI is removed (to allow for cleaner, custom handling, along with the use of query-params to establish connection)
- dependency boosts
- a single-file, standalone Linux executable (see releases)
- connect and disconnect events are emitted; when running in an iFrame, this allows monitoring connect/disconnect events. Use
```ts
enum WSSHEvents {
  CONNECTED = "WSSH:CONNECTED",
  DISCONNECTED = "WSSH:DISCONNECTED",
}

const listener = (evt: MessageEvent) => {
      switch (evt.data as WSSHEvents) {
        case WSSHEvents.CONNECTED:
          // connection is established
          break;
        case WSSHEvents.DISCONNECTED:
          // connection is lost (default state is disconnected)
          break;
      }
    };

window.addEventListener("message", listener);
```
