# Jukebox Kata

A seemingly simple kata which requires you to move forward in small steps, otherwise you risk falling into the den of the wolf 😈

<p align="center">
  <img src="https://github.com/user-attachments/assets/28036e3a-e337-4b86-94c3-367b9798914a" width="10%" height="10%" />
</p>

## Story

There's a jukebox in a coffee shop. This jukebox has three card slots where each slot can only hold 1 card at once.

When a card is in a slot, the jukebox sings a song, depending on which slot it’s in, it will sing a different song.

If other cards are inserted in other slots the song changes. There is a different song sung depending on how many cards there are, and which slots the other cards are in. No song is sung when there are no card in the jukebox.

No individual song is the same in different combinations of how many cards there are, and what slots each are in.

Given slots 1, 2, and 3, and cards A, B, and C, can you figure out how many different songs can be sung by the jukebox, where cards can be in any slot, or not in a slot at all.

Using TDD, create a solution to figure out how many different songs can be sung using three cards and three slots.

### Examples
- If there are no card, no song is sung
- You could have card A in Slot 1, with slots 2 and 3 empty, that is one song
- You could have card A in slot 3, card B in slot 1, and slot 2 empty, that is another song
- You could have cards A, B and C in slots 1, 2, and 3 respectively, that is another song
- You could have cards A, B and C in slots 3, 1, and 2 in that respective order, that is another song

### Tip

Build up using incremental TDD steps.
Don't try to be smarter than the tests.

## Advanced

- What happens if the amount of slots could be configurable?
- What happens if the amount of cards is configurable?
i.e. 3 slots and 4 cards, 4 slots and 2 cards, 5 slots and 5 cards


## Solution

For the most impatient people, here is an [example of solution](https://github.com/freddyb2/jukebox_kata/commit/e73bab35621578fdddb155307db41beca83711e8) coded by me in french 🇫🇷 (sorry for that).

The comments that you will see in the tests were useful to experiment the different cases.

## Source of inspiration

Any resemblance to [Songbird kata](https://www.codurance.com/katas/songbird-kata) is entirely coincidental
