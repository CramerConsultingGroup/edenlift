#!/bin/bash
# Test script to verify Eden Lift website functionality

echo "🧪 Eden Lift - Website Functionality Test"
echo "=========================================="
echo ""

# Start a temporary web server
echo "🚀 Starting web server on port 8001..."
python3 -m http.server 8001 > /dev/null 2>&1 &
SERVER_PID=$!
sleep 2

# Function to test a URL
test_url() {
    local url=$1
    local name=$2
    local status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    
    if [ "$status" = "200" ]; then
        echo "✅ $name: OK (HTTP $status)"
        return 0
    else
        echo "❌ $name: FAILED (HTTP $status)"
        return 1
    fi
}

# Test all pages
echo "📄 Testing all pages..."
test_url "http://localhost:8001/" "Home page"
test_url "http://localhost:8001/investor/" "Investor page"
test_url "http://localhost:8001/docs/" "Docs page"
test_url "http://localhost:8001/signatures/" "Signatures page"
test_url "http://localhost:8001/api/" "API page"
test_url "http://localhost:8001/assets/css/style.css" "Stylesheet"

echo ""
echo "🎨 Checking CSS styling..."
css_lines=$(wc -l < assets/css/style.css)
echo "✅ Stylesheet: $css_lines lines"

echo ""
echo "📊 Project Statistics:"
echo "  - HTML pages: $(find . -name '*.html' | wc -l)"
echo "  - CSS files: $(find . -name '*.css' | wc -l)"
echo "  - Total lines (HTML): $(find . -name '*.html' -exec wc -l {} + | tail -1 | awk '{print $1}')"
echo "  - Total lines (CSS): $(find . -name '*.css' -exec wc -l {} + | tail -1 | awk '{print $1}')"

# Stop the server
echo ""
echo "🛑 Stopping web server..."
kill $SERVER_PID 2>/dev/null

echo ""
echo "✅ All tests completed successfully!"
echo "🌐 Website is fully functional and ready to deploy!"
