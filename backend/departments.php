<?php
include "config.php";
$error = '';
$valid = '';
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $dname = filter_input(INPUT_POST, 'department_name', FILTER_SANITIZE_SPECIAL_CHARS);
    $location = filter_input(INPUT_POST, 'location', FILTER_SANITIZE_SPECIAL_CHARS);
    if (isset($_GET['id'])) {
        if ($dname && $location) {
            $id = $_GET['id'];
            $query = "update departments set department_name=?, location=? where id=$id";
            $stm = mysqli_prepare($mysql, $query);
            mysqli_stmt_bind_param($stm, 'ss', $dname, $location);
            mysqli_stmt_execute($stm);
            header("Refresh:0");
            $valid = "done";
        } else {
            $error = "Invalid Input";
        }
    } else {
        if ($dname && $location) {
            $query = "insert into departments  (department_name, location) values(?,?)";
            $stm = mysqli_prepare($mysql, $query);
            mysqli_stmt_bind_param($stm, 'ss', $dname,  $location);
            mysqli_stmt_execute($stm);
            header("Refresh:0");
            $valid = "done";
        } else {
            $error = "Invalid Input";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unity Care Clinic Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body class="bg-gray-900 text-white font-sans" cz-shortcut-listen="true">

    <div class="flex h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-gray-800 p-6">
            <div class="flex items-center gap-3 mb-8">
                <div class="w-10 h-10 bg-teal-500 rounded-full flex items-center justify-center">
                    <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z">
                        </path>
                    </svg>
                </div>
                <div>
                    <h1 class="text-xl font-bold">UNITY CARE CLINIC</h1>
                    <p class="text-xs text-gray-400">ADMIN/GENERAL</p>
                </div>
            </div>

            <nav class="space-y-2">
                <a href="../index.php"
                    class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6">
                        </path>
                    </svg>
                    Dashboard
                </a>

                <a href="patients.php" class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z">
                        </path>
                    </svg>
                    Patients
                </a>

                <a href="doctors.php" class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                    </svg>
                    Doctors
                </a>
                <a href="departments.php" class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4">
                        </path>
                    </svg>
                    Departments
                </a>


            </nav>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-auto">
            <!-- Header -->
            <div class="flex justify-end items-center gap-4 mb-8">
                <button class="px-3 py-1 bg-gray-700 rounded text-sm">English</button>
                <button class="px-3 py-1 bg-gray-700 rounded text-sm">Français</button>
            </div>

            <div class="grid gap-6 mb-8">
                <div class="bg-gray-800 p-6 rounded-lg">
                    <?php
                    if (isset($_GET['id'])) {
                        $id = $_GET['id'];
                        $query = "select * from departments where id=$id";
                        $select_where = mysqli_query($mysql, $query);
                        $data = mysqli_fetch_assoc($select_where);
                        $dname = $data['department_name'];
                        $location = $data['location'];

                    }

                    ?>
                    <h3 class="text-lg font-semibold mb-4 text-center">ADD DEPARTMENTS</h3>
                    <form class="form max-w-md mx-auto space-y-4" action="" method="POST">
                        <input id="id" type="hidden" value="<?= $id ?? '' ?>">

                        <div>
                            <label class="block mb-2 text-sm font-medium" for="department_name">department Name:</label>
                            <input
                                class="w-full rounded-lg border border-gray-700 bg-gray-700 px-4 py-2 text-white focus:border-blue-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
                                id="department_name" type="text" name="department_name" value="<?= $dname ?? '' ?>">
                        </div>

                        <div>
                            <label class="block mb-2 text-sm font-medium" for="location">location:</label>
                            <input
                                class="w-full rounded-lg border border-gray-700 bg-gray-700 px-4 py-2 text-white focus:border-blue-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
                                id="location" type="text" name="location" value="<?= $location ?? '' ?>">
                        </div>


                        <div class="pt-4">
                            <button type="submit"
                                class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg transition duration-200">
                                Add department
                            </button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="grid gap-6">

                <div class="bg-gray-800 p-6 rounded-lg">
                    <h3 class="text-lg font-semibold mb-4">DEPARTMENTS</h3>
                    <table class="w-full text-left border-collapse ">
                        <thead>
                            <tr class="border-b border-gray-700">
                                <th class="text-gray-400">department ID</th>
                                <th class="text-gray-400">department name</th>
                                <th class="text-gray-400">location</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = "select * from departments";
                            $stm = mysqli_query($mysql, $query);
                            while ($row = mysqli_fetch_assoc($stm)) {
                                echo "
                                        <tr>
                                            <td>$row[id]</td>
                                            <td>$row[department_name]</td>
                                            <td>$row[location]</td>
                                              <td>
                        <a class='action-button update-button ' href='departments.php?id=$row[id]'>update</a>
                    </td>
                    <td>
                        <a class='action-button ' href='delete_d.php?id=$row[id]'>delete</a>
                    </td>
                                         </tr>
                                        ";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>


            </div>
        </main>
    </div>

</body>

</html>