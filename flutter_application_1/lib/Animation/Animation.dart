import 'package:flutter/material.dart';

// Hình Xoay : đồng hồ

class Lac extends StatefulWidget {
  const Lac({super.key, required this.image});
  final String image;
  @override
  State<Lac> createState() => _Lac();
}

class _Lac extends State<Lac>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInCubic,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.withOpacity(0),
      body: 
      Container(
       
        child: 
      Center(child: 
       RotationTransition(
          turns: _animation,
          child:  Padding(
            padding: EdgeInsets.all(8.0),
            child:  Image.asset(widget.image,width: 30,height: 30,fit: BoxFit.cover,)
          ),
        ),
      )
      )
    );
  }
}

// đổi màu : vòng
class DoiMau extends StatefulWidget {
  const DoiMau({super.key, required this.text});
  final String text;
  @override
  State<DoiMau> createState() => _DoiMau();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _DoiMau extends State<DoiMau> with TickerProviderStateMixin {
  late AnimationController _controller;
  late TextStyleTween _styleTween;
  late CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _styleTween = TextStyleTween(
      begin: const TextStyle(
          fontSize: 50, color: Colors.blue, fontWeight: FontWeight.w900),
      end: const TextStyle(
          fontSize: 50, color: Colors.red, fontWeight: FontWeight.w100),
    );
    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyleTransition(
        style: _styleTween.animate(_curvedAnimation),
        child: Text(widget.text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// to nhỏ : avatar trong trận

class ToNho extends StatefulWidget {
  const ToNho({super.key, required this.image});
  final String image;
  @override
  State<ToNho> createState() => _ToNho();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _ToNho extends State<ToNho> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
    
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutQuad,
    
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.withOpacity(0),
      body: Center(
        child: ScaleTransition(
            scale: _animation,
            child: Container(
            
              child: Image.asset(widget.image,width: 60)
              ),
            )),
      
    );
  }
}
