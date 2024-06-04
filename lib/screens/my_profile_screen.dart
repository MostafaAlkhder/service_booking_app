import 'package:flutter/material.dart';
import '../common/widgets/mywidgets/app_bar_widget.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final TextEditingController _nameController =
      TextEditingController(text: "Mostafa Alkhder");
  final TextEditingController _emailController =
      TextEditingController(text: "mustafaalkhdersyr@gmail.com");
  final TextEditingController _phoneController =
      TextEditingController(text: "+963934460899");

  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'My Profile'),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildProfileField('Name', _nameController),
          _buildProfileField('Email', _emailController),
          _buildProfileField('Phone', _phoneController),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isEditing = !_isEditing;
              });
            },
            child: Text(_isEditing ? 'Save Changes' : 'Edit Profile'),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          enabled: _isEditing,
        ),
        readOnly: !_isEditing,
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
