@announce
Feature: Extraction
  Scenario: Extracting a zip archive with __MACOSX directory
    When I successfully run `bunpack ../../features/fixtures/archive.zip`
    Then the file "archive/__MACOSX" should not exist
    And a file named "archive/hello_world" should exist

  Scenario: Extracting a tgz archive without __MACOSX directory
    When I successfully run `bunpack ../../features/fixtures/archive.tgz`
    Then the file "archive/__MACOSX" should not exist
    And a file named "archive/hello_world" should exist

  Scenario: Extracting a zip archive without __MACOSX directory
    When I successfully run `bunpack ../../features/fixtures/archive_without_MACOSX_folder/archive.zip`
    Then the file "archive/__MACOSX" should not exist
    And a file named "archive/hello_world" should exist

  Scenario: Extracting an epub archive
    When I successfully run `bunpack ../../features/fixtures/test.epub`
    Then a file named "test/ops/package.opf" should exist
