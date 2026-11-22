import 'package:flutter/material.dart';

/// Background + text colour for one avatar tile.
class AvatarColors {
  const AvatarColors(this.background, this.foreground);
  final Color background;
  final Color foreground;
}

// Dark theme: deep tile, light letters. The first two match the design (TN, P).
const List<AvatarColors> _darkAvatarColors = [
  AvatarColors(Color(0xFF3B3470), Color(0xFFD9D3FF)), // violet
  AvatarColors(Color(0xFF24485A), Color(0xFFC6EBF7)), // teal blue
  AvatarColors(Color(0xFF24503F), Color(0xFFC3F0DC)), // green
  AvatarColors(Color(0xFF5A4424), Color(0xFFF7DFC0)), // amber
  AvatarColors(Color(0xFF5A2A45), Color(0xFFF8CDE3)), // rose
  AvatarColors(Color(0xFF283E73), Color(0xFFCBD9FF)), // blue
];

// Light theme: same hues, flipped to a pale tile with dark letters.
const List<AvatarColors> _lightAvatarColors = [
  AvatarColors(Color(0xFFE4E1FF), Color(0xFF4A3FA8)), // violet
  AvatarColors(Color(0xFFDCEFF5), Color(0xFF1F5A6E)), // teal blue
  AvatarColors(Color(0xFFDDF3E8), Color(0xFF1F6B4A)), // green
  AvatarColors(Color(0xFFF8EBD8), Color(0xFF7A5214)), // amber
  AvatarColors(Color(0xFFF9E0EC), Color(0xFF8A2F5D)), // rose
  AvatarColors(Color(0xFFE0E8FF), Color(0xFF2F4A99)), // blue
];

String initialsOf(String name) {
  final words =
      name.trim().split(RegExp(r'\s+')).where((w) => w.isNotEmpty).toList();
  if (words.isEmpty) return '?';
  if (words.length == 1) return words.first.characters.first.toUpperCase();
  return (words[0].characters.first + words[1].characters.first).toUpperCase();
}

AvatarColors avatarColorsFor(String key, Brightness brightness) {
  var hash = 0;
  for (final unit in key.codeUnits) {
    hash = (hash * 31 + unit) & 0x7fffffff;
  }
  final palette =
      brightness == Brightness.dark ? _darkAvatarColors : _lightAvatarColors;
  return palette[hash % palette.length];
}

class TeamAvatar extends StatelessWidget {
  const TeamAvatar({
    super.key,
    required this.id,
    required this.name,
    this.size = 40,
    this.circle = false,
  });

  /// Use the team's id (not its name) so renaming a team keeps its colour.
  final String id;
  final String name;
  final double size;

  /// false = rounded square (teams), true = circle (people / connections).
  final bool circle;

  @override
  Widget build(BuildContext context) {
    final colors = avatarColorsFor(id, Theme.of(context).brightness);
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colors.background,
        shape: circle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: circle ? null : BorderRadius.circular(size * 0.3),
      ),
      child: Text(
        initialsOf(name),
        style: TextStyle(
          color: colors.foreground,
          fontSize: size * 0.35,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
