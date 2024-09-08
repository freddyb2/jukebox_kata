# frozen_string_literal: true

require_relative "jukebox/version"

module Kata
  class Jukebox
    def initialize(total_number_of_cards, number_of_slots)
      @total_number_of_cards = total_number_of_cards
      @number_of_slots = number_of_slots
    end

    def number_of_songs(number_of_used_cards)
      return 0 if number_of_used_cards.zero? # cas trivial / condition d'arrêt de la récursion

      positions_des_cartes_possibles = parmi(@number_of_slots, number_of_used_cards)
      choix_de_cartes_possibles = parmi(@total_number_of_cards, number_of_used_cards)
      ordres_des_cartes_possibles = factorial(number_of_used_cards)
      result = positions_des_cartes_possibles * choix_de_cartes_possibles * ordres_des_cartes_possibles

      result + number_of_songs(number_of_used_cards - 1) # recursion
    end

    private

    def factorial(i)
      return 1 if i.zero?

      i * factorial(i - 1)
    end

    def parmi(n, p)
      factorial(n) / (factorial(p) * factorial(n - p))
    end
  end
end
