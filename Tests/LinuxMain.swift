import XCTest

@testable import LLVMTests

#if !os(macOS)
XCTMain([
  APIntSpec.allTests,
  BFCSpec.allTests,
  ConstantSpec.allTests,
  DIBuilderSpec.allTests,
  FileCheckSpec.allTests,
  IRBuilderSpec.allTests,
  IRExceptionSpec.allTests,
  IRGlobalSpec.allTests,
  IRMetadataSpec.allTests,
  IROperationSpec.allTests,
  // FIXME: These tests cannot run on Linux without SEGFAULT'ing.
  // JITSpec.allTests,
  ModuleLinkSpec.allTests,
  ModuleMetadataSpec.allTests,
])
#endif
