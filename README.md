# Eden Lift

[![Build Documentation Test](https://github.com/cramerconsultinggroup-dotcom/edenlift/actions/workflows/build_docs_test.yml/badge.svg)](https://github.com/cramerconsultinggroup-dotcom/edenlift/actions/workflows/build_docs_test.yml)

## Overview

Eden Lift - Automated CI/CD with real-time notifications to Slack and Discord.

## Features

- 🔄 Automated documentation build workflow
- 📢 Real-time CI notifications to Slack and Discord
- 📊 Status tracking with commit info, duration, and artifacts
- 🧪 Manual notification testing via Makefile

## Setup

### GitHub Secrets Configuration

To enable Slack and Discord notifications, add the following secrets to your GitHub repository:

1. Navigate to **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret** and add:

   - **`SLACK_WEBHOOK_URL`**: Your Slack incoming webhook URL
     - Get this from: https://api.slack.com/messaging/webhooks
     - Format: `https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXX`
   
   - **`DISCORD_WEBHOOK_URL`**: Your Discord webhook URL
     - Get this from: Server Settings → Integrations → Webhooks → New Webhook
     - Format: `https://discord.com/api/webhooks/000000000000000000/XXXXXXXXXXXXXXXXXXXX`

### Local Testing

You can test notifications manually using the Makefile:

```bash
# Test both Slack and Discord
export SLACK_WEBHOOK_URL="your-slack-webhook-url"
export DISCORD_WEBHOOK_URL="your-discord-webhook-url"
make notify

# Test only Slack
make test-slack

# Test only Discord
make test-discord
```

## CI/CD Workflows

### Build Documentation Test (`build_docs_test.yml`)

Triggers on push and pull requests to main/develop branches:
- Builds sample documentation
- Uploads artifacts
- Triggers notification workflow

### CI Notifications (`notify_ci.yml`)

Automatically triggered when `build_docs_test.yml` completes:
- Sends status updates to Slack and Discord
- Includes:
  - ✅/❌ Build status
  - 📄 Link to artifacts
  - 🔗 Commit SHA and author
  - ⏱ Build duration

## Development

```bash
# View available commands
make help
```

## License

See [LICENSE](LICENSE) file for details.
