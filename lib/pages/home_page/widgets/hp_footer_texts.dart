import 'package:flutter/material.dart';

class HpFooterTexts extends StatelessWidget {
  const HpFooterTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height - kToolbarHeight,
        child: Row(
          children: [
            const Spacer(
              flex: 12,
            ),
            Expanded(
              flex: 38,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 10,
                  ),
                  Expanded(
                    flex: 18,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Text(
                        'Available for select freelance opportunities',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxHeight * 0.35,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  Expanded(
                    flex: 13,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Text(
                        'Have an exciting project you need to help with?\nSend me email or contact me via instant message!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxHeight * 0.23,
                          fontWeight: FontWeight.normal,
                        ),
                      );
                    }),
                  ),
                  const Spacer(
                    flex: 13,
                  ),
                  Expanded(
                    flex: 10,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Text(
                          'mail@khuram.dev',
                          style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: constraints.maxHeight * 0.3,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Expanded(
                    flex: 5,
                    child: AccountsText(
                      text: 'Messenger',
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: AccountsText(
                      text: 'LinkedIn',
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: AccountsText(
                      text: 'Instagram',
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: AccountsText(
                      text: 'Github',
                    ),
                  ),
                  const Spacer(
                    flex: 10,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
                flex: 48,
                child: Row(
                  children: [
                    Expanded(
                      flex: 45,
                      child: Container(
                        color: Colors.pink.shade200,
                      ),
                    ),
                    Expanded(
                      flex: 55,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 45,
                            child: Container(
                              color: Colors.blue.shade200,
                            ),
                          ),
                          Expanded(
                            flex: 55,
                            child: Container(
                              color: Colors.purple.shade200,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class AccountsText extends StatelessWidget {
  final String text;
  const AccountsText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: constraints.maxHeight * 0.55,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }
}
