# PIZZABOT APP

## Overview

This is the macOS Console Tool based on Swift, which represents a bot for delivering pizza

## How it works

When tha app starts - user should provide pizza locations and the map size to the bot. According to map size bot checks if it can deliver pizza or not (in case if coordinates of location go out the map). In each location bot drops the pizza for customer and tells  
how many deliveries are left. After the bot is done with all orders - it comes back to the base.
## Run the app using Xcode

1) go to "Edit Scheme" option for "pizzabot" target
2) go to "Run" option in the left sidebar
3) select "Arguments" tab
4) press "+" button to create argument (for example "4x8(1,2)(3,4)")

## Troubleshooting

First of all try to clean App Build folder (Cmd+Shift+K). If that will not help - feel free to ask questions.

## Testing

Test suite included.
## Run Tests
### Using Navigator:
You can run all tests in the class or just single test. Steps would be:
1) go to Test tab in the navigator
2) hold the pointer over test bundle (class or single test) name and click the Run button that appears on the right
