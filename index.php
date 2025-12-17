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
    <?php
    include "backend/config.php"
        ?>
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
                <a href="#" class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6">
                        </path>
                    </svg>
                    Dashboard
                </a>

                <a href="backend/patients.php" class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z">
                        </path>
                    </svg>
                    Patients
                </a>

                <a href="#" class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                    </svg>
                    Doctors
                </a>
                <a href="#" class="flex items-center gap-3 px-4 py-2 text-gray-400 hover:bg-gray-700 rounded">
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
                <button class="px-3 py-1 bg-gray-700 rounded text-sm">🇫🇷 English</button>
                <button class="px-3 py-1 bg-gray-700 rounded text-sm">Français</button>
            </div>

            <!-- Stats Cards -->
            <div class="grid grid-cols-3 gap-6 mb-8">
                <div class="bg-teal-700 p-6 rounded-lg">
                    <p class="text-sm text-teal-200 mb-2">TOTAL DOCTORS</p>
                    <p class="text-4xl font-bold"><?php $query = "select * from doctors";
                    $stm = mysqli_query($mysql, $query);
                    echo $stm->num_rows;
                    ?></p>
                </div>
                <div class="bg-gray-700 p-6 rounded-lg">
                    <p class="text-sm text-gray-300 mb-2">TOTAL PATIENTS</p>
                    <p class="text-4xl font-bold"><?php $query = "select * from patients";
                    $stm = mysqli_query($mysql, $query);
                    echo $stm->num_rows;
                    ?></p>
                    </p>
                </div>
                <div class="bg-gray-600 p-6 rounded-lg">
                    <p class="text-sm text-gray-300 mb-2">DEPARTMENTS</p>
                    <p class="text-4xl font-bold"><?php $query = "select * from departments";
                    $stm = mysqli_query($mysql, $query);
                    echo $stm->num_rows;
                    ?></p>
                    </p>
                    </p>
                </div>
            </div>

            <!-- Charts Section -->
            <div class="grid grid-cols-2 gap-6 mb-8">
                <!-- Performance by Department -->
                <div class="bg-gray-800 p-6 rounded-lg">
                    <h3 class="text-lg font-semibold mb-4">PERFORMANCE BY DEPARTMENT</h3>
                    <div class="flex items-end justify-around h-64" style="COLOR: coral;">
                        <div class="flex flex-col items-center">
                            <div class="w-16 bg-teal-400 rounded-t" style="height: 45%"></div>
                            <p class="text-xs mt-2 text-gray-400">Cardiology</p>
                        </div>
                        <div class="flex flex-col items-center">
                            <div class="w-16 bg-teal-500 rounded-t" style="height: 65%"></div>
                            <p class="text-xs mt-2 text-gray-400">Ontology</p>
                        </div>
                        <div class="flex flex-col items-center">
                            <div class="w-16 bg-teal-400 rounded-t" style="height: 85%"></div>
                            <p class="text-xs mt-2 text-gray-400">Nephrology</p>
                        </div>
                        <div class="flex flex-col items-center">
                            <div class="w-16 bg-teal-500 rounded-t" style="height: 75%"></div>
                            <p class="text-xs mt-2 text-gray-400">Pediatrics</p>
                        </div>
                        <div class="flex flex-col items-center">
                            <div class="w-16 bg-teal-400 rounded-t" style="height: 70%"></div>
                            <p class="text-xs mt-2 text-gray-400">Pediatrics</p>
                        </div>
                    </div>
                </div>

                <!-- Patient Distribution by Age Group -->
                <div class="bg-gray-800 p-6 rounded-lg">
                    <h3 class="text-lg font-semibold mb-4">PATIENT DISTRIBUTION BY AGE GROUP</h3>
                    <canvas id="myChart"></canvas>
                    <script>
                        const ctx = document.getElementById('myChart');

                        new Chart(ctx, {
                            type: 'doughnut',
                            data: {
                                labels: ['15', '16-30', '31-45','46+'],
                                datasets: [{
                                    label: 'Patient Distribution',
                                    data: [300, 50, 100,100],
                                    backgroundColor: [
                                        'rgba(143, 178, 253, 1)',
                                        'rgba(80, 185, 255, 1)',
                                        'rgba(86, 117, 255, 1)',
                                        'rgba(60, 95, 250, 1)'
                                    ],
                                    hoverOffset: 4
                                }]
                            }
                        });
                    </script>

                    <!-- </div> -->
                </div>
            </div>

            <!-- Recent Activity & Features -->
            <div class="grid gap-6">
                <!-- Recent Activity -->
                <div class="bg-gray-800 p-6 rounded-lg">
                    <h3 class="text-lg font-semibold mb-4">RECENT ACTIVITY</h3>
                    <table class="w-full text-left border-collapse">
                        <thead>
                            <tr class="border-b border-gray-700">
                                <th class="text-gray-400">User ID</th>
                                <th class="text-gray-400">full name</th>
                                <th class="text-gray-400">email</th>
                                <th class="text-gray-400">gender</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = "select * from patients order by id desc limit 5";
                            $stm = mysqli_query($mysql, $query);
                            while ($row = mysqli_fetch_assoc($stm)) {
                                echo "
                                        <tr>
                                            <td>$row[id]</td>
                                            <td>$row[full_name]</td>
                                            <td>$row[email]</td>
                                            <td>$row[gender]</td>
                                         </tr>
                                        ";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>

                <!-- Bonus Features -->

            </div>
        </main>
    </div>
    <!-- Code injected by live-server -->
    <script>
        // <![CDATA[  <-- For SVG support
        if ('WebSocket' in window) {
            (function () {
                function refreshCSS() {
                    var sheets = [].slice.call(document.getElementsByTagName("link"));
                    var head = document.getElementsByTagName("head")[0];
                    for (var i = 0; i < sheets.length; ++i) {
                        var elem = sheets[i];
                        var parent = elem.parentElement || head;
                        parent.removeChild(elem);
                        var rel = elem.rel;
                        if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                            var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                            elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
                        }
                        parent.appendChild(elem);
                    }
                }
                var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
                var address = protocol + window.location.host + window.location.pathname + '/ws';
                var socket = new WebSocket(address);
                socket.onmessage = function (msg) {
                    if (msg.data == 'reload') window.location.reload();
                    else if (msg.data == 'refreshcss') refreshCSS();
                };
                if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
                    console.log('Live reload enabled.');
                    sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
                }
            })();
        }
        else {
            console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
        }
        // ]]>
    </script>

</body>

</html>