import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../generated/translations.g.dart';

class Prueba extends StatefulWidget {
  TextEditingController descripcion = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController idioma = TextEditingController();
  Prueba({Key? key, required this.descripcion, required this.telefono, required this.idioma}) : super(key: key);

  @override
  State<Prueba> createState() => _PruebaState(descripcion: descripcion, telefono: telefono, idioma: idioma);
}

class _PruebaState extends State<Prueba> {
  TextEditingController descripcion = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController idioma =  TextEditingController();
  _PruebaState({required this.descripcion, required this.telefono, required this.idioma});


  bool addDescription = false;

  var inputtelefono = MaskTextInputFormatter(
      mask: "### ### ####", filter: {"#":  RegExp(r'[0-9]')}
  );

  final List<String> items = [
    texts.lenguage.spanish,
    texts.lenguage.english,
  ];

  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                child: TextFormField(
                  inputFormatters: [inputtelefono],//LLamado de la variable que admite la cantidad de digitos que se pueden agregar a este textfield,
                  controller: telefono,
                  obscureText: false,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: texts.infoUser.phone,
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                  //Este es el validador que me dice si el campo ya esta digitado o no
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return texts.infoUser.message;
                    }
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Row(
                  children: [
                    Expanded(
                      child: Text(
                        texts.infoUser.language,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                    idioma.text = selectedValue!;
                  });

                  if (selectedValue == null || selectedValue!.isEmpty) {
                    return;
                  }
                },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.white,
                  ),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.black,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all<double>(6),
                    thumbVisibility:
                    MaterialStateProperty.all<bool>(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                  padding: EdgeInsets.only(left: 2.0, right: 2.0),
                  child: SwitchListTile(
                    title: Text(texts.infoUser.addDescription),
                    value: addDescription,//boolean para el accedo a una descripcion
                    onChanged: (bool? value){
                      //cambio de estado de la boolean
                      setState(() {
                        if(value != null){
                          addDescription = value;
                        }
                      });
                    },
                  )
              ),
            ),
          ),
          const SizedBox(height: 30,),
          //Si la varibale anterior es true aparece este campo para la descripcion
          if(addDescription)Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 2.0, right: 2.0),
                child: TextFormField(
                  controller: descripcion,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: texts.infoUser.description,
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return texts.infoUser.message;
                    }
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 30)
        ]
    );
  }
}


//Primera vista

class Prueba2 extends StatefulWidget {
  TextEditingController nombreCompleto = TextEditingController();
  TextEditingController tipoDocumento = TextEditingController();
  TextEditingController numeroDocumento = TextEditingController();
  Prueba2({Key? key, required this.nombreCompleto,
    required this.tipoDocumento, required this.numeroDocumento}) : super(key: key);

  @override
  State<Prueba2> createState() =>  _Prueba2State(
      nombreCompleto: nombreCompleto, tipoDocumento: tipoDocumento,
      numeroDocumento: numeroDocumento);
}

class _Prueba2State extends State<Prueba2> {
  TextEditingController nombreCompleto = TextEditingController();
  TextEditingController tipoDocumento = TextEditingController();
  TextEditingController numeroDocumento = TextEditingController();
  _Prueba2State({required this.nombreCompleto,
    required this.tipoDocumento, required this.numeroDocumento});

  final List<String> options = [
    texts.registerMain.citizenshipCard,
    texts.registerMain.foreignerID
  ];
  String? cedula;

  bool addDescription = false;

  var documento = MaskTextInputFormatter(
      mask: "# ### ### ###", filter: {"#":  RegExp(r'[0-9]')}
  );

  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                texts.login.checkUp,
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'DelaGothicOne',
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 30),
              child: Text(
                texts.infoUser.textOne,
                style: TextStyle(fontSize: 12, color: Colors.white
                  //fontFamily: 'DelaGothicOne'
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                controller: nombreCompleto,
                obscureText: false,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelStyle: const TextStyle(fontSize: 13),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: texts.infoUser.fullname,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return texts.infoUser.message;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Row(
                children: [
                  Expanded(
                    child: Text(
                      texts.infoUser.documentType,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              items: options
                  .map((String item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ))
                  .toList(),
              value: cedula,
              onChanged: (String? value) {
                setState(() {
                  cedula = value;
                  tipoDocumento.text = cedula!;
                });
                if (cedula == null || cedula!.isEmpty) {
                  return;
                }
              },
              buttonStyleData: ButtonStyleData(
                height: 50,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.white,
                ),
                elevation: 2,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.black,
                iconDisabledColor: Colors.grey,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: MaterialStateProperty.all<double>(6),
                  thumbVisibility:
                  MaterialStateProperty.all<bool>(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 25.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                inputFormatters: [documento],
                controller: numeroDocumento,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: InputBorder.none,
                  hintText: texts.infoUser.documentNumber,
                  filled: true,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return texts.infoUser.message;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}



//Tercera vista
class Prueba3 extends StatefulWidget {
  TextEditingController tipoBanco = TextEditingController();
  TextEditingController cuentaBancaria = TextEditingController();
  TextEditingController numeroDaviplata = TextEditingController();
  Prueba3({Key? key, required this.tipoBanco, required this.cuentaBancaria, required this.numeroDaviplata}) : super(key: key);

  @override
  State<Prueba3> createState() => _Prueba3State(tipoBanco: tipoBanco, cuentaBancaria: cuentaBancaria, numeroDaviplata: numeroDaviplata);
}

class _Prueba3State extends State<Prueba3> {

  _Prueba3State({required this.tipoBanco,
    required this.cuentaBancaria,
    required this.numeroDaviplata});

  final List<String> items = [
    texts.registerMain.banks.socialBox,
    texts.registerMain.banks.bankOfBogota,
    texts.registerMain.banks.banColombia,
    texts.registerMain.banks.avVillas,
    texts.registerMain.banks.west,
    texts.registerMain.banks.popular,
    texts.registerMain.banks.agrarian,
    texts.registerMain.banks.davivienda,
    texts.registerMain.banks.colpatria
  ];

  String? selectedValue;

  TextEditingController tipoBanco = TextEditingController();
  TextEditingController cuentaBancaria = TextEditingController();
  TextEditingController numeroDaviplata = TextEditingController();

  var inputtelefono = MaskTextInputFormatter(
      mask: "### ### ####", filter: {"#":  RegExp(r'[0-9]')}
  );

  var cardMask = MaskTextInputFormatter(
      mask: "#### #### #### ####", filter: {"#":  RegExp(r'[0-9]')}
  );

  @override
  Widget build(BuildContext context) {
    final texts = Translations.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Row(
                children: [
                  Expanded(
                    child: Text(
                      texts.infoUser.bank,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ))
                  .toList(),
              value: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value;
                  tipoBanco.text = selectedValue!;
                });

                if (selectedValue == null || selectedValue!.isEmpty) {
                  return;
                }
              },
              buttonStyleData: ButtonStyleData(
                height: 50,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.white,
                ),
                elevation: 2,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.black,
                iconDisabledColor: Colors.grey,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: MaterialStateProperty.all<double>(6),
                  thumbVisibility:
                  MaterialStateProperty.all<bool>(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 25.0),
              ),
            ),
          ),
        ),
        //Banco y Cuenta Bancaria
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                inputFormatters: [cardMask],
                controller: cuentaBancaria,
                keyboardType: TextInputType.number,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: '0000 0000 0000 0000',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return texts.infoUser.message;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                inputFormatters: [inputtelefono],
                keyboardType: TextInputType.number,
                controller: numeroDaviplata,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: texts.infoUser.daviplateNumber,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return texts.infoUser.message;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}



//Cuarta vista

class Prueba4 extends StatefulWidget {
  TextEditingController email = TextEditingController();
  TextEditingController contrasenha = TextEditingController();
  TextEditingController confirmacionContasenha = TextEditingController();
  Prueba4({Key? key, required this.email, required this.contrasenha, required this.confirmacionContasenha}) : super(key: key);

  @override
  State<Prueba4> createState() => _Prueba4State(email: email, contrasenha: contrasenha, confirmacionContasenha: confirmacionContasenha);
}

class _Prueba4State extends State<Prueba4> {

  TextEditingController email = TextEditingController();
  TextEditingController contrasenha = TextEditingController();
  TextEditingController confirmacionContasenha = TextEditingController();

  _Prueba4State({required this.email, required this.contrasenha, required this.confirmacionContasenha});

  late bool _obscure = true;
  late bool _obscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 20),
        //Banco y Cuenta Bancaria
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                controller: email,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: texts.infoUser.email,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return texts.infoUser.message;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                controller: contrasenha,
                obscureText: _obscure,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: texts.infoUser.password,
                    fillColor: Colors.grey[200],
                    filled: true,
                    //prefixIcon: Icon(Icons.visibility_off),
                    suffixIcon: IconButton(
                      icon: Icon(_obscure
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                    )),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return texts.infoUser.message;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                controller: confirmacionContasenha,
                obscureText: _obscure2,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: texts.infoUser.confirmationPassowrd,
                    fillColor: Colors.grey[200],
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(_obscure2
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscure2 = !_obscure2;
                        });
                      },
                    )),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return texts.infoUser.message;
                  }
                  if (confirmacionContasenha.text != contrasenha.text) {
                    return "Contraseña incorrecta";
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}


class Prueba5 extends StatefulWidget {
  TextEditingController celularController = TextEditingController();
  TextEditingController imagenController = TextEditingController();

  Prueba5({
    Key? key,
    required this.celularController,
    required this.imagenController
  }) : super(key: key);

  @override
  State<Prueba5> createState() => _Prueba5State(
      celularController: celularController,
      imagenController: imagenController
  );
}

class _Prueba5State extends State<Prueba5> {

  TextEditingController celularController = TextEditingController();
  TextEditingController imagenController = TextEditingController();

  _Prueba5State({
    required this.celularController,
    required this.imagenController
  });


  var inputtelefono = MaskTextInputFormatter(
      mask: "### ### ####", filter: {"#":  RegExp(r'[0-9]')}
  );


  String selectFile = '';
  Uint8List? selectedImagenInBytes;
  int imagenCounts = 0;
  List<Uint8List> pickedImagesBytes = [];
  String foto = '';


  _selectFile(bool imagenFrom) async{
    FilePickerResult? fileResult = await FilePicker.platform.pickFiles();

    if(fileResult != null){
      setState(() {
        selectFile = fileResult.files.first.name;
        selectedImagenInBytes = fileResult.files.first.bytes;

        imagenController.text = selectFile;
      });
    }
    print(selectFile);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              child: TextFormField(
                inputFormatters: [inputtelefono],
                keyboardType: TextInputType.number,
                controller: celularController,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: texts.infoUser.daviplateNumber,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Se requiere de este campo';
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: selectFile.isEmpty
          ? const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              "../images/imagen2.jpg",
            ),
          ) : CircleAvatar(
            radius: 50,
            backgroundImage: MemoryImage(
                selectedImagenInBytes!
            ),
          )
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: ()async{
            _selectFile(true);
          },
          child: Container(
            width: 200,
            height: 50,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                texts.infoUser.plus.selectImage,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}




















