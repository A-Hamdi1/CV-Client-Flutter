# Portfolio CV - Application Flutter

![Flutter Version](https://img.shields.io/badge/Flutter-3.1.5+-blue.svg) ![Dart Version](https://img.shields.io/badge/Dart-3.0.0+-blue.svg) ![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📱 Présentation

Portfolio CV est une application mobile moderne et élégante développée avec Flutter pour présenter votre CV, vos compétences et vos projets de manière interactive. Cette application multiplateforme (Android, iOS, Web) offre une expérience utilisateur fluide avec un design soigné et des animations attrayantes.

## ✨ Fonctionnalités

- **Écran d'accueil animé** : Animation de bienvenue avec Lottie
- **Profil personnel** : Présentation de vos informations personnelles et professionnelles
- **Sections détaillées** :
  - 📚 Éducation : Parcours académique avec descriptions et périodes
  - 💼 Expérience professionnelle : Présentation de vos expériences de travail
  - 🚀 Projets : Galerie de vos projets avec technologies utilisées
  - 🛠️ Compétences : Présentation visuelle de vos compétences techniques
  - ℹ️ À propos : Informations complémentaires et contacts
- **Thème clair/sombre** : Changement dynamique de thème
- **Liens sociaux** : Intégration de vos profils sociaux (LinkedIn, GitHub, Facebook)
- **Interface responsive** : S'adapte à différentes tailles d'écran
- **Navigation intuitive** : Déplacement fluide entre les différentes sections

## 🛠️ Technologies utilisées

- **Framework** : Flutter
- **Langage** : Dart
- **Gestion d'état** : Provider
- **Animations** : Lottie
- **Navigation** : Flutter Navigation
- **Icônes** : Font Awesome, Iconsax
- **Affichage d'images** : Flutter SVG
- **Interfaces** : Material Design
- **Carrousel** : Carousel Slider
- **Liens externes** : URL Launcher

## 📂 Structure du projet

```
lib/
├── constants/         # Constantes (couleurs, textes, tailles)
├── models/           # Modèles de données (éducation, projets)
├── pages/            # Écrans principaux de l'application
│   ├── about.dart    # Page À propos
│   ├── education.dart # Page Éducation
│   ├── experience.dart # Page Expérience
│   ├── profile.dart  # Page Profil principal
│   ├── projects.dart # Page Projets
│   └── skills.dart   # Page Compétences
├── utils/            # Utilitaires (thèmes, fonctions)
├── widgets/          # Composants réutilisables
└── main.dart         # Point d'entrée de l'application
```

## 🚀 Installation

1. **Prérequis**
   - Flutter (version 3.1.5 ou supérieure)
   - Dart (version 3.0.0 ou supérieure)
   - Android Studio / VS Code avec extensions Flutter

2. **Cloner le dépôt**
   ```bash
   git clone https://github.com/A-Hamdi1/CV-Mobile-Flutter.git
   cd CV-Mobile-Flutter
   ```

3. **Installer les dépendances**
   ```bash
   flutter pub get
   ```

4. **Lancer l'application**
   ```bash
   flutter run
   ```

## 🔧 Personnalisation

Pour personnaliser l'application avec vos propres informations :

1. Modifiez les données dans les fichiers modèles (`lib/models/`)
2. Remplacez les images dans le dossier `assets/images/`
3. Mettez à jour les liens sociaux dans `lib/widgets/button_widget.dart`
4. Personnalisez les couleurs dans `lib/constants/colors.dart`
5. Ajoutez vos propres compétences dans `lib/widgets/skills_widgets.dart`

## 📱 Déploiement

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 📝 Licence

Ce projet est sous licence MIT. Voir le fichier LICENSE pour plus de détails.

## 📞 Contact

Pour toute question ou suggestion, n'hésitez pas à me contacter :
- Email : hamdi.akram.dev@gmail.com

---

Développé avec ❤️ en utilisant Flutter
