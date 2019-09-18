# Join Notifications for GitHub Actions

![screenshot](screenshot.png)

This action allows you to send yourself a push notification via [Join](https://play.google.com/store/apps/details?id=com.joaomgcd.join).

## Usage

To use the action simply add the following lines to your `.github/main.workflow` and provide the required Secrets and Environment variables.

```
action "Build Completion" {
  uses = "ShaunLWM/action-join@master"
  secrets = ["JOIN_DEVICE_ID", "JOIN_API_KEY"]
  env = {
    JOIN_TITLE = "Build Complete"
    JOIN_TEXT = "Your project has been built."
  }
}
```

#### YML
```
name: Join Notification to Device X
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Join Notification
      uses: ShaunLWM/action-join@master
      env:
        JOIN_API_KEY: ${{ secrets.JOIN_API_KEY }}
        JOIN_DEVICE_ID: ${{ secrets.JOIN_DEVICE_ID }}
        JOIN_TEXT: Your project has been built.
        JOIN_TITLE: Build Complete
```

### Secrets

You'll need to provide these secrets to use the action. Enter these secrets in your Settings > Secrets

* **JOIN_DEVICE_ID**: Select your device from [Join](https://joinjoaomgcd.appspot.com/) and copy the `Device Id` under `Join API`
* **JOIN_API_KEY**: Similarly, in `Join API`, click `Show` at API Key section.

### Environment Variables

You'll need to provide these environment variables to specify exactly what information to send to your device.

* **JOIN_TITLE**: The title of the notification.
* **JOIN_TEXT**: The body of the notification.

[Learn more](https://joaoapps.com/join/api/) about the required parameters and the keys above.

## Credits

Based off [maddox/actions](https://github.com/maddox/actions/tree/master/pushover)

## License

MIT 2019