import 'package:flutter/material.dart';

class Practicle_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Student information
            _buildInfoRow('Name:', 'Shrey Savani'),
            _buildInfoRow('ID:', 'D22IT189'),
            _buildInfoRow('Month/Year:', 'November 2023'),
            _buildInfoRow('Semester:', '5'),
            SizedBox(height: 20.0),
            // Results table
            _buildTable(),
            SizedBox(height: 20.0),
            // Semester average
            _buildInfoRow('Semester Average:', '8.00'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      children: <Widget>[
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(width: 10),
        Flexible(
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildTable() {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(), // Let the column take up available space
        1: FlexColumnWidth(), // Let the column take up available space
        2: FlexColumnWidth(), // Let the column take up available space
        3: FlexColumnWidth(), // Let the column take up available space
      },
      children: [
        _buildTableRow(['Course Code', 'Course Type', 'Credit', 'Grade']),
        _buildTableRow(['HS131.02A- HSS', 'PRACTICAL', '2.00', 'AA']),
        _buildTableRow(['IT343 OS', 'THEORY', '4.00', 'BB']),
        _buildTableRow(['IT343 OS', 'PRACTICAL', '1.00', 'AA']),
        _buildTableRow(['IT346 SI-1', 'PRACTICAL', '4.00', 'BB']),
        _buildTableRow(['IT351 DAA', 'THEORY', '4.00', 'BB']),
        _buildTableRow(['IT351 DAA', 'PRACTICAL', '2.00', 'AA']),
        _buildTableRow(['IT353 SGP', 'PRACTICAL', '1.00', 'BB']),
        _buildTableRow(['IT357 FSWD', 'THEORY', '2.00', 'AB']),
        _buildTableRow(['IT357 FSWD', 'PRACTICAL', '2.00', 'AB']),
        _buildTableRow(['IT382 CS', 'THEORY', '3.00', 'BC']),
        _buildTableRow(['IT382 CS', 'PRACTICAL', '1.00', 'CD']),
      ],
    );
  }

  TableRow _buildTableRow(List<String> items) {
    return TableRow(
      children: items.map((item) => _buildTableCell(item)).toList(),
    );
  }

  Widget _buildTableCell(String text) {
    return Container(
      padding: EdgeInsets.all(9.0),
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
