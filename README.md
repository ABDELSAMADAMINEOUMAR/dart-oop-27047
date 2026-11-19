# Dart OOP Assignment: Kigali Bus Card

**Name:** Abdelsamad Amine
**Student ID:** 27047

## My numbers
- D = 47, L = 7
- Starting balance = 1000 + (47 x 10) = 1470 RWF
- Bus fare = 200 + 47 = 247 RWF
- Student discount = 10 + 7 = 17%

## Part 1: Why no setter for balance?
If balance had a setter, anyone could write `card.balance = 100000` and
get free money without paying. Without the setter, the balance can only
change by using `topUp` and `pay`. Both of them have rules (top-up must be
500 to 50000, and pay is declined if there is not enough money). So it is
safer for a bus card.
## Output of main.dart
```
Error: name too short
Owner: Abdelsamad | Balance: 1470 RWF
Owner: Abdelsamad Amine | Balance: 1470 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 247 RWF
Paid 247 RWF
Owner: Abdelsamad Amine | Balance: 2976 RWF
Student discount: 41 RWF
Paid 206 RWF
Owner: Abdelsamad Amine | Balance: 1264 RWF
Student card: 17% off
```

## Part 2: What does ~/ do?
`/` is normal division and gives a decimal number. `~/` divides and gives
only the whole number, it cuts the decimal part.

- `print(237 * 17 / 100);` prints 40.29
- `print(237 * 17 ~/ 100);` prints 40

I used `~/` for the discount because the money is an `int` in RWF.