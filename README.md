<h1 align="center">
 Food Delivery System
</h1>

- Created an efficient database for food delivery system that can insert and retrieve data from the database in efficient way.

- The Entity Relationship Diagram prepared for making this database Applied Normalisation to reduce the redundancy of the data

![ER](/Screenshots/ER_Diagram.jpg)

- You can perform queries and retrieve data from the database using SQL

- Used MS SQL Server and Microsoft SQL Server Management Studio for creating the database

- Examples of some queries and retrieved data from database

The following query retrievs data from database by doing ```bash inner join ``` and displays **Hotel_Name**, **Item_Price**, **Item_Name** joining three tables **Hotel**, **Hotel_Items**, **Items**

```bash select Hotel_Name, Item_Price, Item_Name from Items i inner join Hotel_Items hi on hi.Item_id = i.Item_id inner join dbo.Hotel h on hi.Hotel_id = h.Hotel_id order by Item_Name ```

![Query_1](/Screenshots/Query_Example_1.png)

The following query retrievs data from database by doing ```bash inner join ``` and multiply operation and displays **Date_of_Order**, **Customer_Name**, **Item_Name**, **Quantity**, **Amount** joining four tables **Order_Items**, **Customer**, **Items**, **Hotel_Items**

```bash select Hotel_Name, Item_Price, Item_Name from Items i inner join Hotel_Items hi on hi.Item_id = i.Item_id inner join dbo.Hotel h on hi.Hotel_id = h.Hotel_id order by Item_Name ```

![Query_2](/Screenshots/Query_Example_2.png)
