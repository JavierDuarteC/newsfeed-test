import 'package:flutter/material.dart';

class NewsArticleMoreButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool isLoading;
  const NewsArticleMoreButton(
      {required this.onPressed, required this.isLoading, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).colorScheme.primary)),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: isLoading
                ? SizedBox(
                    height: 15,
                    width: 15,
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  )
                : Text(
                    "Load more",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
          ),
        ),
      ),
    );
  }
}
