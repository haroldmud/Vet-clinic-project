## Creating this data base I did the following: :point_down: 

-  Added an extra column to the owner table.
- Added data to my database.
- Checked that by running `explain analyze SELECT COUNT(*) FROM visits where animal_id = 4`  If I get Execution time: X ms and X >= 1000. depending on my machine speed.
- Tried the following queries on my machine to confirm that they are taking too much time:
  - `SELECT COUNT(*) FROM visits where animal_id = 4;`
![$execution1One](https://user-images.githubusercontent.com/91553966/178452914-af3c34ea-835e-4d00-a968-dcc1272cc6bb.png)
  - `SELECT * FROM visits where vet_id = 2;`
![$execution2Two](https://user-images.githubusercontent.com/91553966/178452937-f30301f2-65cc-4f8e-9d61-51863451ba2e.png)
  - `SELECT * FROM owners where email = 'owner_18327@mail.com';`
![$execution3Three](https://user-images.githubusercontent.com/91553966/178452985-007b09a7-fcca-4a2b-a8c2-b3e9433ca771.png)

- Found a way to decrease the execution time of the first query. 
![Screenshot from 2022-07-11 17-32-32](https://user-images.githubusercontent.com/91553966/178455068-b677b58d-cbf5-4085-9aca-c4112bcdc0c1.png)
- Found a way to improve the execution time of the other two queries respectively.
![Screenshot from 2022-07-12 10-03-16](https://user-images.githubusercontent.com/91553966/178453992-0d09309a-6586-4c9e-ac70-2cb563b8f279.png)
![Screenshot from 2022-07-12 10-04-39](https://user-images.githubusercontent.com/91553966/178453910-a4dacff6-37a2-4073-b82c-06534671870d.png)


