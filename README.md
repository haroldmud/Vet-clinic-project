## Creating this data base I did the following: :point_down: 
- Created the table `vets` 
    ![Screenshot from 2022-07-08 22-28-53](https://user-images.githubusercontent.com/98384867/178065891-54580815-251c-4dd6-b8eb-d8e8d36e7ba2.png)
- Created a join table named `specializations` 
    ![Screenshot from 2022-07-08 22-31-18](https://user-images.githubusercontent.com/98384867/178066132-07e1e6fe-69e0-44f8-b7ca-87afe20881d4.png)
- created a `visits` table
    ![Screenshot from 2022-07-08 22-32-54](https://user-images.githubusercontent.com/98384867/178066332-57e71a1b-aee3-4928-9644-8bb7bcbf680c.png)
- Wrote following queries:
   - Who was the last animal seen by William Tatcher?
       ![Screenshot from 2022-07-08 19-36-45](https://user-images.githubusercontent.com/98384867/178066625-10706414-ba9a-46e0-85a7-6f4d19e12eae.png)
   - How many different animals did Stephanie Mendez see
      ![Screenshot from 2022-07-08 19-38-19](https://user-images.githubusercontent.com/98384867/178067182-8172741b-c8f5-487d-8bfe-f4bc54ce6370.png)
  - List all vets and their specialties
    - Jack Harkness
      ![Screenshot from 2022-07-08 19-37-12](https://user-images.githubusercontent.com/98384867/178067533-87c3671f-f263-455b-8e89-8dc129cf569c.png)
    - Stephanie Mendez
      ![Screenshot from 2022-07-08 22-48-05](https://user-images.githubusercontent.com/98384867/178068233-22a26760-f898-401b-bda7-1f58bbf09920.png)
    - William Tatcher
      ![Screenshot from 2022-07-08 22-49-41](https://user-images.githubusercontent.com/98384867/178068379-bbbe4dca-9dcf-4beb-95d3-4691092df5ed.png)
  - List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
    ![Screenshot from 2022-07-08 19-48-15](https://user-images.githubusercontent.com/98384867/178068596-f5f89a42-1b91-4d1b-94fe-96f2922cdcae.png)
  - What animal has the most visits to vets?
    ![Screenshot from 2022-07-08 20-00-28](https://user-images.githubusercontent.com/98384867/178068808-10785f90-bb7f-466e-aaad-2fb2c77d62eb.png)
  - Who was Maisy Smith's first visit?
    ![Screenshot from 2022-07-08 20-23-45](https://user-images.githubusercontent.com/98384867/178068946-aa3400f1-2895-4211-9312-71fcab2fa4c5.png)
  - Details for most recent visit: animal information, vet information, and date of visit.
     ![Screenshot from 2022-07-08 22-57-17](https://user-images.githubusercontent.com/98384867/178069291-9590ac3f-77bc-424e-9f59-5c6d5415dc69.png)
  - How many visits were with a vet that did not specialize in that animal's species?
    ![Screenshot from 2022-07-08 20-44-57](https://user-images.githubusercontent.com/98384867/178069487-372ade8e-fb5c-4b9b-97e3-cd3189ed35e4.png)
  - What specialty should Maisy Smith consider getting?
  ![Screenshot from 2022-07-08 22-23-32](https://user-images.githubusercontent.com/98384867/178069568-e1bff6b4-b7c6-465b-948e-a099b7ed0488.png)
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


