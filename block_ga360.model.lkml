connection: "@{CONNECTION_NAME}"
label: "Block GA360"

include: "sessions.view"

include: "//app-event-adapter/*.view"

include: "//app-event-ga360/*.view"
include: "overview.dashboard"

include: "//app-event/*.model"