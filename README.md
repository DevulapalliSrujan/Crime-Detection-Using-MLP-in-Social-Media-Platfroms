Crime Type Classification Using Machine Learning

Project Overview
This project focuses on detecting and classifying crime types using Machine Learning techniques. The system analyzes crime-related data and predicts the type of crime using a trained classification model. It is designed as a Final Year Engineering Project with practical applications in crime analysis and decision support systems.
The project includes data preprocessing, model training, and prediction using pre-trained ML models stored as `.pkl` files.

Project Directory Structure

bash
crime-type-classification-ml/
│
├── adminapp/                      Admin-related application logic
├── userapp/                       User-related application logic
├── assets/                        Static assets (CSS, JS, images)
├── media/                         Uploaded or processed media files
│
├── crimeproject/                  Main Django project folder
│
├── crime detection images/        Dataset images related to crime detection
├── crime_type/                    Raw crime dataset
├── crime_type_clean/              Cleaned & preprocessed dataset
│
├── classification-with-ml-predict-crime-type/
│   ├── Dt_crime.pkl               Trained Decision Tree model
│   ├── Dt_crime1.pkl              Updated / alternative trained model
│   ├── crimeproject.sql           Database dump
│
├── myvenv/                        Virtual environment (optional)
│
├── manage.py                      Django management script
├── requirements.txt               Project dependencies
└── README.md                      Project documentation

Technologies Used
 Programming Language: Python
 Framework: Django
 Machine Learning: Scikit-learn
 Database: SQLite / MySQL
 Model Type: Decision Tree Classifier
 Frontend: HTML, CSS, Bootstrap
 Tools: VS Code, GitHub

Machine Learning Workflow
1. Data Collection
    Crime data and images collected from open datasets
2. Data Cleaning & Preprocessing
    Noise removal and feature normalization
3. Model Training
    Decision Tree classifier trained using Scikit-learn
4. Model Serialization
    Trained models saved as `.pkl` files
5. Prediction

Crime type predicted based on user input data

How to Run the Project
Clone the Repository

bash
git clone https://github.com/your-username/crime-type-classification-ml.git
cd crime-type-classification-ml

Create & Activate Virtual Environment

bash
python -m venv venv
venv\Scripts\activate    Windows

Install Dependencies
bash
pip install -r requirements.txt

Apply Migrations
bash
python manage.py makemigrations
python manage.py migrate


Run the Server
bash
python manage.py runserver

Open browser and visit:
http://127.0.0.1:8000/


User Roles
Admin
Manage datasets
View prediction results
Monitor system performance

User
Enter crime-related data
Get predicted crime type
View prediction outcomes

Sample Output
Input: Crime attributes (location, time, description, etc.)
Output: Predicted Crime Type (e.g., Theft, Assault, Robbery)

Project Objectives
 Automate crime classification using ML
 Reduce manual crime analysis effort
 Improve accuracy in crime type prediction
 Support law enforcement decision-making

Future Enhancements
 Integration with real-time crime data
 Deep Learning models (CNN / LSTM)
 Crime hotspot visualization using maps
 Role-based access security improvements

Academic Details
 Project Type: Final Year Engineering Project
 Domain: Machine Learning / Data Science
 Use Case: Crime Analysis & Prediction

License
This project is developed for academic purposes only.

