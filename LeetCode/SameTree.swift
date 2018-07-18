//
//  SameTree.swift
//  Created by Zhang, Wanming - (p) on 7/18/18.
/**
 * Given two binary trees, write a function to check if they are the same or not.
 * Two binary trees are considered the same if they are structurally identical and the nodes have the same value.
**/

import Foundation

public class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
}

class sulution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if (p == nil && q == nil) {
            return true
        } else if (p == nil && q != nil) {
            return false
        } else if (p != nil && q == nil) {
            return false
        } else {
            return p!.val == q!.val
                && isSameTree(p!.left, q!.left)
                && isSameTree(p!.right, q!.right)
        }
    }
}
