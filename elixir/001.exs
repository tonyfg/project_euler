#Q: Add all the natural numbers below one thousand that are multiples of 3 or 5.
#A: 233168

Enum.filter(0..999, &(rem(&1, 3) == 0 || rem(&1, 5) == 0)) |> Enum.reduce(&+/2)