<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - LoginTracker</title>
    <style>
        /* Your CSS styles from the original HTML */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        /* Header */
        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        /* Main content */
        .container {
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 32px;
        }

        .welcome-msg {
            margin-bottom: 40px;
            font-size: 20px;
        }

        .user-info, .login-history {
            width: 100%;
            max-width: 800px;
            background-color: white;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .user-info h2, .login-history h2 {
            margin-bottom: 10px;
        }

        .login-history table {
            width: 100%;
            border-collapse: collapse;
        }

        .login-history th, .login-history td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        .login-history th {
            background-color: #f2f2f2;
        }

        .logout-btn {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .logout-btn:hover {
            background-color: #555;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    
        /* Other styles */
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>LoginTracker Dashboard</h1>
    </header>

    <!-- Main content -->
    <div class="container">
        <!-- Welcome message -->
        <div class="welcome-msg">
            <p>Welcome, <strong>${username}</strong>! Here's your dashboard:</p>
        </div>

        <!-- User information section -->
        <div class="user-info">
            <h2>Your Information</h2>
            <p><strong>Name:</strong> ${username}</p>
            <p><strong>Email:</strong> ${email}</p>
            <p><strong>Designation:</strong> ${designation}</p>
            
        </div>

        <!-- Login history section (static for now, can be dynamic) -->
        <div class="login-history">
            <h2>Your Login History</h2>
            <table>
                <thead>
                    <tr>
                        <th>Login Date</th>
                        <th>Login Time</th>
                        <th>Logout Time</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Example of static data, can be replaced with dynamic data -->
                    <tr>
                        <td>2024-09-30</td>
                        <td>08:30 AM</td>
                        <td>05:00 PM</td>
                    </tr>
                    <tr>
                        <td>2024-09-29</td>
                        <td>08:45 AM</td>
                        <td>05:15 PM</td>
                    </tr>
                    <!-- More rows can be generated dynamically from database -->
                </tbody>
            </table>
        </div>

        <!-- Logout button -->
        <form action="/logintracker/logout" method="post">
            <input type="submit" class="logout-btn" value="Logout">
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 LoginTracker.com. All rights reserved.</p>
    </footer>

</body>
</html>
