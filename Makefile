.PHONY: help notify test-slack test-discord

help:
	@echo "Eden Lift - Makefile Commands"
	@echo "=============================="
	@echo "make notify        - Send test notification to Slack and Discord"
	@echo "make test-slack    - Test Slack webhook only"
	@echo "make test-discord  - Test Discord webhook only"
	@echo ""
	@echo "Required environment variables:"
	@echo "  SLACK_WEBHOOK_URL   - Slack webhook URL"
	@echo "  DISCORD_WEBHOOK_URL - Discord webhook URL"

notify: test-slack test-discord

test-slack:
	@if [ -z "$$SLACK_WEBHOOK_URL" ]; then \
		echo "❌ SLACK_WEBHOOK_URL is not set. Please set it as an environment variable."; \
		exit 1; \
	fi
	@echo "📤 Sending test notification to Slack..."
	@curl -X POST $$SLACK_WEBHOOK_URL \
		-H 'Content-Type: application/json' \
		-d '{ \
			"text": "🧪 Test Notification from Eden Lift", \
			"blocks": [{ \
				"type": "section", \
				"text": { \
					"type": "mrkdwn", \
					"text": "🧪 *Test Notification*\n\nThis is a manual test from `make notify`\n*Repository:* cramerconsultinggroup-dotcom/edenlift\n*Time:* '"$$(date)"'" \
				} \
			}] \
		}'
	@echo "\n✅ Slack notification sent!"

test-discord:
	@if [ -z "$$DISCORD_WEBHOOK_URL" ]; then \
		echo "❌ DISCORD_WEBHOOK_URL is not set. Please set it as an environment variable."; \
		exit 1; \
	fi
	@echo "📤 Sending test notification to Discord..."
	@curl -X POST $$DISCORD_WEBHOOK_URL \
		-H 'Content-Type: application/json' \
		-d '{ \
			"embeds": [{ \
				"title": "🧪 Test Notification from Eden Lift", \
				"description": "This is a manual test from `make notify`", \
				"color": 3066993, \
				"fields": [{ \
					"name": "Repository", \
					"value": "cramerconsultinggroup-dotcom/edenlift", \
					"inline": false \
				}, { \
					"name": "Time", \
					"value": "'"$$(date)"'", \
					"inline": false \
				}], \
				"timestamp": "'"$$(date -u +%Y-%m-%dT%H:%M:%SZ)"'" \
			}] \
		}'
	@echo "\n✅ Discord notification sent!"
