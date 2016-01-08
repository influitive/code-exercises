Based on Sandi Metz Influitive workshop.

FIRST:
Attempt refactoring the bottles file in pairs.

SECOND:
Attempt refactoring in a group using the the following rules.

1. While doing the refactoring, run the tests after EVERY change and always remain one undo from green. If your tests turn red, undo your change and make a different one.
2. Find the LEAST different part of the code and extract out the difference, moving the conditional out in the process.
3. Turn this set of extracted methods into a new class. The methods still have the conditionals in them.
4. Create subclasses to remove the conditionals in the superclass methods.
5. Fix bad names as you go.