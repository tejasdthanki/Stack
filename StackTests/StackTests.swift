//
//  StackTests.swift
//  StackTests
//
//  Created by Tejas Thanki on 04/03/21.
//

import XCTest
@testable import Stack


class StackTests: XCTestCase {

    func testStackEmpty(){
        let stack:Stack<Int> = Stack<Int>()
        XCTAssertTrue(stack.isEmpty)
        stack.push(element: 2)
        XCTAssertEqual(stack.top, 2)
        XCTAssertFalse(stack.isEmpty)
        
        let linkStack:StackUsingLinkedList = StackUsingLinkedList<Int>()
        XCTAssertTrue(linkStack.isEmpty)
        linkStack.push(value: 2)
        XCTAssertTrue(linkStack.top?.data == 2)
        XCTAssertFalse(linkStack.isEmpty)
    }
    
    func testPush(){
        let stack:Stack<Int> = Stack<Int>()
        XCTAssertNil(stack.top)
        stack.push(element: 2)
        stack.push(element: 4)
        XCTAssertEqual(stack.count, 2)
        XCTAssertNotNil(stack.top)
        
        
        let linkStack:StackUsingLinkedList = StackUsingLinkedList<Int>()
        XCTAssertNil(linkStack.top)
        linkStack.push(value: 2)
        linkStack.push(value: 4)
        XCTAssertEqual(linkStack.count, 2)
        XCTAssertNotNil(linkStack.top)
    }
    
    func testPop(){
        let stack:Stack<Int> = Stack<Int>()
        stack.push(element: 2)
        XCTAssertFalse(stack.isEmpty)
        _ = stack.pop()
        XCTAssertTrue(stack.isEmpty)
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
