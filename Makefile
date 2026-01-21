.PHONY: all test test-logic test-compact test-detailed images clean

TYPST = typst compile --root .

all: test

test: test-logic test-compact test-detailed
	@echo "All tests passed!"

test-logic:
	@echo "Running logic tests..."
	@$(TYPST) tests/test-logic.typ tests/test-logic.pdf
	@echo "Logic tests passed!"

test-compact:
	@echo "Running compact table test..."
	@$(TYPST) tests/test-compact.typ tests/test-compact.pdf
	@echo "Compact table test passed!"

test-detailed:
	@echo "Running detailed table test..."
	@$(TYPST) tests/test-detailed.typ tests/test-detailed.pdf
	@echo "Detailed table test passed!"

images:
	@echo "Generating images..."
	@$(TYPST) examples/compact.typ images/compact.png
	@$(TYPST) examples/detailed.typ images/detailed.png
	@echo "Images generated!"

clean:
	rm -f tests/*.pdf
