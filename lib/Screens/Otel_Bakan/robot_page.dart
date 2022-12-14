import 'package:flutter/material.dart';
import 'package:meta_ozce_0/widgets/navigation_bakan1.dart';

class RobotPageBakan extends StatefulWidget {
  @override
  _RobotPageBakanState createState() => _RobotPageBakanState();
}

class _RobotPageBakanState extends State<RobotPageBakan> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ClipRect(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      width: 450,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            'assets/images/rob1.png',
                          ),
                        ),
                        border: Border.all(color: Colors.black12, width: 3),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade100,
                            offset: const Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            const Text(
              'Size nasıl yardımcı olabilirim?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ClipRect(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Center(
                      child: Text(
                        'Otellere bakmak istiyorum.',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationBakan1(
                                index: 0,
                              )),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ClipRect(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Center(
                      child: Text(
                        'Favorilere eklediğim otelleri görmek istiyorum.',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationBakan1(
                                index: 1,
                              )),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ClipRect(
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Center(
                      child: Text(
                        'Profilime gitmek istiyorum.',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationBakan1(
                                index: 3,
                              )),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Başka bir sorum var.',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
