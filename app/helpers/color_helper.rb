module ColorHelper
  def calc_color(qol)
    color_low = "#add8e6"
    color_high = "#ffb8c1"

    #rgbをそれぞれ10進数に変換
    low_r = color_low[1..2].to_i(16)
    low_g = color_low[3..4].to_i(16)
    low_b = color_low[5..6].to_i(16)

    high_r = color_high[1..2].to_i(16)
    high_g = color_high[3..4].to_i(16)
    high_b = color_high[5..6].to_i(16)

    #線形変換
    r = (low_r * ((100-qol)/100.0) + high_r * (qol/100.0)).round
    g = (low_g * ((100-qol)/100.0) + high_g * (qol/100.0)).round
    b = (low_b * ((100-qol)/100.0) + high_b * (qol/100.0)).round

    format("#%02X%02X%02X", r, g, b)
  end
end
