import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:myapp/components/background-decoration.dart';
import 'package:myapp/constants/commons.dart';
import 'package:myapp/constants/error-messages.dart';
import 'package:myapp/utils/utility.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DataForms extends StatefulWidget {
  const DataForms({Key? key}) : super(key: key);

  @override
  _DataFormsState createState() => _DataFormsState();
}

class _DataFormsState extends State<DataForms> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();


  @override
  void initState() {
    super.initState();
    print("initState data form");

    _emailController.addListener(() {
      // setState(() {});
    });

    _firstNameController.addListener(() {
      // setState(() {});
    });

    _lastNameController.addListener(() {
      // setState(() {});
    });

    _dateOfBirthController.addListener(() {
      // setState(() {});
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _dateOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Form')),
        body: Container(
          decoration: backgroundDecoration,
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _emailTextField(context),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _firstNameTextField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _lastNameTextField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _datOfBirthTextField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _submitButton(),
                )
              ],
            ),
          ),
        ));
  }

  Widget _emailTextField(BuildContext context) {
    final validator = MultiValidator([
      RequiredValidator(errorText: RequiredError),
      EmailValidator(errorText: AppLocalizations.of(context)!.emailError("Email")),
      MaxLengthValidator(50, errorText: maxLengthError(50))
    ]);

    return TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: clearInputDecoration(
            controller: _emailController,
            text: "Email",
            icon: Icons.email_outlined),
        validator: validator);
  }

  Widget _firstNameTextField() {
    final validator = MaxLengthValidator(100, errorText: maxLengthError(50));

    return TextFormField(
        controller: _firstNameController,
        keyboardType: TextInputType.name,
        decoration: clearInputDecoration(
            controller: _firstNameController, text: "First Name"),
        validator: validator);
  }

  Widget _lastNameTextField() {
    final validator = MaxLengthValidator(100, errorText: maxLengthError(50));

    return TextFormField(
        controller: _lastNameController,
        keyboardType: TextInputType.name,
        decoration: clearInputDecoration(
            controller: _lastNameController, text: "Last Name"),
        validator: validator);
  }

  Widget _datOfBirthTextField() {
    final validator = MultiValidator([
      DateValidator(DEFAULT_FORMAT_DATE, errorText: DateTimeError),
      RequiredValidator(errorText: RequiredError)
    ]);

    return TextFormField(
      controller: _dateOfBirthController,
      keyboardType: TextInputType.datetime,
      decoration: clearInputDecoration(
          controller: _lastNameController,
          text: "Date of birth",
          icon: Icons.date_range),
      validator: validator,
      onTap: () async {
        FocusScope.of(context).requestFocus(new FocusNode());
        await Utilities.selectDateTime(
            context: context, controller: _dateOfBirthController);
      },
    );
  }

  Widget _submitButton() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
        child: Text('Submit'),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            String email = _emailController.text;
            String firstName = _firstNameController.text;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Processing Data ...'),
              backgroundColor: Colors.blueGrey[200],
            ));
          }
        },
      ),
    );
  }

  InputDecoration clearInputDecoration(
      {required TextEditingController controller,
      required String text,
      IconData? icon}) {
    return InputDecoration(
      suffixIcon: controller.text.isNotEmpty
          ? IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: Icon(Icons.clear))
          : null,
      hintText: text,
      labelText: text,
      enabledBorder: underlineInputBorder,
      prefixIcon: icon != null ? Icon(icon) : null,
    );
  }

  final UnderlineInputBorder underlineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF6200EE)),
  );
}
