# VitalPulse

VitalPulse is a web application designed to track and analyze health metrics collected from users' mobile devices and smartwatches (such as Apple Watch). The application not only visualizes daily health metrics—like steps walked, average heartbeat, and other daily activity statistics—but it also sets goals, awards achievements, and explores correlations between exercise and mood. This project was developed as a group assignment for a Software Process and Modeling course in Year 1.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Installation and Setup](#installation-and-setup)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## Overview

VitalPulse serves as a centralized platform where users can view, analyze, and interact with their daily health metrics. The data is primarily gathered from a Swift-based mobile application (running on iPhone and Apple Watch) and transmitted securely to the web server. This rich dataset is then used to generate dynamic graphs, track progress against daily goals (like step counts), and even set up a reward system to motivate healthier lifestyles. Additionally, the project aims to study the correlation between physical exercise and mood, providing insights into overall well-being.

## Features

- **Health Metrics Dashboard:**  
  Visualize key metrics such as steps taken, average heartbeat, and other daily health statistics.
  
- **Graphical Data Representation:**  
  Interactive graphs showing daily, weekly, and monthly trends with the ability to explore correlations between different metrics.
  
- **Goal Setting and Achievements:**  
  Users can set daily health goals (e.g., steps walked) and receive rewards or badges upon completion.
  
- **Data Integration:**  
  Seamless data transfer from a Swift-based mobile app and Apple Watch to the web application.
  
- **Correlation Analysis:**  
  Tools to analyze the impact of exercise on mood, helping users understand the relationship between physical activity and mental well-being.

## Technologies Used

- **Server-Side:**  
  - **PHP:** Handles API requests, server logic, and integration with the database.  
  - **Python:** Used for data processing, generating correlations, and possibly running additional analysis scripts.
  
- **Database:**  
  - **PostgreSQL:** Stores users' health metrics and associated data.
  
- **Mobile Application:**  
  - **Swift:** Developed for iOS devices to collect and send health data.
  
- **Front-End:**  
  - HTML, CSS, and JavaScript for a dynamic and responsive web interface.

### Explanation of the README Components

1. **Project Title & Overview:**  
   The title "VitalPulse" captures the essence of tracking the vital signs of users. The overview describes what the project does and highlights its innovative aspects.

2. **Features:**  
   This section outlines key functionality such as dashboards, goal setting, achievements, and correlation analysis—making the project enticing and clearly defined.

3. **Technologies & Tools:**  
   Listing the technologies (PHP, Python, PostgreSQL, Swift) provides transparency on the stack and helps any contributors understand what they’ll be working with.

4. **Project Structure:**  
   A suggested directory layout gives a clear organization of files and folders.

5. **Installation and Setup:**  
   Step-by-step instructions ensure that developers can quickly get the project running locally.

6. **Usage:**  
   Details on how users and developers interact with the project ensure clarity of purpose and functionality.

7. **Contributing, License, and Acknowledgements:**  
   These sections are standard for open-source projects and provide guidelines on how to contribute, legal usage, and credits.

This README aims to make the project sound engaging and professional while providing all necessary technical details for both users and developers. Enjoy developing VitalPulse!
