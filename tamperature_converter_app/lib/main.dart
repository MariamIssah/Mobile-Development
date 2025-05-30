
import 'package:flutter/material.dart';

void main() => runApp(TemperatureConverterApp());

class TemperatureConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: TemperatureConverterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TemperatureConverterPage extends StatefulWidget {
  @override
  _TemperatureConverterPageState createState() =>
      _TemperatureConverterPageState();
}

class _TemperatureConverterPageState extends State<TemperatureConverterPage> {
  final TextEditingController _inputController = TextEditingController();
  String _selectedConversion = 'F to C';
  String _convertedValue = '';
  List<String> _history = [];

  void _convertTemperature() {
    double? input = double.tryParse(_inputController.text);

    if (input == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid number')),
      );
      return;
    }

    double result;
    if (_selectedConversion == 'F to C') {
      result = (input - 32) * 5 / 9;
    } else {
      result = input * 9 / 5 + 32;
    }

    setState(() {
      _convertedValue = result.toStringAsFixed(2);
      _history.add(
          "${_selectedConversion == 'F to C' ? "F → C" : "C → F"}: $input → $_convertedValue");
    });
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          backgroundColor: Colors.blue[100],
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              '🌡 Temperature Converter',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: orientation == Orientation.portrait
                ? _buildPortraitLayout()
                : _buildLandscapeLayout(),
          ),
        );
      },
    );
  }

  Widget _buildPortraitLayout() {
    return SingleChildScrollView(
      child: Column(
        children: _commonWidgets(),
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ListView(
            children: _commonWidgets(),
          ),
        ),
        const VerticalDivider(width: 16, color: Colors.teal),
        Expanded(flex: 1, child: _buildHistoryList()),
      ],
    );
  }

  List<Widget> _commonWidgets() {
    return [
      const SizedBox(height: 12),
      TextField(
        controller: _inputController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Enter temperature',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          prefixIcon: const Icon(Icons.thermostat),
        ),
      ),
      const SizedBox(height: 20),
      Column(
        children: [
          RadioListTile(
            title: const Text('Fahrenheit to Celsius'),
            value: 'F to C',
            groupValue: _selectedConversion,
            onChanged: (value) {
              setState(() {
                _selectedConversion = value!;
              });
            },
          ),
          RadioListTile(
            title: const Text('Celsius to Fahrenheit'),
            value: 'C to F',
            groupValue: _selectedConversion,
            onChanged: (value) {
              setState(() {
                _selectedConversion = value!;
              });
            },
          ),
        ],
      ),
      const SizedBox(height: 10),
      ElevatedButton.icon(
        onPressed: _convertTemperature,
        icon: const Icon(Icons.sync_alt),
        label: const Text('Convert'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      const SizedBox(height: 20),
      if (_convertedValue.isNotEmpty)
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
          ),
          child: Text(
            'Converted Result: $_convertedValue',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      const SizedBox(height: 30),
      const Divider(thickness: 2),
      const Text(
        'Conversion History',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      _buildHistoryList(),
    ];
  }

  Widget _buildHistoryList() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(12),
      ),
      child: _history.isEmpty
          ? const Center(child: Text('No conversions yet.'))
          : ListView.separated(
        itemCount: _history.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.history, color: Colors.teal),
            title: Text(_history[index]),
          );
        },
      ),
    );
  }
}
