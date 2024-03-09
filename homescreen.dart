import 'package:flutter/material.dart';
import 'package:tictak/game_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();
  final TextEditingController player1Controller=TextEditingController();
  final TextEditingController player2Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color(0xFF323D5B),
      appBar: AppBar(
        title: const Text("Tic Tak"),
        centerTitle: true,
      ),
    body: Form(
      key: _formKey ,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Enter Player Name ",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: player1Controller,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration:const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                enabledBorder : OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                hintText: "Player 1 Name",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),

              ),
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Please Enter Player 1 Name ";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: player2Controller,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration:const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                enabledBorder : OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                errorBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color: Colors.white,
                    )
                ),
                hintText: "Player 2 Name",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),

              ),
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Please Enter Player 2 Name ";
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              if(_formKey.currentState!.validate())
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GameScreen(
                      player1: player1Controller.text, player2: player2Controller.text
                  )
                  )
                  );
                }
            },
            child: Container(

              decoration:  BoxDecoration(
                     color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 20),
              child: const Text("Start Game",style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
            ),
          )
        ],
      ),
    ),
    );
  }
}
