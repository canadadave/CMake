file(STRINGS ${RunCMake_TEST_BINARY_DIR}/test.txt TEST_TXT ENCODING UTF-8)

list(GET TEST_TXT 0 PDB_FILE_BASE_NAME)

if(NOT PDB_FILE_BASE_NAME MATCHES "empty")
  set(RunCMake_TEST_FAILED "unexpected PDB_FILE_BASE_NAME [${PDB_FILE_BASE_NAME}]")
endif()