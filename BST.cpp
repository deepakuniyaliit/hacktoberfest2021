// BST using double pointers

#include<bits/stdc++.h>
using namespace std;

typedef struct tree {
    struct tree* left;
    int data;
    struct tree* right;
} stree;

void createNode(int n, stree** temp) {
    *temp = new tree;
    if (*temp != NULL) {
        (*temp)->data = n;
        (*temp)->left = NULL;
        (*temp)->right = NULL;
        cout << "\nNode Inserted!\n";
    }
    else
        cout << "\nMemory Not Allocated!\n";
}

void insertNode(stree** root, stree** temp) {
    if ((*temp)->data < (*root)->data) {
        if ((*root)->left == NULL)
            (*root)->left = *temp;
        else
            insertNode(&((*root)->left), &(*temp));
    }
    else {
        if ((*root)->right == NULL)
            (*root)->right = *temp;
        else
            insertNode(&((*root)->right), &(*temp));
    }
}

void preOrderDisp(stree* root) {
    if (root != NULL) {
        cout << root->data << " ";
        preOrderDisp(root->left);
        preOrderDisp(root->right);
    }
}

void inOrderDisp(stree* root) {
    if (root != NULL) {
        inOrderDisp(root->left);
        cout << root->data << " ";
        inOrderDisp(root->right);
    }
}

void postOrderDisp(stree* root) {
    if (root != NULL) {
        postOrderDisp(root->left);
        postOrderDisp(root->right);
        cout << root->data << " ";
    }
}

int main() {
    stree* root = NULL, * temp = NULL;
    int ch;
    do {
        cout << "\n\tMENU\n1. Insert\n2. Display in Pre-order\n3. Display in in-order\n4. Display in Post-Order\n5. Exit\nEnter your Choice: ";
        cin >> ch;
        if (ch == 1) {
            int n;
            cout << "Enter Data: ";
            cin >> n;
            createNode(n, &temp);
            if (root == NULL)
                root = temp;
            else
                insertNode(&root, &temp);
        }
        else if (root == NULL && ch != 5) {
            cout << "Tree Underflow!";
        }
        else if (ch == 2) {
            cout << "Tree in Pre-Order: ";
            preOrderDisp(root);
        }
        else if (ch == 3) {
            cout << "Tree in In-Order: ";
            inOrderDisp(root);
        }
        else if (ch == 4) {
            cout << "Tree in Post-Order: ";
            postOrderDisp(root);
        }
        else if (ch != 5)
            cout << "Invalid Choice!\n";
    } while (ch != 5);
}