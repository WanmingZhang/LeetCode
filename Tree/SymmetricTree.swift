//
//  SymmetricTree.swift
//  Created by Zhang, Wanming - (p) on 7/22/18.
//

/**
 * Problem link: https://leetcode.com/problems/symmetric-tree/
 * Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

    1
   / \
  2   2
 / \ / \
3  4 4  3
But the following [1,2,2,null,3,null,3] is not:
    1
   / \
  2   2
   \   \
    3   3
**/

/**
 * Java Solution

 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */

/**
class Solution {
    public boolean isSymmetric(TreeNode root) {
        if (root == null) {
            return true;
        } else {
            return areSymmetricTrees(root.left, root.right);
        }
    }
    
    public boolean areSymmetricTrees(TreeNode root1, TreeNode root2) {
        if (root1 == null && root2 == null) {
            return true;
        } else if (root1 == null || root2 == null) {
            return false;
        } else {
            if (root1.val == root2.val) {
                return areSymmetricTrees(root1.left, root2.right)
                    && areSymmetricTrees(root1.right, root2.left);
            }
            return false;
        }
    }
}
**/
import Foundation


// Definition for a binary tree node.
//public class TreeNode {
//
//    public var val: Int
//     public var left: TreeNode?
//     public var right: TreeNode?
//     public init(_ val: Int) {
//         self.val = val
//         self.left = nil
//         self.right = nil
//     }
//
//}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
}

class Solution {
    public func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        
        return areSymmetricTrees(root.left, root2: root.right)
    }
    
    func areSymmetricTrees(_ root1: TreeNode?, root2: TreeNode?) -> Bool {
        if (root1 == nil && root2 == nil) {
            return true
        } else if (root1 == nil || root2 == nil) {
            return false
        } else if (root1!.val == root2!.val) {
            return areSymmetricTrees(root1!.left, root2: root2!.right) &&
                areSymmetricTrees(root1!.right, root2: root2!.left)
        }
        return false
        
    }
}


