import 'package:car_rental/constant.dart';
import 'package:car_rental/data/car.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  const DetailScreen({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final car = Provider.of<Cars>(context, listen: false).cars[widget.index];
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: size.width * 0.1,
                          width: size.width * 0.1,
                          decoration: BoxDecoration(
                            color: kShadeColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/back-arrow.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kShadeColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Image.asset('assets/images/active-saved.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      Text(car.name, style: kCarTitle),
                    ],
                  ),
                ),
                Center(
                  child: Image.asset('assets/images/models/${car.model.name}.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 49, 16, 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Description', style: kSectionTitle),
                      const SizedBox(height: 10),
                      Text(
                        car.description,
                        style: kBrand.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Specs', style: kSectionTitle),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/speed.png'),
                              const SizedBox(height: 3),
                              Text(car.speed, style: kBrand),
                              const SizedBox(height: 3),
                              Text(
                                'Max. Speed',
                                style: kBrand.copyWith(
                                  color: kTextColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/seat.png'),
                              const SizedBox(height: 3),
                              Text(car.seats, style: kBrand),
                              const SizedBox(height: 3),
                              Text(
                                'Seats',
                                style: kBrand.copyWith(
                                  color: kTextColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/engine.png'),
                              const SizedBox(height: 3),
                              Text(car.engine, style: kBrand),
                              const SizedBox(height: 3),
                              Text(
                                'Engine',
                                style: kBrand.copyWith(
                                  color: kTextColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Prices', style: kSectionTitle),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: size.height * 0.1,
                            width: size.width * 0.28,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: kShadeColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(car.price, style: kPrice),
                                const SizedBox(height: 2),
                                Text(
                                  '/week',
                                  style: kRate.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: kTextColor.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: size.height * 0.1,
                            width: size.width * 0.28,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: kShadeColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(r'$2600', style: kPrice),
                                const SizedBox(height: 2),
                                Text(
                                  '/month',
                                  style: kRate.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: kTextColor.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: size.height * 0.1,
                            width: size.width * 0.28,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: kShadeColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(r'$150', style: kPrice),
                                const SizedBox(height: 2),
                                Text(
                                  '/day',
                                  style: kRate.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: kTextColor.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 53,
                width: MediaQuery.of(context).size.width - 32,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: kTextColor,
                    backgroundColor: kPrimaryColor,
                    textStyle: kPrice,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text('Rent This Car'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
