//
//  InsertNode.swift
//  Created by Zhang, Wanming - (p) on 7/18/18.

//Binary search tree: We start with a root node with value x, where the left subtree of x contains nodes with values < x and the right subtree contains nodes whose values are ≥ x. Each node follows the same rules with respect to nodes in their left and right subtrees.
//BSTs are of interest because they have operations which are favourably fast: insertion, look up, and deletion can all be done in O(log n) time.
/**
 * Insert node to a binary search tree.
 *
 **/

import Foundation

public class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    func insertNode(root: inout TreeNode?, value: Int) {
        if (root == nil) {
            root = TreeNode?.init(value)
        } else {
            insertNode(root!, value)
        }
    }
    
    func insertNode(current: TreeNode, value: Int) {
        if (value < current.val) {
            if (current.left == nil) {
                current.left = TreeNode.init(value)
            } else {
                insertNode(current.left!, value)
            }
        } else { // value >= current.val
            if (current.right == nil) {
                current.right = TreeNode.init(value)
            } else {
                insertNode(current.right!, value)
            }
        }
    }
    
    func contains(root: TreeNode?, value: Int) {
        if (root == nil) {
            return false
        } else if let rootNode = root {
            if (value == rootNode.val) {
                return true
            } else if (value < rootNode.val) {
                return contains(rootNode.left, value)
            } else { // value >= rootNode.val
                return contains(rootNode.right, value)
            }
        }
        return false
    }
    
    
}
