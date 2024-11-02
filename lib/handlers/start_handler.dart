import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

// So at first we need to send a invoice.
Future<void> startHandler(Context ctx) async {
  await ctx.reply("Hello World!");

  // To send invoice, you can use any of
  // 1. `bot.api.sendInvoice` or
  // 2. `ctx.api.sendInvoice` or
  // 3. `ctx.sendInvoice` - which is a shortcut method :)
  await ctx.sendInvoice(
    title: "Cold Coffee ☕️",
    description:
        "Super Cool Coffee Shops Special Cold Coffee for just 2 Stars.",
    payload: 'coffee', // This payload can be retreived on successful purchase
    currency: "XTR", // This is important.
    prices: [
      LabeledPrice(
        label: "Buy Now",
        amount: 2, // Amount is the number of stars.
      ),
    ],
  );
}