import 'package:barber_app/pages/booking.dart';
import 'package:barber_app/services/shared_pref.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? name;

  getdatafromsharedpref() async {
    name = await SharedPreferenceHelper().getUserName();
    // image = await SharedPreferenceHelper().getUserImage();
    setState(() {});
  }

  getontheload() async {
    await getdatafromsharedpref();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b1615),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Hello!!",
                      style: TextStyle(
                          color: Color.fromARGB(197, 255, 255, 255),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      name!,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 253, 253, 253),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            /* ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image!,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),*/
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Divider(
              color: Colors.white30,
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Text(
              "Services",
              style: TextStyle(
                  color: Color.fromARGB(197, 255, 255, 255),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Classic Shaving")));
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFe29452),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/shaving.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          const Text(
                            "Classic Shaving",
                            style: TextStyle(
                                color: Color.fromARGB(197, 255, 255, 255),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Hair Washing")));
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFe29452),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/hair.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          const Text(
                            "Hair Washing",
                            style: TextStyle(
                                color: Color.fromARGB(197, 255, 255, 255),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Hair Cutting")));
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFe29452),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/cutting.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          const Text(
                            "Hair Cutting",
                            style: TextStyle(
                                color: Color.fromARGB(197, 255, 255, 255),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Beard Shaving")));
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFe29452),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/beard.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          const Text(
                            "Beard Shaving",
                            style: TextStyle(
                                color: Color.fromARGB(197, 255, 255, 255),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Facial")));
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFe29452),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/facials.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          const Text(
                            "Facial",
                            style: TextStyle(
                                color: Color.fromARGB(197, 255, 255, 255),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Booking(service: "Kid's hair cutting")));
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFe29452),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/kids.png",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          const Text(
                            "Kid's hair cutting",
                            style: TextStyle(
                                color: Color.fromARGB(197, 255, 255, 255),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
