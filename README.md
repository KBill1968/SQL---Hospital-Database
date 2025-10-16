Interim Project for the Module “Databases and SQL”
General Instructions
Dear Participant, for the interim project, you have two topic options to choose from: the guided Project A and the open-ended Project B. Please select one project. Both projects are outlined below. The following general guidelines apply to both projects:
Execution:
•	Important: Complete the project using SQL in MySQL and apply the concepts taught in the course.
•	Please work on the project individually (group work is not allowed!). Always keep your objective or task in mind.
Submission:
•	Please create a brief PowerPoint presentation for submission (at least 8 slides).
•	Also submit a script containing your SQL code. Include comments explaining the key code elements or components.
•	In the presentation, address the task description, your approach, and the results you generated.
•	Submit your materials (presentation + script) no later than Wednesday, 18th December 2024, by 5:00 PM.
Presentation of the Project Work
•	Present your project based on the submitted materials with a self-prepared presentation of approximately 15 minutes. Use your PowerPoint presentation.
•	In the presentation, explain your chosen approach precisely and clearly present the results you produced in response to the task.
•	Be prepared for possible questions from the teaching team to clarify understanding, etc.
________________________________________
Project A: Database Design for a Hospital
Background/Guidance:
Important: The following information is only intended to support your own considerations; you do not have to include all the mentioned aspects!
The first step in designing a database is to determine what information is required for the database. This might initially sound trivial, but in practice, this task is extremely complex and laborious.
To do this effectively, it is essential to engage deeply with the workflows of the institution in question. When designing a database for a hospital, as in this project, simply sitting at a computer and recording the data that comes to mind is insufficient. Extensive research is necessary.
For this purpose, it is important to talk to the relevant staff members—for example, one of the doctors working in the hospital. A brief hallway conversation is not enough. It is necessary to schedule a detailed meeting to discuss all the specifics thoroughly.
Additionally, observing the workflows directly can be beneficial. If staff are not familiar with database design, they may forget some important details. By personally observing the workflows, it is often possible to identify additional critical information for the database.
It is also important not to limit this to one department or professional group. If you only talk to doctors and observe their work, you will only gather information relevant to that group. However, nurses, janitors, or maintenance staff often need entirely different information to perform their duties. To ensure smooth operations throughout the entire hospital, it is essential to address the needs of all departments and professional groups.
This approach will now be illustrated through our practical project. In our initial considerations, we concluded that we need a table for staff and patients to store their personal data. Additionally, we want to organize the room occupancy with our database, so we will create another table for that purpose.
________________________________________
Detailed Planning
We begin our detailed planning by talking to one of the hospital doctors. The doctor informs us that during their rounds, the patient’s diagnosis is the most crucial piece of information. Additionally, it is important to have information about previous treatment steps. For personal data, aside from the first and last name, the age and gender are essential, as these details influence the required treatment measures. It is also necessary to have a way to contact the patient’s relatives if needed.
The doctor does not provide any information about room occupancy or the staff table, as this is outside their responsibility. However, they suggest that it would be useful to create a table for medical equipment usage, which records which devices are available and which staff members are using them at specific times.
We then speak with a nurse, who informs us that for their work, it is crucial to know which medications the patient needs and what care procedures are necessary. The nurse also accompanies patients to further examinations, such as X-rays, ultrasound scans, and CT scans, which are not conducted in the patient’s room. To manage these appointments, it is important to store them in the database.
Next, we visit the HR department, which needs the personal data of staff members, such as name, first name, address, gender, phone number, email, and salary. The role each staff member performs in the hospital is also significant. Additionally, tracking vacation schedules and planning work shifts is essential. Therefore, it is important to record which staff member is working at which time.
Finally, we meet with the hospital administration responsible for room occupancy. In this discussion, it becomes clear that it is important to note not just the capacity of the rooms but also the ward—since it makes a big difference whether it is a regular hospital room or an intensive care unit. For planning room occupancy, it is useful to record the expected discharge date. For billing purposes, it is necessary to note the admission date and the actual discharge date. Furthermore, the patient’s insurance information must be recorded, specifying whether it is private or public insurance. Of course, for billing purposes, the patient’s address and a contact option via phone or email are also important.
________________________________________
Conclusion
This concludes our initial investigation—though there are certainly many more hospital staff members who need information about patients, staff, or rooms for their specific tasks. However, addressing all these cases would exceed the scope of our project. Even at this stage, it is clear how diverse the information is that we need to incorporate into our database. This highlights the importance of thorough research.
Finally, we create a list documenting the identified requirements. We specify the various objects we want to include in our database, adding all the necessary details for each. This enhances clarity and facilitates further processing.
Note: The following lists are just examples and do not need to be implemented exactly as shown!
4o
Background/Guidance:
Important: The following information is provided only to support your own considerations; you do not need to include all the mentioned aspects!
The first step in database design is determining what information is needed for the database. This might seem trivial initially, but in practice, it is a complex and demanding task.
It is necessary to thoroughly understand the workflows in the institution. For a hospital database, it is insufficient to simply input random data. Extensive research is required.
To achieve this, it is important to talk to relevant staff members—such as doctors. A brief hallway conversation is not enough; scheduling a detailed meeting is necessary to discuss all aspects thoroughly.
Additionally, observing the workflows can be helpful. Staff unfamiliar with database design may overlook critical details. By observing workflows directly, you can often identify more crucial information to include in the database.
It is also essential not to focus on just one department or job role. For example, speaking only with doctors will yield information relevant only to them. However, nurses, janitors, or maintenance staff often need completely different information for their duties. Ensuring smooth operation across the entire hospital requires addressing the needs of all departments and roles.
Initial Considerations
In our initial planning, we decided to create tables for staff and patients to capture their personal data. We also want to manage room occupancy, so we’ll create another table for that.
Detailed Planning
1.	Doctor’s Input:
o	Doctors primarily need patient diagnoses and information on prior treatment steps.
o	Important personal data include:
	First name, last name, age, gender (affecting treatment measures).
	Emergency contact information.
2.	Nurse’s Input:
o	Nurses need to know:
	Medications prescribed.
	Required care procedures.
	Patient appointments for tests like X-rays or ultrasounds, which should be recorded in the database.
3.	HR Department:
o	HR needs staff data:
	Name, address, gender, phone number, email, salary, and job role.
	Vacation schedules and work shifts.
4.	Administration:
o	Administration handles room occupancy. They need to track:
	Room capacity, ward type (regular or ICU).
	Expected discharge date, admission date, and actual discharge date.
	Patient insurance details (private or public).
________________________________________
Concrete Tasks
a) Create a Database Schema for the Hospital
Focus on the following points:
•	What are the entity and relation tables in your schema?
•	What relationships exist between tables?
•	What are the cardinalities of these relationships?
•	Is your database design normalized? If so, to what form?
•	Identify the primary keys and foreign keys with references.
•	Highlight important attributes (columns) for each table.
b) Implement the Database in MySQL Workbench
Create the database using appropriate SQL commands.
________________________________________
Project B: Open Project for Database Schema Design and Implementation
In this project, you are free to choose the database design application or process for which you will create and implement a database schema in MySQL. However, the following requirements apply:
a) Create a Database Schema for XYZ
Focus on the following points:
•	What are the entity and relation tables in your schema?
•	What relationships exist between tables?
•	What are the cardinalities of these relationships?
•	Is your database design normalized? If so, to what form?
•	Identify the primary keys and foreign keys with references.
•	Highlight important attributes (columns) for each table.
b) Implement the Database in MySQL Workbench
Create the database using appropriate SQL commands.
Important: Before you begin, briefly present your project idea and plan to a member of the teaching team.
4o


