import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/post_card.dart';
import '../../core/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: Text('Social App', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
        ],
      ),
      body: ListView(
        children: [
          PostCard(
            userName: 'María García',
            timeAgo: '2h',
            content: '¡Qué día tan increíble! 🌞',
          ),
          PostCard(
            userName: 'Carlos López',
            timeAgo: '5h',
            content: 'Aprendiendo Flutter, es genial! 🚀',
          ),
          PostCard(
            userName: 'Ana Martínez',
            timeAgo: '1d',
            content: 'Nueva foto de perfil 📸',
          ),
          PostCard(
            userName: 'Pedro Sánchez',
            timeAgo: '2d',
            content: 'Feliz fin de semana a todos! 🎉',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
