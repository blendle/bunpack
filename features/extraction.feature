@announce
Feature: Extraction
  Scenario: Extracting a zip archive with __MACOSX directory
    Given the following base64 encoded zip archive:
      """
      UEsDBAoAAAAAAAaRlkQAAAAAAAAAAAAAAAAJABwAX19NQUNPU1gvVVQJAAPsk1ZT8pNWU3V4CwABBPUBAAAEFAAAAFBLAwQKAAAAAACOkJZEAAAAAAAAAAAAAAAACAAcAGFyY2hpdmUvVVQJAAMLk1ZT8pNWU3V4CwABBPUBAAAEFAAAAFBLAwQKAAAAAACOkJZEAAAAAAAAAAAAAAAAEwAcAGFyY2hpdmUvaGVsbG9fd29ybGRVVAkAAwuTVlNgk1ZTdXgLAAEE9QEAAAQUAAAAUEsBAh4DCgAAAAAABpGWRAAAAAAAAAAAAAAAAAkAGAAAAAAAAAAQAP1BAAAAAF9fTUFDT1NYL1VUBQAD7JNWU3V4CwABBPUBAAAEFAAAAFBLAQIeAwoAAAAAAI6QlkQAAAAAAAAAAAAAAAAIABgAAAAAAAAAEADtQUMAAABhcmNoaXZlL1VUBQADC5NWU3V4CwABBPUBAAAEFAAAAFBLAQIeAwoAAAAAAI6QlkQAAAAAAAAAAAAAAAATABgAAAAAAAAAAACkgYUAAABhcmNoaXZlL2hlbGxvX3dvcmxkVVQFAAMLk1ZTdXgLAAEE9QEAAAQUAAAAUEsFBgAAAAADAAMA9gAAANIAAAAAAA==
      """
    When I successfully run `bunpack archive.zip`
    Then the file "archive/__MACOSX" should not exist
    And a file named "archive/hello_world" should exist

  Scenario: Extracting a tar archive without __MACOSX directory
    Given the following base64 encoded tgz archive:
      """
      H4sIACO4VlMAA+3RTQ6CMBCGYY7SGzi0HTyOIQoB0wipf9e3AXSlJiawIL7P5ttM2mm/Mu6b9lZtsgWJyFbVDFmMKdaPOTG5dVbVebFqJHe5k8zokks9Xc+XMqZV+qpvj6fPc2msrr+cM73jlStRTv03VQjd7t7FcJj9jvQfhfe/9K9OXWZk9k3e+PP+AQAAAAAAAAAAAAAAAKzXAxSLKCkAKAAA
      """
    When I successfully run `bunpack archive.tgz`
    Then the file "archive/__MACOSX" should not exist
    And a file named "archive/hello_world" should exist

  Scenario: Extracting a zip archive without __MACOSX directory
    Given the following base64 encoded zip archive:
      """
      UEsDBAoAAAAAANGRlkQAAAAAAAAAAAAAAAAIABwAYXJjaGl2ZS9VVAkAA2qVVlNvlVZTdXgLAAEE9QEAAAQUAAAAUEsDBAoAAAAAAI6QlkQAAAAAAAAAAAAAAAATABwAYXJjaGl2ZS9oZWxsb193b3JsZFVUCQADC5NWU+qUVlN1eAsAAQT1AQAABBQAAABQSwECHgMKAAAAAADRkZZEAAAAAAAAAAAAAAAACAAYAAAAAAAAABAA7UEAAAAAYXJjaGl2ZS9VVAUAA2qVVlN1eAsAAQT1AQAABBQAAABQSwECHgMKAAAAAACOkJZEAAAAAAAAAAAAAAAAEwAYAAAAAAAAAAAApIFCAAAAYXJjaGl2ZS9oZWxsb193b3JsZFVUBQADC5NWU3V4CwABBPUBAAAEFAAAAFBLBQYAAAAAAgACAKcAAACPAAAAAAA=
      """
    When I successfully run `bunpack archive.zip`
    Then the file "archive/__MACOSX" should not exist
    And a file named "archive/hello_world" should exist

