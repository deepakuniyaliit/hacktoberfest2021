import java.util.*;
class node
{
    int k;
    node left;
    node right;
    node(int key)
    {
        key=k;
        left=right=null;

    }
}
class bfs
{
    void insert(int key)
    {
        node root=null;
        node newnode=new node(key);
        if(newnode==null)
        {
        root=newnode;
        }

    else
    {
        node curr =root,parent =null;
        while(true)
        {
            parent=curr;
            if(key<curr.key){
                curr=curr.left;
                if(curr==null)
                {
                parent.left=newnode;
            }
            }
            else{
                curr=curr.right;
                if(curr==null)
                parent.right=newnode;
            }
        }

    }
    }
     public static boolean hasPath(node root, ArrayList<Integer> arr, int x) 

    { 
        if (root==null) 
            return false; 
        arr.add(root.key);     
             if (root.key == x)    
            return true;
        if (hasPath(root.left, arr, x) || hasPath(root.right, arr, x)) 
            return true; 
        arr.remove(arr.size()-1); 

        return false;             

    } 
    public static void printPath(node root, int x) 

    {  
        ArrayList<Integer> arr=new ArrayList<>();

        if (hasPath(root, arr, x)) 

        { 

            for (int i=0; i<arr.size()-1; i++)     

                System.out.print(arr.get(i)+"->");

            System.out.print(arr.get(arr.size() - 1));    

        } 
        else

            System.out.println("No Path"); 

    } 

    public static void main(String args[])
    {
        node root=new node(10);
        root.left=new node(20);
        root.right=new node(30);
        root.left.left =new node(50);
        root.right.right=new node(570);

         int x=50;

        printPath(root, x);
        System.out.println();
        print(root);
    }
   static void print(node root)
    {
        if(root ==null)
        {
            return;

        }

        Queue<node>o=new LinkedList<node>();
        o.add(root);
        while(!o.isEmpty())
        {
            node curr =o.poll();
            System.out.print(curr.key+" ");
            if(curr.left!=null)
               o.add(curr.left);
               if(curr.right!=null)
               o.add(curr.right);
        }
    }
// Contribution by AYUSH KUMAR SRIVASTAVA 