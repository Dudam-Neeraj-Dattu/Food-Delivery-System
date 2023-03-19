<h1 align="center">
 Food Delivery System
</h1>

- Created an efficient database for food delivery system that can insert and retrieve data from the database in efficient way.

- The following image is the **Entity Relationship Diagram** prepared for making this database. 

![ER](/Screenshots/ER_Diagram.png)

- The following image is the **Relational Model** converted from ER Diagram using SQL.

![Relational](/Screenshots/Relational_Model.jpg)

- You can perform queries and retrieve data from the database using SQL.

- Used **MS SQL Server** and **Microsoft SQL Server Management Studio** for creating the database.

- Following are some Examples of queries and retrieved data from database.

The following query retrievs data from database by doing ```INNER JOIN ``` and displays **Hotel_Name**, **Item_Price**, **Item_Name** joining three tables **Hotel**, **Hotel_Items**, **Items**.

```SELECT Hotel_Name, Item_Price, Item_Name FROM Items i INNER JOIN Hotel_Items hi ON hi.Item_id = i.Item_id INNER JOIN  Hotel h ON hi.Hotel_id = h.Hotel_id ORDER BY Item_Name ```

![Query_1](/Screenshots/Query_Example_1.png)

The following query retrievs data from database by doing ```INNER JOIN ``` and done a multiply operation to display amount and displays **Date_of_Order**, **Customer_Name**, **Item_Name**, **Quantity**, **Amount** joining four tables **Order_Items**, **Customer**, **Items**, **Hotel_Items**.

```SELECT Hotel_Name, Item_Price, Item_Name FROM Items i INNER JOIN Hotel_Items hi ON hi.Item_id = i.Item_id INNER JOIN  Hotel h ON hi.Hotel_id = h.Hotel_id ORDER BY Item_Name ```

![Query_2](/Screenshots/Query_Example_2.png)
