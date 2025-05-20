import 'package:flutter/material.dart';
import 'package:mech/common/color_extension.dart';
import 'package:mech/screen/home/main_tab_screen.dart'; // Importe a tela principal

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({super.key});
  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  @override
  void initState() {
    super.initState();
    
    // Navegação automática após 2 segundos
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        navigateToMainScreen();
      }
    });
  }

  void navigateToMainScreen() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const MainTabScreen()),
      (route) => false, // Remove todas as rotas anteriores da pilha
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: const Icon(
                Icons.done,
                size: 60,
                color: Color(0xff43C73D),
              ),
            ),
            
            const SizedBox(height: 20),
            
            Text(
              "Número verificado com sucesso",
              style: TextStyle(
                color: TColor.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Adicionado botão para navegação manual
            ElevatedButton(
              onPressed: navigateToMainScreen,
              style: ElevatedButton.styleFrom(
                backgroundColor: TColor.primary,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "Continue para o aplicativo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Indicação visual de progresso
            Text(
              "Redirecionando automaticamente...",
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
