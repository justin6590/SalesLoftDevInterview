module NearDuplicates
  extend ActiveSupport::Concern

  def detect_near_duplicates(list, percent)
    jarow = FuzzyStringMatch::JaroWinkler.create(:native)

    list.each_with_object({}) do |i1, r|
      dups = []
      list.each do |i2|
        next if i1 == i2

        distance = jarow.getDistance(i1, i2)

        if distance > percent
          dups << { distance: distance, value: i2 }
          r[i1] = dups
        end
      end
    end
  end
end
