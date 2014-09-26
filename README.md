# hubot-magnum-ci

This [Hubot plugin](https://github.com/hubot-scripts) adds a webhook to listen for a Magnum CI build notification and sends a message to the rooms specified.

## Installation

Add **hubot-magnum-ci** to your `package.json` file:

```json
"dependencies": {
  "hubot": ">= 2.5.1",
  "hubot-scripts": ">= 2.4.2",
  "hubot-trello": "*"
}
```

OR run `npm install --save hubot-magnum-ci`

Add **hubot-magnum-ci** to your `external-scripts.json`:

```json
["hubot-magnum-ci"]
```

Run `npm install`

## Magnum CI Setup

1. Login to magnum-ci.com
1. Open up the project you want to add webhooks too
1. Click on Settings in the top right beneath your User Profile
1. Click Webhooks in the left hand navigation section.
1. Add your webhook
1. Profit

## Configuration

```
HUBOT_DEV_ROOMS  - Comma delimitted list for the rooms which a message is sent by Hubot.
```