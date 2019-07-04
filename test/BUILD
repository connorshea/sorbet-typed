load("@sorbet//test:pipeline_test.bzl", "pipeline_tests")

test_corpus_tests = pipeline_tests(
    glob([
        "lib/**/*.test.rb"
    ]),
    "PosTests",
    filter = "PosTests"
)

test_suite(
    name = "test_corpus",
    tests = test_corpus_tests,
)

test_suite(
    name = "test",
    tests = ["test_corpus"]
)
