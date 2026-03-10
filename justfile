# Run all Go tests
test:
  go test ./... -v

# Run tests with race detector
test-race:
  go test ./... -v -race

# Check formatting
fmt-check:
  @test -z "$(gofmt -l . | grep -v vendor)" || { gofmt -l . | grep -v vendor; echo "Files above need formatting. Run 'gofmt -w .'"; exit 1; }

# Run all checks
check: fmt-check test
