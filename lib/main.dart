import 'package:flutter/material.dart';

void main() {
  runApp(const InClass02App());
}

class InClass02App extends StatelessWidget {
  const InClass02App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F5F8),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
      ),

      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =========================
      // APP BAR
      // =========================

      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),

      // =========================
      // BODY
      // =========================
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),

              // =========================
              // PROFILE PHOTO
              // =========================
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Profile photo
                    Container(
                      width: 120,
                      height: 120,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,

                        border: Border.all(
                          color: const Color(0xFFD9D9D9),
                          width: 1.5,
                        ),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),

                      child: ClipOval(
                        child: Image.asset(
                          'assests/IMG_2621.jpg',

                          width: 120,
                          height: 120,

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // =========================
                    // VERIFIED BADGE
                    // =========================
                    Positioned(
                      right: 2,
                      bottom: 17,

                      child: Container(
                        width: 31,
                        height: 31,

                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // =========================
              // DIVIDER
              // =========================
              const Divider(color: Colors.black, thickness: 1, height: 20),

              const SizedBox(height: 5),

              // =========================
              // NAME
              // =========================
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                'Diluka',
                style: TextStyle(fontSize: 14, color: Color(0xFF444444)),
              ),

              const SizedBox(height: 22),

              // =========================
              // EMAIL
              // =========================
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 6),

              Row(
                children: const [
                  Icon(Icons.email, size: 16, color: Colors.black),

                  SizedBox(width: 6),

                  Text(
                    'diluka.w@nsbm.ac.lk',
                    style: TextStyle(fontSize: 14, color: Color(0xFF444444)),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // =========================
              // POINTS
              // =========================
              const Text(
                'Points',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 6),

              Row(
                children: const [
                  Icon(Icons.star, size: 18, color: Colors.black),

                  SizedBox(width: 6),

                  Text(
                    '0',
                    style: TextStyle(fontSize: 14, color: Color(0xFF444444)),
                  ),
                ],
              ),

              const Spacer(),
            ],
          ),
        ),
      ),

      // =========================
      // FLOATING ACTION BUTTON
      // =========================
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 5,

        shape: const CircleBorder(),

        onPressed: () {
          _showAddDialog(context);
        },

        child: const Icon(Icons.add, size: 27),
      ),
    );
  }

  // =========================
  // ADD BUTTON DIALOG
  // =========================

  static void _showAddDialog(BuildContext context) {
    showDialog(
      context: context,

      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Add',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          content: const Text('Add button pressed.'),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
