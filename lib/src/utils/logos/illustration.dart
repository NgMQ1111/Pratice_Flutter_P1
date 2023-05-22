import 'package:flutter/material.dart';

class Illustration extends StatelessWidget {
  const Illustration(this._context, this._heightPage, {super.key});
  final double _heightPage;
  final dynamic _context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(_context).size.height - _heightPage,
      child: const Center(
        child: Text(
          'Illustration',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
