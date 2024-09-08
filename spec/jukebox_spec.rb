# frozen_string_literal: true

RSpec.describe Kata::Jukebox do
  subject { Kata::Jukebox.new(nb_cartes, nb_slots) }

  context "1 card" do
    let(:nb_cartes) { 1 }

    context "1 slot" do
      let(:nb_slots) { 1 }

      it "1 chanson" do
        expect(subject.number_of_songs(1)).to eq(1)
      end
    end

    context "2 slots" do
      let(:nb_slots) { 2 }

      # A-
      # -A
      it "2 chansons" do
        expect(subject.number_of_songs(1)).to eq(2)
      end
    end

    context "3 slots" do
      let(:nb_slots) { 3 }

      # A--
      # -A-
      # --A
      it "3 chansons" do
        expect(subject.number_of_songs(1)).to eq(3)
      end
    end
  end

  context "2 cards" do
    let(:nb_cartes) { 2 }

    context "1 slot" do
      let(:nb_slots) { 1 }

      # A
      # B
      it "2 chansons" do
        expect(subject.number_of_songs(1)).to eq(2)
      end
    end

    context "2 slots" do
      let(:nb_slots) { 2 }

      # A-
      # -A
      # B-
      # -B
      it "quand au plus 1 carte utilisée - 4 chansons" do
        expect(subject.number_of_songs(1)).to eq(4)
      end

      # ...
      # AB
      # BA
      it "quand au plus 2 cartes utilisées - 6 chansons" do
        expect(subject.number_of_songs(2)).to eq(4 + 2)
      end
    end

    context "3 slots" do
      let(:nb_slots) { 3 }

      # A--
      # -A-
      # --A
      # B--
      # -B-
      # --B
      it "quand au plus 1 carte utilisée - 6 chansons" do
        expect(subject.number_of_songs(1)).to eq(6)
      end

      # ...
      # AB-
      # A-B
      # -AB
      # BA-
      # B-A
      # -BA
      it "quand au plus 2 cartes utilisées - 12 chansons" do
        expect(subject.number_of_songs(2)).to eq(6 + 6)
      end
    end
  end

  context "3 cards" do
    let(:nb_cartes) { 3 }

    context "1 slot" do
      let(:nb_slots) { 1 }

      # A
      # B
      # C
      it "quand au plus 1 carte utilisée - 3 chansons" do
        expect(subject.number_of_songs(1)).to eq(3)
      end
    end

    context "2 slots" do
      let(:nb_slots) { 2 }

      # A-
      # -A
      # B-
      # -B
      # C-
      # -C
      it "quand au plus 1 carte utilisée - 6 chansons" do
        expect(subject.number_of_songs(1)).to eq(6)
      end

      # ...
      # AB
      # BA
      # AC
      # CA
      # BC
      # CB
      it "quand au plus 2 cartes utilisées - 12 chansons" do
        expect(subject.number_of_songs(2)).to eq(6 + 6)
      end
    end

    context "3 slots" do
      let(:nb_slots) { 3 }

      # A--
      # -A-
      # --A
      # B--
      # -B-
      # --B
      # C--
      # -C-
      # --C
      it "quand au plus 1 carte utilisée - 9 chansons" do
        expect(subject.number_of_songs(1)).to eq(9)
      end

      # ...
      # AB-
      # A-B
      # -AB
      # BA-
      # B-A
      # -BA
      # AC-
      # A-C
      # -AC
      # CA-
      # C-A
      # -CA
      # BC-
      # B-C
      # -BC
      # CB-
      # C-B
      # -CB
      it "quand au plus 2 cartes utilisées - 27 chansons" do
        expect(subject.number_of_songs(2)).to eq(9 + 18)
      end

      # ...
      # ABC
      # ACB
      # BAC
      # BCA
      # CAB
      # CBA
      it "quand au plus 3 cartes utilisées - 33 chansons" do
        expect(subject.number_of_songs(3)).to eq(9 + 18 + 6)
      end
    end
  end
end
