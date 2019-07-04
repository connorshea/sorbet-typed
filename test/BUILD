load("@sorbet//test:pipeline_test.bzl", "pipeline_tests")

test_corpus_tests = pipeline_tests(
    glob([
        "testdata/*.test.rb"
    ]),
    "TypeTests"
)

test_suite(
    name = "test",
    tests = test_corpus_tests
)
