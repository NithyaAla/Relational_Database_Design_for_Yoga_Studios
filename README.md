### Relational Database Design for Yoga Studio Analytics

This project presents a relational database design for a large multi-location yoga studio organization. The database enables studio management and executive teams to perform data analysis to identify high-performing trainers based on student engagement and satisfaction metrics.

The database captures detailed information about yoga sessions conducted by trainers and implements a rating mechanism based on student feedback collected through satisfaction surveys.

### Student Satisfaction and Trainer Rating Logic

Students evaluate trainers using a satisfaction survey with scores ranging from 0 to 5, where:

0 represents the lowest satisfaction

5 represents the highest satisfaction

Trainer ratings are derived from survey scores as follows:

A trainer receives a rating of ‘Y’ if the score is greater than or equal to 3

Scores below 3 result in a rating of ‘N’

This logic enables consistent and scalable evaluation of trainer performance.

Diet Plan Tracking

Students may either:

Opt for a diet plan suggested by an assigned dietician, or

Follow their own independent diet plan

The database records diet plan selections and links suggested plans to the respective dieticians.

### Analytical Use Cases Supported

The database is designed to answer key operational and strategic questions, including:

Which yoga sessions are conducted in each studio type (e.g., Basic, Luxury, Aerial)?

Which sessions were attended by a student enrolled under a specific trainer, and were they conducted via live-streaming or in person?

How many students are enrolled under each trainer?

Which trainers have the highest student enrollments?

Which students opted for a diet plan, and which dietician recommended it?

How many instructional hours are required for students to learn a specific yoga form?

Which surveys were taken by which students, what scores were provided, and how trainer ratings are derived from those scores?

What is the overall rating of each trainer, and which trainers are top performers?

### Database Design and Implementation

The relational schema was modeled based on management-defined requirements for training sessions, student enrollment, surveys, and dietary plans.

The database was fully implemented using MySQL.

A NoSQL prototype using MongoDB was developed with three collections to evaluate feasibility for identifying trainers contributing to enrollment growth.

### Data Access, Analysis, and Visualization

A connection to the database was established using Python.

Analytical queries were executed, and visualizations were generated using matplotlib and seaborn to support data-driven decision-making for identifying high-performing trainers.

### Scalability and Cloud Migration

To support scalability and multi-location analytics:

The relational database was migrated from MySQL to Snowflake

Analytical dashboards were created to identify:

Popular yoga forms

Trainers with consistently high ratings

This migration enables efficient querying, improved performance, and enterprise-scale analytics.
