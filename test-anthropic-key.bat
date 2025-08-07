@echo off
echo Anthropic API Key Test Script
echo ==============================
echo.

if "%1"=="" (
    echo Usage: test-anthropic-key.bat YOUR_API_KEY
    echo.
    echo This will test if your Anthropic API key is valid
    echo Get your key at: https://console.anthropic.com/
    echo.
    exit /b 1
)

set ANTHROPIC_API_KEY=%1

echo Testing API key...
echo.

curl -X POST https://api.anthropic.com/v1/messages ^
  -H "x-api-key: %ANTHROPIC_API_KEY%" ^
  -H "anthropic-version: 2023-06-01" ^
  -H "content-type: application/json" ^
  -d "{\"model\": \"claude-3-haiku-20240307\", \"max_tokens\": 10, \"messages\": [{\"role\": \"user\", \"content\": \"Say 'API works'\"}]}"

echo.
echo.
echo If you see "API works" in the response above, your key is valid!
echo If you see an error message, please check your API key.
echo.
echo Next steps:
echo 1. Add this key to GitHub Secrets as ANTHROPIC_API_KEY
echo 2. Go to: https://github.com/rgslaughterjr/cc_in_action/settings/secrets/actions
echo.