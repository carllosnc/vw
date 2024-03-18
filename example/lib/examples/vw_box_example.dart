import 'package:flutter/material.dart';
import 'package:vw/vw.dart';
import 'package:vw/vw_box.dart';

class VWBoxExample extends StatelessWidget {
  const VWBoxExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Boxy',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1518112166137-85f9979a43aa?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VWBox(
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
                splashColor: Colors.white.withOpacity(0.3),
                onTap: () {},
                child: const Text(
                  'Solid',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
                splashColor: Colors.white.withOpacity(0.3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(1),
                    blurRadius: 0,
                    offset: const Offset(3, 3),
                  ),
                ],
                onTap: () {},
                child: const Text(
                  'Solid with shadow',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.orange.shade300,
                  ],
                ),
                onTap: () => {},
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.black.withOpacity(0.2),
                child: const Text(
                  'Gradient',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                color: Colors.white.withOpacity(0.3),
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.white.withOpacity(0.3),
                onTap: () => {},
                child: const Text(
                  'Opacity',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                color: Colors.white.withOpacity(0.3),
                height: 120,
                width: double.infinity,
                blurEffect: 10,
                onTap: () {},
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.white.withOpacity(0.2),
                child: const Text(
                  'Blurred',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.orange.shade300,
                  ],
                ),
                height: 120,
                width: double.infinity,
                blurEffect: 20,
                onTap: () {},
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.white.withOpacity(0.2),
                child: const Text(
                  'Blurred with gradient',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                gradient: const LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.greenAccent,
                  ],
                ),
                height: 120,
                width: double.infinity,
                blurEffect: 20,
                onTap: () {},
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.white.withOpacity(0.2),
                border: Border.all(
                  color: Colors.white.withOpacity(1),
                  width: 1,
                ),
                child: const Text(
                  'Blurred with gradient and border',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                backgroundImage: const NetworkImage(
                    'https://images.unsplash.com/photo-1498940757830-82f7813bf178?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                height: 120,
                width: double.infinity,
                onTap: () {},
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.white.withOpacity(0.2),
                child: const Text(
                  'Background image',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                backgroundImage: const NetworkImage(
                    'https://images.unsplash.com/photo-1498940757830-82f7813bf178?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                height: 120,
                width: double.infinity,
                onTap: () {},
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                ),
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.white.withOpacity(0.2),
                border: Border.all(
                  color: Colors.white.withOpacity(1),
                  width: 1,
                ),
                child: const Text(
                  'Background image with gradient',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              VWBox(
                backgroundImage: const NetworkImage(
                    'https://images.unsplash.com/photo-1498940757830-82f7813bf178?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                height: 120,
                width: double.infinity,
                onTap: () {},
                blurEffect: 5,
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                ),
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.white.withOpacity(0.2),
                border: Border.all(
                  color: Colors.white.withOpacity(1),
                  width: 1,
                ),
                child: const Text(
                  'Background image with gradient and blur ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
