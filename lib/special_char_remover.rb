module SpecialCharRemover

  class << self
    def expand m
      h = {}
      m.each do |k, v|
        k.each do |u|
          h[u.hex] = v.unpack("U*")
        end
      end
      h
    end
  end

  UNICODE_TO_ASCII = expand({
          [
                  '00C0', # À  [LATIN CAPITAL LETTER A WITH GRAVE]
                  '00C1', # Á  [LATIN CAPITAL LETTER A WITH ACUTE]
                  '00C2', # Â  [LATIN CAPITAL LETTER A WITH CIRCUMFLEX]
                  '00C3', # Ã  [LATIN CAPITAL LETTER A WITH TILDE]
                  '00C4', # Ä  [LATIN CAPITAL LETTER A WITH DIAERESIS]
                  '00C5', # Å  [LATIN CAPITAL LETTER A WITH RING ABOVE]
                  '0100', # Ā  [LATIN CAPITAL LETTER A WITH MACRON]
                  '0102', # Ă  [LATIN CAPITAL LETTER A WITH BREVE]
                  '0104', # Ą  [LATIN CAPITAL LETTER A WITH OGONEK]
                  '018F', # Ə  http://en.wikipedia.org/wiki/Schwa  [LATIN CAPITAL LETTER SCHWA]
                  '01CD', # Ǎ  [LATIN CAPITAL LETTER A WITH CARON]
                  '01DE', # Ǟ  [LATIN CAPITAL LETTER A WITH DIAERESIS AND MACRON]
                  '01E0', # Ǡ  [LATIN CAPITAL LETTER A WITH DOT ABOVE AND MACRON]
                  '01FA', # Ǻ  [LATIN CAPITAL LETTER A WITH RING ABOVE AND ACUTE]
                  '0200', # Ȁ  [LATIN CAPITAL LETTER A WITH DOUBLE GRAVE]
                  '0202', # Ȃ  [LATIN CAPITAL LETTER A WITH INVERTED BREVE]
                  '0226', # Ȧ  [LATIN CAPITAL LETTER A WITH DOT ABOVE]
                  '023A', # Ⱥ  [LATIN CAPITAL LETTER A WITH STROKE]
                  '1D00', # ᴀ  [LATIN LETTER SMALL CAPITAL A]
                  '1E00', # Ḁ  [LATIN CAPITAL LETTER A WITH RING BELOW]
                  '1EA0', # Ạ  [LATIN CAPITAL LETTER A WITH DOT BELOW]
                  '1EA2', # Ả  [LATIN CAPITAL LETTER A WITH HOOK ABOVE]
                  '1EA4', # Ấ  [LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND ACUTE]
                  '1EA6', # Ầ  [LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND GRAVE]
                  '1EA8', # Ẩ  [LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE]
                  '1EAA', # Ẫ  [LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND TILDE]
                  '1EAC', # Ậ  [LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND DOT BELOW]
                  '1EAE', # Ắ  [LATIN CAPITAL LETTER A WITH BREVE AND ACUTE]
                  '1EB0', # Ằ  [LATIN CAPITAL LETTER A WITH BREVE AND GRAVE]
                  '1EB2', # Ẳ  [LATIN CAPITAL LETTER A WITH BREVE AND HOOK ABOVE]
                  '1EB4', # Ẵ  [LATIN CAPITAL LETTER A WITH BREVE AND TILDE]
                  '1EB6', # Ặ  [LATIN CAPITAL LETTER A WITH BREVE AND DOT BELOW]
                  '24B6', # Ⓐ  [CIRCLED LATIN CAPITAL LETTER A]
                  'FF21'  # Ａ  [FULLWIDTH LATIN CAPITAL LETTER A]
          ] => 'A',
          [

                  '00E0', # à  [LATIN SMALL LETTER A WITH GRAVE]
                  '00E1', # á  [LATIN SMALL LETTER A WITH ACUTE]
                  '00E2', # â  [LATIN SMALL LETTER A WITH CIRCUMFLEX]
                  '00E3', # ã  [LATIN SMALL LETTER A WITH TILDE]
                  '00E4', # ä  [LATIN SMALL LETTER A WITH DIAERESIS]
                  '00E5', # å  [LATIN SMALL LETTER A WITH RING ABOVE]
                  '0101', # ā  [LATIN SMALL LETTER A WITH MACRON]
                  '0103', # ă  [LATIN SMALL LETTER A WITH BREVE]
                  '0105', # ą  [LATIN SMALL LETTER A WITH OGONEK]
                  '01CE', # ǎ  [LATIN SMALL LETTER A WITH CARON]
                  '01DF', # ǟ  [LATIN SMALL LETTER A WITH DIAERESIS AND MACRON]
                  '01E1', # ǡ  [LATIN SMALL LETTER A WITH DOT ABOVE AND MACRON]
                  '01FB', # ǻ  [LATIN SMALL LETTER A WITH RING ABOVE AND ACUTE]
                  '0201', # ȁ  [LATIN SMALL LETTER A WITH DOUBLE GRAVE]
                  '0203', # ȃ  [LATIN SMALL LETTER A WITH INVERTED BREVE]
                  '0227', # ȧ  [LATIN SMALL LETTER A WITH DOT ABOVE]
                  '0250', # ɐ  [LATIN SMALL LETTER TURNED A]
                  '0259', # ə  [LATIN SMALL LETTER SCHWA]
                  '025A', # ɚ  [LATIN SMALL LETTER SCHWA WITH HOOK]
                  '1D8F', # ᶏ  [LATIN SMALL LETTER A WITH RETROFLEX HOOK]
                  '1D95', # ᶕ  [LATIN SMALL LETTER SCHWA WITH RETROFLEX HOOK]
                  '1E01', # ạ  [LATIN SMALL LETTER A WITH RING BELOW]
                  '1E9A', # ả  [LATIN SMALL LETTER A WITH RIGHT HALF RING]
                  '1EA1', # ạ  [LATIN SMALL LETTER A WITH DOT BELOW]
                  '1EA3', # ả  [LATIN SMALL LETTER A WITH HOOK ABOVE]
                  '1EA5', # ấ  [LATIN SMALL LETTER A WITH CIRCUMFLEX AND ACUTE]
                  '1EA7', # ầ  [LATIN SMALL LETTER A WITH CIRCUMFLEX AND GRAVE]
                  '1EA9', # ẩ  [LATIN SMALL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE]
                  '1EAB', # ẫ  [LATIN SMALL LETTER A WITH CIRCUMFLEX AND TILDE]
                  '1EAD', # ậ  [LATIN SMALL LETTER A WITH CIRCUMFLEX AND DOT BELOW]
                  '1EAF', # ắ  [LATIN SMALL LETTER A WITH BREVE AND ACUTE]
                  '1EB1', # ằ  [LATIN SMALL LETTER A WITH BREVE AND GRAVE]
                  '1EB3', # ẳ  [LATIN SMALL LETTER A WITH BREVE AND HOOK ABOVE]
                  '1EB5', # ẵ  [LATIN SMALL LETTER A WITH BREVE AND TILDE]
                  '1EB7', # ặ  [LATIN SMALL LETTER A WITH BREVE AND DOT BELOW]
                  '2090', # ₐ  [LATIN SUBSCRIPT SMALL LETTER A]
                  '2094', # ₔ  [LATIN SUBSCRIPT SMALL LETTER SCHWA]
                  '24D0', # ⓐ  [CIRCLED LATIN SMALL LETTER A]
                  '2C65', # ⱥ  [LATIN SMALL LETTER A WITH STROKE]
                  '2C6F', # Ɐ  [LATIN CAPITAL LETTER TURNED A]
                  'FF41'  # ａ  [FULLWIDTH LATIN SMALL LETTER A]
          ] => 'a',
          [

                  'A732'  # Ꜳ  [LATIN CAPITAL LETTER AA]
          ] => 'A',
          [
                  ] => 'A',
          [

                  '00C6', # Æ  [LATIN CAPITAL LETTER AE]
                  '01E2', # Ǣ  [LATIN CAPITAL LETTER AE WITH MACRON]
                  '01FC', # Ǽ  [LATIN CAPITAL LETTER AE WITH ACUTE]
                  '1D01'  # ᴁ  [LATIN LETTER SMALL CAPITAL AE]
          ] => 'AE',
          [

                  'A734'  # Ꜵ  [LATIN CAPITAL LETTER AO]
          ] => 'AO',
          [

                  'A736'  # Ꜷ  [LATIN CAPITAL LETTER AU]
          ] => 'AU',
          [

                  'A738', # Ꜹ  [LATIN CAPITAL LETTER AV]
                  'A73A'  # Ꜻ  [LATIN CAPITAL LETTER AV WITH HORIZONTAL BAR]
          ] => 'AV',
          [

                  'A73C'  # Ꜽ  [LATIN CAPITAL LETTER AY]
          ] => 'AY',
          [

                  '249C'  # ⒜  [PARENTHESIZED LATIN SMALL LETTER A]
          ] => '(a)',
          [

                  'A733'  # ꜳ  [LATIN SMALL LETTER AA]
          ] => 'aa',
          [

                  '00E6', # æ  [LATIN SMALL LETTER AE]
                  '01E3', # ǣ  [LATIN SMALL LETTER AE WITH MACRON]
                  '01FD', # ǽ  [LATIN SMALL LETTER AE WITH ACUTE]
                  '1D02'  # ᴂ  [LATIN SMALL LETTER TURNED AE]
          ] => 'ae',
          [

                  'A735'  # ꜵ  [LATIN SMALL LETTER AO]
          ] => 'ao',
          [

                  'A737'  # ꜷ  [LATIN SMALL LETTER AU]
          ] => 'au',
          [

                  'A739', # ꜹ  [LATIN SMALL LETTER AV]
                  'A73B'  # ꜻ  [LATIN SMALL LETTER AV WITH HORIZONTAL BAR]
          ] => 'av',
          [

                  'A73D'  # ꜽ  [LATIN SMALL LETTER AY]
          ] => 'ay',
          [

                  '0181', # Ɓ  [LATIN CAPITAL LETTER B WITH HOOK]
                  '0182', # Ƃ  [LATIN CAPITAL LETTER B WITH TOPBAR]
                  '0243', # Ƀ  [LATIN CAPITAL LETTER B WITH STROKE]
                  '0299', # ʙ  [LATIN LETTER SMALL CAPITAL B]
                  '1D03', # ᴃ  [LATIN LETTER SMALL CAPITAL BARRED B]
                  '1E02', # Ḃ  [LATIN CAPITAL LETTER B WITH DOT ABOVE]
                  '1E04', # Ḅ  [LATIN CAPITAL LETTER B WITH DOT BELOW]
                  '1E06', # Ḇ  [LATIN CAPITAL LETTER B WITH LINE BELOW]
                  '24B7', # Ⓑ  [CIRCLED LATIN CAPITAL LETTER B]
                  'FF22'  # Ｂ  [FULLWIDTH LATIN CAPITAL LETTER B]
          ] => 'B',
          [

                  '0180', # ƀ  [LATIN SMALL LETTER B WITH STROKE]
                  '0183', # ƃ  [LATIN SMALL LETTER B WITH TOPBAR]
                  '0253', # ɓ  [LATIN SMALL LETTER B WITH HOOK]
                  '1D6C', # ᵬ  [LATIN SMALL LETTER B WITH MIDDLE TILDE]
                  '1D80', # ᶀ  [LATIN SMALL LETTER B WITH PALATAL HOOK]
                  '1E03', # ḃ  [LATIN SMALL LETTER B WITH DOT ABOVE]
                  '1E05', # ḅ  [LATIN SMALL LETTER B WITH DOT BELOW]
                  '1E07', # ḇ  [LATIN SMALL LETTER B WITH LINE BELOW]
                  '24D1', # ⓑ  [CIRCLED LATIN SMALL LETTER B]
                  'FF42'  # ｂ  [FULLWIDTH LATIN SMALL LETTER B]
          ] => 'b',
          [

                  '249D'  # ⒝  [PARENTHESIZED LATIN SMALL LETTER B]
          ] => '(b)',
          [

                  '00C7', # Ç  [LATIN CAPITAL LETTER C WITH CEDILLA]
                  '0106', # Ć  [LATIN CAPITAL LETTER C WITH ACUTE]
                  '0108', # Ĉ  [LATIN CAPITAL LETTER C WITH CIRCUMFLEX]
                  '010A', # Ċ  [LATIN CAPITAL LETTER C WITH DOT ABOVE]
                  '010C', # Č  [LATIN CAPITAL LETTER C WITH CARON]
                  '0187', # Ƈ  [LATIN CAPITAL LETTER C WITH HOOK]
                  '023B', # Ȼ  [LATIN CAPITAL LETTER C WITH STROKE]
                  '0297', # ʗ  [LATIN LETTER STRETCHED C]
                  '1D04', # ᴄ  [LATIN LETTER SMALL CAPITAL C]
                  '1E08', # Ḉ  [LATIN CAPITAL LETTER C WITH CEDILLA AND ACUTE]
                  '24B8', # Ⓒ  [CIRCLED LATIN CAPITAL LETTER C]
                  'FF23'  # Ｃ  [FULLWIDTH LATIN CAPITAL LETTER C]
          ] => 'C',
          [

                  '00E7', # ç  [LATIN SMALL LETTER C WITH CEDILLA]
                  '0107', # ć  [LATIN SMALL LETTER C WITH ACUTE]
                  '0109', # ĉ  [LATIN SMALL LETTER C WITH CIRCUMFLEX]
                  '010B', # ċ  [LATIN SMALL LETTER C WITH DOT ABOVE]
                  '010D', # č  [LATIN SMALL LETTER C WITH CARON]
                  '0188', # ƈ  [LATIN SMALL LETTER C WITH HOOK]
                  '023C', # ȼ  [LATIN SMALL LETTER C WITH STROKE]
                  '0255', # ɕ  [LATIN SMALL LETTER C WITH CURL]
                  '1E09', # ḉ  [LATIN SMALL LETTER C WITH CEDILLA AND ACUTE]
                  '2184', # ↄ  [LATIN SMALL LETTER REVERSED C]
                  '24D2', # ⓒ  [CIRCLED LATIN SMALL LETTER C]
                  'A73E', # Ꜿ  [LATIN CAPITAL LETTER REVERSED C WITH DOT]
                  'A73F', # ꜿ  [LATIN SMALL LETTER REVERSED C WITH DOT]
                  'FF43'  # ｃ  [FULLWIDTH LATIN SMALL LETTER C]
          ] => 'c',
          [

                  '249E'  # ⒞  [PARENTHESIZED LATIN SMALL LETTER C]
          ] => '(c)',
          [

                  '00D0', # Ð  [LATIN CAPITAL LETTER ETH]
                  '010E', # Ď  [LATIN CAPITAL LETTER D WITH CARON]
                  '0110', # Đ  [LATIN CAPITAL LETTER D WITH STROKE]
                  '0189', # Ɖ  [LATIN CAPITAL LETTER AFRICAN D]
                  '018A', # Ɗ  [LATIN CAPITAL LETTER D WITH HOOK]
                  '018B', # Ƌ  [LATIN CAPITAL LETTER D WITH TOPBAR]
                  '1D05', # ᴅ  [LATIN LETTER SMALL CAPITAL D]
                  '1D06', # ᴆ  [LATIN LETTER SMALL CAPITAL ETH]
                  '1E0A', # Ḋ  [LATIN CAPITAL LETTER D WITH DOT ABOVE]
                  '1E0C', # Ḍ  [LATIN CAPITAL LETTER D WITH DOT BELOW]
                  '1E0E', # Ḏ  [LATIN CAPITAL LETTER D WITH LINE BELOW]
                  '1E10', # Ḑ  [LATIN CAPITAL LETTER D WITH CEDILLA]
                  '1E12', # Ḓ  [LATIN CAPITAL LETTER D WITH CIRCUMFLEX BELOW]
                  '24B9', # Ⓓ  [CIRCLED LATIN CAPITAL LETTER D]
                  'A779', # Ꝺ  [LATIN CAPITAL LETTER INSULAR D]
                  'FF24'  # Ｄ  [FULLWIDTH LATIN CAPITAL LETTER D]
          ] => 'D',
          [

                  '00F0', # ð  [LATIN SMALL LETTER ETH]
                  '010F', # ď  [LATIN SMALL LETTER D WITH CARON]
                  '0111', # đ  [LATIN SMALL LETTER D WITH STROKE]
                  '018C', # ƌ  [LATIN SMALL LETTER D WITH TOPBAR]
                  '0221', # ȡ  [LATIN SMALL LETTER D WITH CURL]
                  '0256', # ɖ  [LATIN SMALL LETTER D WITH TAIL]
                  '0257', # ɗ  [LATIN SMALL LETTER D WITH HOOK]
                  '1D6D', # ᵭ  [LATIN SMALL LETTER D WITH MIDDLE TILDE]
                  '1D81', # ᶁ  [LATIN SMALL LETTER D WITH PALATAL HOOK]
                  '1D91', # ᶑ  [LATIN SMALL LETTER D WITH HOOK AND TAIL]
                  '1E0B', # ḋ  [LATIN SMALL LETTER D WITH DOT ABOVE]
                  '1E0D', # ḍ  [LATIN SMALL LETTER D WITH DOT BELOW]
                  '1E0F', # ḏ  [LATIN SMALL LETTER D WITH LINE BELOW]
                  '1E11', # ḑ  [LATIN SMALL LETTER D WITH CEDILLA]
                  '1E13', # ḓ  [LATIN SMALL LETTER D WITH CIRCUMFLEX BELOW]
                  '24D3', # ⓓ  [CIRCLED LATIN SMALL LETTER D]
                  'A77A', # ꝺ  [LATIN SMALL LETTER INSULAR D]
                  'FF44'  # ｄ  [FULLWIDTH LATIN SMALL LETTER D]
          ] => 'd',
          [

                  '01C4', # Ǆ  [LATIN CAPITAL LETTER DZ WITH CARON]
                  '01F1'  # Ǳ  [LATIN CAPITAL LETTER DZ]
          ] => 'DZ',
          [

                  '01C5', # ǅ  [LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON]
                  '01F2'  # ǲ  [LATIN CAPITAL LETTER D WITH SMALL LETTER Z]
          ] => 'Dz',
          [

                  '249F'  # ⒟  [PARENTHESIZED LATIN SMALL LETTER D]
          ] => '(d)',
          [

                  '0238'  # ȸ  [LATIN SMALL LETTER DB DIGRAPH]
          ] => 'db',
          [

                  '01C6', # ǆ  [LATIN SMALL LETTER DZ WITH CARON]
                  '01F3', # ǳ  [LATIN SMALL LETTER DZ]
                  '02A3', # ʣ  [LATIN SMALL LETTER DZ DIGRAPH]
                  '02A5'  # ʥ  [LATIN SMALL LETTER DZ DIGRAPH WITH CURL]
          ] => 'dz',
          [

                  '00C8', # È  [LATIN CAPITAL LETTER E WITH GRAVE]
                  '00C9', # É  [LATIN CAPITAL LETTER E WITH ACUTE]
                  '00CA', # Ê  [LATIN CAPITAL LETTER E WITH CIRCUMFLEX]
                  '00CB', # Ë  [LATIN CAPITAL LETTER E WITH DIAERESIS]
                  '0112', # Ē  [LATIN CAPITAL LETTER E WITH MACRON]
                  '0114', # Ĕ  [LATIN CAPITAL LETTER E WITH BREVE]
                  '0116', # Ė  [LATIN CAPITAL LETTER E WITH DOT ABOVE]
                  '0118', # Ę  [LATIN CAPITAL LETTER E WITH OGONEK]
                  '011A', # Ě  [LATIN CAPITAL LETTER E WITH CARON]
                  '018E', # Ǝ  [LATIN CAPITAL LETTER REVERSED E]
                  '0190', # Ɛ  [LATIN CAPITAL LETTER OPEN E]
                  '0204', # Ȅ  [LATIN CAPITAL LETTER E WITH DOUBLE GRAVE]
                  '0206', # Ȇ  [LATIN CAPITAL LETTER E WITH INVERTED BREVE]
                  '0228', # Ȩ  [LATIN CAPITAL LETTER E WITH CEDILLA]
                  '0246', # Ɇ  [LATIN CAPITAL LETTER E WITH STROKE]
                  '1D07', # ᴇ  [LATIN LETTER SMALL CAPITAL E]
                  '1E14', # Ḕ  [LATIN CAPITAL LETTER E WITH MACRON AND GRAVE]
                  '1E16', # Ḗ  [LATIN CAPITAL LETTER E WITH MACRON AND ACUTE]
                  '1E18', # Ḙ  [LATIN CAPITAL LETTER E WITH CIRCUMFLEX BELOW]
                  '1E1A', # Ḛ  [LATIN CAPITAL LETTER E WITH TILDE BELOW]
                  '1E1C', # Ḝ  [LATIN CAPITAL LETTER E WITH CEDILLA AND BREVE]
                  '1EB8', # Ẹ  [LATIN CAPITAL LETTER E WITH DOT BELOW]
                  '1EBA', # Ẻ  [LATIN CAPITAL LETTER E WITH HOOK ABOVE]
                  '1EBC', # Ẽ  [LATIN CAPITAL LETTER E WITH TILDE]
                  '1EBE', # Ế  [LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND ACUTE]
                  '1EC0', # Ề  [LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND GRAVE]
                  '1EC2', # Ể  [LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE]
                  '1EC4', # Ễ  [LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND TILDE]
                  '1EC6', # Ệ  [LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND DOT BELOW]
                  '24BA', # Ⓔ  [CIRCLED LATIN CAPITAL LETTER E]
                  '2C7B', # ⱻ  [LATIN LETTER SMALL CAPITAL TURNED E]
                  'FF25'  # Ｅ  [FULLWIDTH LATIN CAPITAL LETTER E]
          ] => 'E',
          [

                  '00E8', # è  [LATIN SMALL LETTER E WITH GRAVE]
                  '00E9', # é  [LATIN SMALL LETTER E WITH ACUTE]
                  '00EA', # ê  [LATIN SMALL LETTER E WITH CIRCUMFLEX]
                  '00EB', # ë  [LATIN SMALL LETTER E WITH DIAERESIS]
                  '0113', # ē  [LATIN SMALL LETTER E WITH MACRON]
                  '0115', # ĕ  [LATIN SMALL LETTER E WITH BREVE]
                  '0117', # ė  [LATIN SMALL LETTER E WITH DOT ABOVE]
                  '0119', # ę  [LATIN SMALL LETTER E WITH OGONEK]
                  '011B', # ě  [LATIN SMALL LETTER E WITH CARON]
                  '01DD', # ǝ  [LATIN SMALL LETTER TURNED E]
                  '0205', # ȅ  [LATIN SMALL LETTER E WITH DOUBLE GRAVE]
                  '0207', # ȇ  [LATIN SMALL LETTER E WITH INVERTED BREVE]
                  '0229', # ȩ  [LATIN SMALL LETTER E WITH CEDILLA]
                  '0247', # ɇ  [LATIN SMALL LETTER E WITH STROKE]
                  '0258', # ɘ  [LATIN SMALL LETTER REVERSED E]
                  '025B', # ɛ  [LATIN SMALL LETTER OPEN E]
                  '025C', # ɜ  [LATIN SMALL LETTER REVERSED OPEN E]
                  '025D', # ɝ  [LATIN SMALL LETTER REVERSED OPEN E WITH HOOK]
                  '025E', # ɞ  [LATIN SMALL LETTER CLOSED REVERSED OPEN E]
                  '029A', # ʚ  [LATIN SMALL LETTER CLOSED OPEN E]
                  '1D08', # ᴈ  [LATIN SMALL LETTER TURNED OPEN E]
                  '1D92', # ᶒ  [LATIN SMALL LETTER E WITH RETROFLEX HOOK]
                  '1D93', # ᶓ  [LATIN SMALL LETTER OPEN E WITH RETROFLEX HOOK]
                  '1D94', # ᶔ  [LATIN SMALL LETTER REVERSED OPEN E WITH RETROFLEX HOOK]
                  '1E15', # ḕ  [LATIN SMALL LETTER E WITH MACRON AND GRAVE]
                  '1E17', # ḗ  [LATIN SMALL LETTER E WITH MACRON AND ACUTE]
                  '1E19', # ḙ  [LATIN SMALL LETTER E WITH CIRCUMFLEX BELOW]
                  '1E1B', # ḛ  [LATIN SMALL LETTER E WITH TILDE BELOW]
                  '1E1D', # ḝ  [LATIN SMALL LETTER E WITH CEDILLA AND BREVE]
                  '1EB9', # ẹ  [LATIN SMALL LETTER E WITH DOT BELOW]
                  '1EBB', # ẻ  [LATIN SMALL LETTER E WITH HOOK ABOVE]
                  '1EBD', # ẽ  [LATIN SMALL LETTER E WITH TILDE]
                  '1EBF', # ế  [LATIN SMALL LETTER E WITH CIRCUMFLEX AND ACUTE]
                  '1EC1', # ề  [LATIN SMALL LETTER E WITH CIRCUMFLEX AND GRAVE]
                  '1EC3', # ể  [LATIN SMALL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE]
                  '1EC5', # ễ  [LATIN SMALL LETTER E WITH CIRCUMFLEX AND TILDE]
                  '1EC7', # ệ  [LATIN SMALL LETTER E WITH CIRCUMFLEX AND DOT BELOW]
                  '2091', # ₑ  [LATIN SUBSCRIPT SMALL LETTER E]
                  '24D4', # ⓔ  [CIRCLED LATIN SMALL LETTER E]
                  '2C78', # ⱸ  [LATIN SMALL LETTER E WITH NOTCH]
                  'FF45'  # ｅ  [FULLWIDTH LATIN SMALL LETTER E]
          ] => 'e',
          [

                  '24A0'  # ⒠  [PARENTHESIZED LATIN SMALL LETTER E]
          ] => '(e)',
          [

                  '0191', # Ƒ  [LATIN CAPITAL LETTER F WITH HOOK]
                  '1E1E', # Ḟ  [LATIN CAPITAL LETTER F WITH DOT ABOVE]
                  '24BB', # Ⓕ  [CIRCLED LATIN CAPITAL LETTER F]
                  'A730', # ꜰ  [LATIN LETTER SMALL CAPITAL F]
                  'A77B', # Ꝼ  [LATIN CAPITAL LETTER INSULAR F]
                  'A7FB', # ꟻ  [LATIN EPIGRAPHIC LETTER REVERSED F]
                  'FF26'  # Ｆ  [FULLWIDTH LATIN CAPITAL LETTER F]
          ] => 'F',
          [

                  '0192', # ƒ  [LATIN SMALL LETTER F WITH HOOK]
                  '1D6E', # ᵮ  [LATIN SMALL LETTER F WITH MIDDLE TILDE]
                  '1D82', # ᶂ  [LATIN SMALL LETTER F WITH PALATAL HOOK]
                  '1E1F', # ḟ  [LATIN SMALL LETTER F WITH DOT ABOVE]
                  '1E9B', # ẛ  [LATIN SMALL LETTER LONG S WITH DOT ABOVE]
                  '24D5', # ⓕ  [CIRCLED LATIN SMALL LETTER F]
                  'A77C', # ꝼ  [LATIN SMALL LETTER INSULAR F]
                  'FF46'  # ｆ  [FULLWIDTH LATIN SMALL LETTER F]
          ] => 'f',
          [

                  '24A1'  # ⒡  [PARENTHESIZED LATIN SMALL LETTER F]
          ] => '(f)',
          [

                  'FB00'  # ﬀ  [LATIN SMALL LIGATURE FF]
          ] => 'ff',
          [

                  'FB03'  # ﬃ  [LATIN SMALL LIGATURE FFI]
          ] => 'ffi',
          [

                  'FB04'  # ﬄ  [LATIN SMALL LIGATURE FFL]
          ] => 'ffl',
          [

                  'FB01'  # ﬁ  [LATIN SMALL LIGATURE FI]
          ] => 'fi',
          [

                  'FB02'  # ﬂ  [LATIN SMALL LIGATURE FL]
          ] => 'fl',
          [

                  '011C', # Ĝ  [LATIN CAPITAL LETTER G WITH CIRCUMFLEX]
                  '011E', # Ğ  [LATIN CAPITAL LETTER G WITH BREVE]
                  '0120', # Ġ  [LATIN CAPITAL LETTER G WITH DOT ABOVE]
                  '0122', # Ģ  [LATIN CAPITAL LETTER G WITH CEDILLA]
                  '0193', # Ɠ  [LATIN CAPITAL LETTER G WITH HOOK]
                  '01E4', # Ǥ  [LATIN CAPITAL LETTER G WITH STROKE]
                  '01E5', # ǥ  [LATIN SMALL LETTER G WITH STROKE]
                  '01E6', # Ǧ  [LATIN CAPITAL LETTER G WITH CARON]
                  '01E7', # ǧ  [LATIN SMALL LETTER G WITH CARON]
                  '01F4', # Ǵ  [LATIN CAPITAL LETTER G WITH ACUTE]
                  '0262', # ɢ  [LATIN LETTER SMALL CAPITAL G]
                  '029B', # ʛ  [LATIN LETTER SMALL CAPITAL G WITH HOOK]
                  '1E20', # Ḡ  [LATIN CAPITAL LETTER G WITH MACRON]
                  '24BC', # Ⓖ  [CIRCLED LATIN CAPITAL LETTER G]
                  'A77D', # Ᵹ  [LATIN CAPITAL LETTER INSULAR G]
                  'A77E', # Ꝿ  [LATIN CAPITAL LETTER TURNED INSULAR G]
                  'FF27'  # Ｇ  [FULLWIDTH LATIN CAPITAL LETTER G]
          ] => 'G',
          [

                  '011D', # ĝ  [LATIN SMALL LETTER G WITH CIRCUMFLEX]
                  '011F', # ğ  [LATIN SMALL LETTER G WITH BREVE]
                  '0121', # ġ  [LATIN SMALL LETTER G WITH DOT ABOVE]
                  '0123', # ģ  [LATIN SMALL LETTER G WITH CEDILLA]
                  '01F5', # ǵ  [LATIN SMALL LETTER G WITH ACUTE]
                  '0260', # ɠ  [LATIN SMALL LETTER G WITH HOOK]
                  '0261', # ɡ  [LATIN SMALL LETTER SCRIPT G]
                  '1D77', # ᵷ  [LATIN SMALL LETTER TURNED G]
                  '1D79', # ᵹ  [LATIN SMALL LETTER INSULAR G]
                  '1D83', # ᶃ  [LATIN SMALL LETTER G WITH PALATAL HOOK]
                  '1E21', # ḡ  [LATIN SMALL LETTER G WITH MACRON]
                  '24D6', # ⓖ  [CIRCLED LATIN SMALL LETTER G]
                  'A77F', # ꝿ  [LATIN SMALL LETTER TURNED INSULAR G]
                  'FF47'  # ｇ  [FULLWIDTH LATIN SMALL LETTER G]
          ] => 'g',
          [

                  '24A2'  # ⒢  [PARENTHESIZED LATIN SMALL LETTER G]
          ] => '(g)',
          [

                  '0124', # Ĥ  [LATIN CAPITAL LETTER H WITH CIRCUMFLEX]
                  '0126', # Ħ  [LATIN CAPITAL LETTER H WITH STROKE]
                  '021E', # Ȟ  [LATIN CAPITAL LETTER H WITH CARON]
                  '029C', # ʜ  [LATIN LETTER SMALL CAPITAL H]
                  '1E22', # Ḣ  [LATIN CAPITAL LETTER H WITH DOT ABOVE]
                  '1E24', # Ḥ  [LATIN CAPITAL LETTER H WITH DOT BELOW]
                  '1E26', # Ḧ  [LATIN CAPITAL LETTER H WITH DIAERESIS]
                  '1E28', # Ḩ  [LATIN CAPITAL LETTER H WITH CEDILLA]
                  '1E2A', # Ḫ  [LATIN CAPITAL LETTER H WITH BREVE BELOW]
                  '24BD', # Ⓗ  [CIRCLED LATIN CAPITAL LETTER H]
                  '2C67', # Ⱨ  [LATIN CAPITAL LETTER H WITH DESCENDER]
                  '2C75', # Ⱶ  [LATIN CAPITAL LETTER HALF H]
                  'FF28'  # Ｈ  [FULLWIDTH LATIN CAPITAL LETTER H]
          ] => 'H',
          [

                  '0125', # ĥ  [LATIN SMALL LETTER H WITH CIRCUMFLEX]
                  '0127', # ħ  [LATIN SMALL LETTER H WITH STROKE]
                  '021F', # ȟ  [LATIN SMALL LETTER H WITH CARON]
                  '0265', # ɥ  [LATIN SMALL LETTER TURNED H]
                  '0266', # ɦ  [LATIN SMALL LETTER H WITH HOOK]
                  '02AE', # ʮ  [LATIN SMALL LETTER TURNED H WITH FISHHOOK]
                  '02AF', # ʯ  [LATIN SMALL LETTER TURNED H WITH FISHHOOK AND TAIL]
                  '1E23', # ḣ  [LATIN SMALL LETTER H WITH DOT ABOVE]
                  '1E25', # ḥ  [LATIN SMALL LETTER H WITH DOT BELOW]
                  '1E27', # ḧ  [LATIN SMALL LETTER H WITH DIAERESIS]
                  '1E29', # ḩ  [LATIN SMALL LETTER H WITH CEDILLA]
                  '1E2B', # ḫ  [LATIN SMALL LETTER H WITH BREVE BELOW]
                  '1E96', # ẖ  [LATIN SMALL LETTER H WITH LINE BELOW]
                  '24D7', # ⓗ  [CIRCLED LATIN SMALL LETTER H]
                  '2C68', # ⱨ  [LATIN SMALL LETTER H WITH DESCENDER]
                  '2C76', # ⱶ  [LATIN SMALL LETTER HALF H]
                  'FF48'  # ｈ  [FULLWIDTH LATIN SMALL LETTER H]
          ] => 'h',
          [

                  '01F6'  # Ƕ  http://en.wikipedia.org/wiki/Hwair  [LATIN CAPITAL LETTER HWAIR]
          ] => 'HV',
          [

                  '24A3'  # ⒣  [PARENTHESIZED LATIN SMALL LETTER H]
          ] => '(h)',
          [

                  '0195' # ƕ  [LATIN SMALL LETTER HV]
          ] => 'hv',
          [

                  '00CC', # Ì  [LATIN CAPITAL LETTER I WITH GRAVE]
                  '00CD', # Í  [LATIN CAPITAL LETTER I WITH ACUTE]
                  '00CE', # Î  [LATIN CAPITAL LETTER I WITH CIRCUMFLEX]
                  '00CF', # Ï  [LATIN CAPITAL LETTER I WITH DIAERESIS]
                  '0128', # Ĩ  [LATIN CAPITAL LETTER I WITH TILDE]
                  '012A', # Ī  [LATIN CAPITAL LETTER I WITH MACRON]
                  '012C', # Ĭ  [LATIN CAPITAL LETTER I WITH BREVE]
                  '012E', # Į  [LATIN CAPITAL LETTER I WITH OGONEK]
                  '0130', # İ  [LATIN CAPITAL LETTER I WITH DOT ABOVE]
                  '0196', # Ɩ  [LATIN CAPITAL LETTER IOTA]
                  '0197', # Ɨ  [LATIN CAPITAL LETTER I WITH STROKE]
                  '01CF', # Ǐ  [LATIN CAPITAL LETTER I WITH CARON]
                  '0208', # Ȉ  [LATIN CAPITAL LETTER I WITH DOUBLE GRAVE]
                  '020A', # Ȋ  [LATIN CAPITAL LETTER I WITH INVERTED BREVE]
                  '026A', # ɪ  [LATIN LETTER SMALL CAPITAL I]
                  '1D7B', # ᵻ  [LATIN SMALL CAPITAL LETTER I WITH STROKE]
                  '1E2C', # Ḭ  [LATIN CAPITAL LETTER I WITH TILDE BELOW]
                  '1E2E', # Ḯ  [LATIN CAPITAL LETTER I WITH DIAERESIS AND ACUTE]
                  '1EC8', # Ỉ  [LATIN CAPITAL LETTER I WITH HOOK ABOVE]
                  '1ECA', # Ị  [LATIN CAPITAL LETTER I WITH DOT BELOW]
                  '24BE', # Ⓘ  [CIRCLED LATIN CAPITAL LETTER I]
                  'A7FE', # ꟾ  [LATIN EPIGRAPHIC LETTER I LONGA]
                  'FF29'  # Ｉ  [FULLWIDTH LATIN CAPITAL LETTER I]
          ] => 'I',
          [

                  '00EC', # ì  [LATIN SMALL LETTER I WITH GRAVE]
                  '00ED', # í  [LATIN SMALL LETTER I WITH ACUTE]
                  '00EE', # î  [LATIN SMALL LETTER I WITH CIRCUMFLEX]
                  '00EF', # ï  [LATIN SMALL LETTER I WITH DIAERESIS]
                  '0129', # ĩ  [LATIN SMALL LETTER I WITH TILDE]
                  '012B', # ī  [LATIN SMALL LETTER I WITH MACRON]
                  '012D', # ĭ  [LATIN SMALL LETTER I WITH BREVE]
                  '012F', # į  [LATIN SMALL LETTER I WITH OGONEK]
                  '0131', # ı  [LATIN SMALL LETTER DOTLESS I]
                  '01D0', # ǐ  [LATIN SMALL LETTER I WITH CARON]
                  '0209', # ȉ  [LATIN SMALL LETTER I WITH DOUBLE GRAVE]
                  '020B', # ȋ  [LATIN SMALL LETTER I WITH INVERTED BREVE]
                  '0268', # ɨ  [LATIN SMALL LETTER I WITH STROKE]
                  '1D09', # ᴉ  [LATIN SMALL LETTER TURNED I]
                  '1D62', # ᵢ  [LATIN SUBSCRIPT SMALL LETTER I]
                  '1D7C', # ᵼ  [LATIN SMALL LETTER IOTA WITH STROKE]
                  '1D96', # ᶖ  [LATIN SMALL LETTER I WITH RETROFLEX HOOK]
                  '1E2D', # ḭ  [LATIN SMALL LETTER I WITH TILDE BELOW]
                  '1E2F', # ḯ  [LATIN SMALL LETTER I WITH DIAERESIS AND ACUTE]
                  '1EC9', # ỉ  [LATIN SMALL LETTER I WITH HOOK ABOVE]
                  '1ECB', # ị  [LATIN SMALL LETTER I WITH DOT BELOW]
                  '2071', # ⁱ  [SUPERSCRIPT LATIN SMALL LETTER I]
                  '24D8', # ⓘ  [CIRCLED LATIN SMALL LETTER I]
                  'FF49'  # ｉ  [FULLWIDTH LATIN SMALL LETTER I]
          ] => 'i',
          [

                  '0132'  # Ĳ  [LATIN CAPITAL LIGATURE IJ]
          ] => 'IJ',
          [

                  '24A4'  # ⒤  [PARENTHESIZED LATIN SMALL LETTER I]
          ] => '(i)',
          [

                  '0133'  # ĳ  [LATIN SMALL LIGATURE IJ]
          ] => 'ij',
          [

                  '0134', # Ĵ  [LATIN CAPITAL LETTER J WITH CIRCUMFLEX]
                  '0248', # Ɉ  [LATIN CAPITAL LETTER J WITH STROKE]
                  '1D0A', # ᴊ  [LATIN LETTER SMALL CAPITAL J]
                  '24BF', # Ⓙ  [CIRCLED LATIN CAPITAL LETTER J]
                  'FF2A'  # Ｊ  [FULLWIDTH LATIN CAPITAL LETTER J]
          ] => 'J',
          [

                  '0135', # ĵ  [LATIN SMALL LETTER J WITH CIRCUMFLEX]
                  '01F0', # ǰ  [LATIN SMALL LETTER J WITH CARON]
                  '0237', # ȷ  [LATIN SMALL LETTER DOTLESS J]
                  '0249', # ɉ  [LATIN SMALL LETTER J WITH STROKE]
                  '025F', # ɟ  [LATIN SMALL LETTER DOTLESS J WITH STROKE]
                  '0284', # ʄ  [LATIN SMALL LETTER DOTLESS J WITH STROKE AND HOOK]
                  '029D', # ʝ  [LATIN SMALL LETTER J WITH CROSSED-TAIL]
                  '24D9', # ⓙ  [CIRCLED LATIN SMALL LETTER J]
                  '2C7C', # ⱼ  [LATIN SUBSCRIPT SMALL LETTER J]
                  'FF4A'  # ｊ  [FULLWIDTH LATIN SMALL LETTER J]
          ] => 'j',
          [

                  '24A5'  # ⒥  [PARENTHESIZED LATIN SMALL LETTER J]
          ] => '(j)',
          [

                  '0136', # Ķ  [LATIN CAPITAL LETTER K WITH CEDILLA]
                  '0198', # Ƙ  [LATIN CAPITAL LETTER K WITH HOOK]
                  '01E8', # Ǩ  [LATIN CAPITAL LETTER K WITH CARON]
                  '1D0B', # ᴋ  [LATIN LETTER SMALL CAPITAL K]
                  '1E30', # Ḱ  [LATIN CAPITAL LETTER K WITH ACUTE]
                  '1E32', # Ḳ  [LATIN CAPITAL LETTER K WITH DOT BELOW]
                  '1E34', # Ḵ  [LATIN CAPITAL LETTER K WITH LINE BELOW]
                  '24C0', # Ⓚ  [CIRCLED LATIN CAPITAL LETTER K]
                  '2C69', # Ⱪ  [LATIN CAPITAL LETTER K WITH DESCENDER]
                  'A740', # Ꝁ  [LATIN CAPITAL LETTER K WITH STROKE]
                  'A742', # Ꝃ  [LATIN CAPITAL LETTER K WITH DIAGONAL STROKE]
                  'A744', # Ꝅ  [LATIN CAPITAL LETTER K WITH STROKE AND DIAGONAL STROKE]
                  'FF2B'  # Ｋ  [FULLWIDTH LATIN CAPITAL LETTER K]
          ] => 'K',
          [

                  '0137', # ķ  [LATIN SMALL LETTER K WITH CEDILLA]
                  '0199', # ƙ  [LATIN SMALL LETTER K WITH HOOK]
                  '01E9', # ǩ  [LATIN SMALL LETTER K WITH CARON]
                  '029E', # ʞ  [LATIN SMALL LETTER TURNED K]
                  '1D84', # ᶄ  [LATIN SMALL LETTER K WITH PALATAL HOOK]
                  '1E31', # ḱ  [LATIN SMALL LETTER K WITH ACUTE]
                  '1E33', # ḳ  [LATIN SMALL LETTER K WITH DOT BELOW]
                  '1E35', # ḵ  [LATIN SMALL LETTER K WITH LINE BELOW]
                  '24DA', # ⓚ  [CIRCLED LATIN SMALL LETTER K]
                  '2C6A', # ⱪ  [LATIN SMALL LETTER K WITH DESCENDER]
                  'A741', # ꝁ  [LATIN SMALL LETTER K WITH STROKE]
                  'A743', # ꝃ  [LATIN SMALL LETTER K WITH DIAGONAL STROKE]
                  'A745', # ꝅ  [LATIN SMALL LETTER K WITH STROKE AND DIAGONAL STROKE]
                  'FF4B'  # ｋ  [FULLWIDTH LATIN SMALL LETTER K]
          ] => 'k',
          [

                  '24A6'  # ⒦  [PARENTHESIZED LATIN SMALL LETTER K]
          ] => '(k)',
          [

                  '0139', # Ĺ  [LATIN CAPITAL LETTER L WITH ACUTE]
                  '013B', # Ļ  [LATIN CAPITAL LETTER L WITH CEDILLA]
                  '013D', # Ľ  [LATIN CAPITAL LETTER L WITH CARON]
                  '013F', # Ŀ  [LATIN CAPITAL LETTER L WITH MIDDLE DOT]
                  '0141', # Ł  [LATIN CAPITAL LETTER L WITH STROKE]
                  '023D', # Ƚ  [LATIN CAPITAL LETTER L WITH BAR]
                  '029F', # ʟ  [LATIN LETTER SMALL CAPITAL L]
                  '1D0C', # ᴌ  [LATIN LETTER SMALL CAPITAL L WITH STROKE]
                  '1E36', # Ḷ  [LATIN CAPITAL LETTER L WITH DOT BELOW]
                  '1E38', # Ḹ  [LATIN CAPITAL LETTER L WITH DOT BELOW AND MACRON]
                  '1E3A', # Ḻ  [LATIN CAPITAL LETTER L WITH LINE BELOW]
                  '1E3C', # Ḽ  [LATIN CAPITAL LETTER L WITH CIRCUMFLEX BELOW]
                  '24C1', # Ⓛ  [CIRCLED LATIN CAPITAL LETTER L]
                  '2C60', # Ⱡ  [LATIN CAPITAL LETTER L WITH DOUBLE BAR]
                  '2C62', # Ɫ  [LATIN CAPITAL LETTER L WITH MIDDLE TILDE]
                  'A746', # Ꝇ  [LATIN CAPITAL LETTER BROKEN L]
                  'A748', # Ꝉ  [LATIN CAPITAL LETTER L WITH HIGH STROKE]
                  'A780', # Ꞁ  [LATIN CAPITAL LETTER TURNED L]
                  'FF2C'  # Ｌ  [FULLWIDTH LATIN CAPITAL LETTER L]
          ] => 'L',
          [

                  '013A', # ĺ  [LATIN SMALL LETTER L WITH ACUTE]
                  '013C', # ļ  [LATIN SMALL LETTER L WITH CEDILLA]
                  '013E', # ľ  [LATIN SMALL LETTER L WITH CARON]
                  '0140', # ŀ  [LATIN SMALL LETTER L WITH MIDDLE DOT]
                  '0142', # ł  [LATIN SMALL LETTER L WITH STROKE]
                  '019A', # ƚ  [LATIN SMALL LETTER L WITH BAR]
                  '0234', # ȴ  [LATIN SMALL LETTER L WITH CURL]
                  '026B', # ɫ  [LATIN SMALL LETTER L WITH MIDDLE TILDE]
                  '026C', # ɬ  [LATIN SMALL LETTER L WITH BELT]
                  '026D', # ɭ  [LATIN SMALL LETTER L WITH RETROFLEX HOOK]
                  '1D85', # ᶅ  [LATIN SMALL LETTER L WITH PALATAL HOOK]
                  '1E37', # ḷ  [LATIN SMALL LETTER L WITH DOT BELOW]
                  '1E39', # ḹ  [LATIN SMALL LETTER L WITH DOT BELOW AND MACRON]
                  '1E3B', # ḻ  [LATIN SMALL LETTER L WITH LINE BELOW]
                  '1E3D', # ḽ  [LATIN SMALL LETTER L WITH CIRCUMFLEX BELOW]
                  '24DB', # ⓛ  [CIRCLED LATIN SMALL LETTER L]
                  '2C61', # ⱡ  [LATIN SMALL LETTER L WITH DOUBLE BAR]
                  'A747', # ꝇ  [LATIN SMALL LETTER BROKEN L]
                  'A749', # ꝉ  [LATIN SMALL LETTER L WITH HIGH STROKE]
                  'A781', # ꞁ  [LATIN SMALL LETTER TURNED L]
                  'FF4C'  # ｌ  [FULLWIDTH LATIN SMALL LETTER L]
          ] => 'l',
          [

                  '01C7'  # Ǉ  [LATIN CAPITAL LETTER LJ]
          ] => 'LJ',
          [

                  '1EFA'  # Ỻ  [LATIN CAPITAL LETTER MIDDLE-WELSH LL]
          ] => 'LL',
          [

                  '01C8'  # ǈ  [LATIN CAPITAL LETTER L WITH SMALL LETTER J]
          ] => 'Lj',
          [

                  '24A7'  # ⒧  [PARENTHESIZED LATIN SMALL LETTER L]
          ] => '(l)',
          [

                  '01C9'  # ǉ  [LATIN SMALL LETTER LJ]
          ] => 'lj',
          [

                  '1EFB'  # ỻ  [LATIN SMALL LETTER MIDDLE-WELSH LL]
          ] => 'll',
          [

                  '02AA'  # ʪ  [LATIN SMALL LETTER LS DIGRAPH]
          ] => 'ls',
          [

                  '02AB'  # ʫ  [LATIN SMALL LETTER LZ DIGRAPH]
          ] => 'lz',
          [

                  '019C', # Ɯ  [LATIN CAPITAL LETTER TURNED M]
                  '1D0D', # ᴍ  [LATIN LETTER SMALL CAPITAL M]
                  '1E3E', # Ḿ  [LATIN CAPITAL LETTER M WITH ACUTE]
                  '1E40', # Ṁ  [LATIN CAPITAL LETTER M WITH DOT ABOVE]
                  '1E42', # Ṃ  [LATIN CAPITAL LETTER M WITH DOT BELOW]
                  '24C2', # Ⓜ  [CIRCLED LATIN CAPITAL LETTER M]
                  '2C6E', # Ɱ  [LATIN CAPITAL LETTER M WITH HOOK]
                  'A7FD', # ꟽ  [LATIN EPIGRAPHIC LETTER INVERTED M]
                  'A7FF', # ꟿ  [LATIN EPIGRAPHIC LETTER ARCHAIC M]
                  'FF2D'  # Ｍ  [FULLWIDTH LATIN CAPITAL LETTER M]
          ] => 'M',
          [

                  '026F', # ɯ  [LATIN SMALL LETTER TURNED M]
                  '0270', # ɰ  [LATIN SMALL LETTER TURNED M WITH LONG LEG]
                  '0271', # ɱ  [LATIN SMALL LETTER M WITH HOOK]
                  '1D6F', # ᵯ  [LATIN SMALL LETTER M WITH MIDDLE TILDE]
                  '1D86', # ᶆ  [LATIN SMALL LETTER M WITH PALATAL HOOK]
                  '1E3F', # ḿ  [LATIN SMALL LETTER M WITH ACUTE]
                  '1E41', # ṁ  [LATIN SMALL LETTER M WITH DOT ABOVE]
                  '1E43', # ṃ  [LATIN SMALL LETTER M WITH DOT BELOW]
                  '24DC', # ⓜ  [CIRCLED LATIN SMALL LETTER M]
                  'FF4D'  # ｍ  [FULLWIDTH LATIN SMALL LETTER M]
          ] => 'm',
          [

                  '24A8'  # ⒨  [PARENTHESIZED LATIN SMALL LETTER M]
          ] => '(m)',
          [

                  '00D1', # Ñ  [LATIN CAPITAL LETTER N WITH TILDE]
                  '0143', # Ń  [LATIN CAPITAL LETTER N WITH ACUTE]
                  '0145', # Ņ  [LATIN CAPITAL LETTER N WITH CEDILLA]
                  '0147', # Ň  [LATIN CAPITAL LETTER N WITH CARON]
                  '014A', # Ŋ  http://en.wikipedia.org/wiki/Eng_(letter)  [LATIN CAPITAL LETTER ENG]
                  '019D', # Ɲ  [LATIN CAPITAL LETTER N WITH LEFT HOOK]
                  '01F8', # Ǹ  [LATIN CAPITAL LETTER N WITH GRAVE]
                  '0220', # Ƞ  [LATIN CAPITAL LETTER N WITH LONG RIGHT LEG]
                  '0274', # ɴ  [LATIN LETTER SMALL CAPITAL N]
                  '1D0E', # ᴎ  [LATIN LETTER SMALL CAPITAL REVERSED N]
                  '1E44', # Ṅ  [LATIN CAPITAL LETTER N WITH DOT ABOVE]
                  '1E46', # Ṇ  [LATIN CAPITAL LETTER N WITH DOT BELOW]
                  '1E48', # Ṉ  [LATIN CAPITAL LETTER N WITH LINE BELOW]
                  '1E4A', # Ṋ  [LATIN CAPITAL LETTER N WITH CIRCUMFLEX BELOW]
                  '24C3', # Ⓝ  [CIRCLED LATIN CAPITAL LETTER N]
                  'FF2E'  # Ｎ  [FULLWIDTH LATIN CAPITAL LETTER N]
          ] => 'N',
          [

                  '00F1', # ñ  [LATIN SMALL LETTER N WITH TILDE]
                  '0144', # ń  [LATIN SMALL LETTER N WITH ACUTE]
                  '0146', # ņ  [LATIN SMALL LETTER N WITH CEDILLA]
                  '0148', # ň  [LATIN SMALL LETTER N WITH CARON]
                  '0149', # ŉ  [LATIN SMALL LETTER N PRECEDED BY APOSTROPHE]
                  '014B', # ŋ  http://en.wikipedia.org/wiki/Eng_(letter)  [LATIN SMALL LETTER ENG]
                  '019E', # ƞ  [LATIN SMALL LETTER N WITH LONG RIGHT LEG]
                  '01F9', # ǹ  [LATIN SMALL LETTER N WITH GRAVE]
                  '0235', # ȵ  [LATIN SMALL LETTER N WITH CURL]
                  '0272', # ɲ  [LATIN SMALL LETTER N WITH LEFT HOOK]
                  '0273', # ɳ  [LATIN SMALL LETTER N WITH RETROFLEX HOOK]
                  '1D70', # ᵰ  [LATIN SMALL LETTER N WITH MIDDLE TILDE]
                  '1D87', # ᶇ  [LATIN SMALL LETTER N WITH PALATAL HOOK]
                  '1E45', # ṅ  [LATIN SMALL LETTER N WITH DOT ABOVE]
                  '1E47', # ṇ  [LATIN SMALL LETTER N WITH DOT BELOW]
                  '1E49', # ṉ  [LATIN SMALL LETTER N WITH LINE BELOW]
                  '1E4B', # ṋ  [LATIN SMALL LETTER N WITH CIRCUMFLEX BELOW]
                  '207F', # ⁿ  [SUPERSCRIPT LATIN SMALL LETTER N]
                  '24DD', # ⓝ  [CIRCLED LATIN SMALL LETTER N]
                  'FF4E'  # ｎ  [FULLWIDTH LATIN SMALL LETTER N]
          ] => 'n',
          [

                  '01CA'  # Ǌ  [LATIN CAPITAL LETTER NJ]
          ] => 'NJ',
          [

                  '01CB'  # ǋ  [LATIN CAPITAL LETTER N WITH SMALL LETTER J]
          ] => 'Nj',
          [

                  '24A9'  # ⒩  [PARENTHESIZED LATIN SMALL LETTER N]
          ] => '(n)',
          [

                  '01CC'  # ǌ  [LATIN SMALL LETTER NJ]
          ] => 'nj',
          [

                  '00D2', # Ò  [LATIN CAPITAL LETTER O WITH GRAVE]
                  '00D3', # Ó  [LATIN CAPITAL LETTER O WITH ACUTE]
                  '00D4', # Ô  [LATIN CAPITAL LETTER O WITH CIRCUMFLEX]
                  '00D5', # Õ  [LATIN CAPITAL LETTER O WITH TILDE]
                  '00D6', # Ö  [LATIN CAPITAL LETTER O WITH DIAERESIS]
                  '00D8', # Ø  [LATIN CAPITAL LETTER O WITH STROKE]
                  '014C', # Ō  [LATIN CAPITAL LETTER O WITH MACRON]
                  '014E', # Ŏ  [LATIN CAPITAL LETTER O WITH BREVE]
                  '0150', # Ő  [LATIN CAPITAL LETTER O WITH DOUBLE ACUTE]
                  '0186', # Ɔ  [LATIN CAPITAL LETTER OPEN O]
                  '019F', # Ɵ  [LATIN CAPITAL LETTER O WITH MIDDLE TILDE]
                  '01A0', # Ơ  [LATIN CAPITAL LETTER O WITH HORN]
                  '01D1', # Ǒ  [LATIN CAPITAL LETTER O WITH CARON]
                  '01EA', # Ǫ  [LATIN CAPITAL LETTER O WITH OGONEK]
                  '01EC', # Ǭ  [LATIN CAPITAL LETTER O WITH OGONEK AND MACRON]
                  '01FE', # Ǿ  [LATIN CAPITAL LETTER O WITH STROKE AND ACUTE]
                  '020C', # Ȍ  [LATIN CAPITAL LETTER O WITH DOUBLE GRAVE]
                  '020E', # Ȏ  [LATIN CAPITAL LETTER O WITH INVERTED BREVE]
                  '022A', # Ȫ  [LATIN CAPITAL LETTER O WITH DIAERESIS AND MACRON]
                  '022C', # Ȭ  [LATIN CAPITAL LETTER O WITH TILDE AND MACRON]
                  '022E', # Ȯ  [LATIN CAPITAL LETTER O WITH DOT ABOVE]
                  '0230', # Ȱ  [LATIN CAPITAL LETTER O WITH DOT ABOVE AND MACRON]
                  '1D0F', # ᴏ  [LATIN LETTER SMALL CAPITAL O]
                  '1D10', # ᴐ  [LATIN LETTER SMALL CAPITAL OPEN O]
                  '1E4C', # Ṍ  [LATIN CAPITAL LETTER O WITH TILDE AND ACUTE]
                  '1E4E', # Ṏ  [LATIN CAPITAL LETTER O WITH TILDE AND DIAERESIS]
                  '1E50', # Ṑ  [LATIN CAPITAL LETTER O WITH MACRON AND GRAVE]
                  '1E52', # Ṓ  [LATIN CAPITAL LETTER O WITH MACRON AND ACUTE]
                  '1ECC', # Ọ  [LATIN CAPITAL LETTER O WITH DOT BELOW]
                  '1ECE', # Ỏ  [LATIN CAPITAL LETTER O WITH HOOK ABOVE]
                  '1ED0', # Ố  [LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND ACUTE]
                  '1ED2', # Ồ  [LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND GRAVE]
                  '1ED4', # Ổ  [LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE]
                  '1ED6', # Ỗ  [LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND TILDE]
                  '1ED8', # Ộ  [LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND DOT BELOW]
                  '1EDA', # Ớ  [LATIN CAPITAL LETTER O WITH HORN AND ACUTE]
                  '1EDC', # Ờ  [LATIN CAPITAL LETTER O WITH HORN AND GRAVE]
                  '1EDE', # Ở  [LATIN CAPITAL LETTER O WITH HORN AND HOOK ABOVE]
                  '1EE0', # Ỡ  [LATIN CAPITAL LETTER O WITH HORN AND TILDE]
                  '1EE2', # Ợ  [LATIN CAPITAL LETTER O WITH HORN AND DOT BELOW]
                  '24C4', # Ⓞ  [CIRCLED LATIN CAPITAL LETTER O]
                  'A74A', # Ꝋ  [LATIN CAPITAL LETTER O WITH LONG STROKE OVERLAY]
                  'A74C', # Ꝍ  [LATIN CAPITAL LETTER O WITH LOOP]
                  'FF2F'  # Ｏ  [FULLWIDTH LATIN CAPITAL LETTER O]
          ] => 'O',
          [

                  '00F2', # ò  [LATIN SMALL LETTER O WITH GRAVE]
                  '00F3', # ó  [LATIN SMALL LETTER O WITH ACUTE]
                  '00F4', # ô  [LATIN SMALL LETTER O WITH CIRCUMFLEX]
                  '00F5', # õ  [LATIN SMALL LETTER O WITH TILDE]
                  '00F6', # ö  [LATIN SMALL LETTER O WITH DIAERESIS]
                  '00F8', # ø  [LATIN SMALL LETTER O WITH STROKE]
                  '014D', # ō  [LATIN SMALL LETTER O WITH MACRON]
                  '014F', # ŏ  [LATIN SMALL LETTER O WITH BREVE]
                  '0151', # ő  [LATIN SMALL LETTER O WITH DOUBLE ACUTE]
                  '01A1', # ơ  [LATIN SMALL LETTER O WITH HORN]
                  '01D2', # ǒ  [LATIN SMALL LETTER O WITH CARON]
                  '01EB', # ǫ  [LATIN SMALL LETTER O WITH OGONEK]
                  '01ED', # ǭ  [LATIN SMALL LETTER O WITH OGONEK AND MACRON]
                  '01FF', # ǿ  [LATIN SMALL LETTER O WITH STROKE AND ACUTE]
                  '020D', # ȍ  [LATIN SMALL LETTER O WITH DOUBLE GRAVE]
                  '020F', # ȏ  [LATIN SMALL LETTER O WITH INVERTED BREVE]
                  '022B', # ȫ  [LATIN SMALL LETTER O WITH DIAERESIS AND MACRON]
                  '022D', # ȭ  [LATIN SMALL LETTER O WITH TILDE AND MACRON]
                  '022F', # ȯ  [LATIN SMALL LETTER O WITH DOT ABOVE]
                  '0231', # ȱ  [LATIN SMALL LETTER O WITH DOT ABOVE AND MACRON]
                  '0254', # ɔ  [LATIN SMALL LETTER OPEN O]
                  '0275', # ɵ  [LATIN SMALL LETTER BARRED O]
                  '1D16', # ᴖ  [LATIN SMALL LETTER TOP HALF O]
                  '1D17', # ᴗ  [LATIN SMALL LETTER BOTTOM HALF O]
                  '1D97', # ᶗ  [LATIN SMALL LETTER OPEN O WITH RETROFLEX HOOK]
                  '1E4D', # ṍ  [LATIN SMALL LETTER O WITH TILDE AND ACUTE]
                  '1E4F', # ṏ  [LATIN SMALL LETTER O WITH TILDE AND DIAERESIS]
                  '1E51', # ṑ  [LATIN SMALL LETTER O WITH MACRON AND GRAVE]
                  '1E53', # ṓ  [LATIN SMALL LETTER O WITH MACRON AND ACUTE]
                  '1ECD', # ọ  [LATIN SMALL LETTER O WITH DOT BELOW]
                  '1ECF', # ỏ  [LATIN SMALL LETTER O WITH HOOK ABOVE]
                  '1ED1', # ố  [LATIN SMALL LETTER O WITH CIRCUMFLEX AND ACUTE]
                  '1ED3', # ồ  [LATIN SMALL LETTER O WITH CIRCUMFLEX AND GRAVE]
                  '1ED5', # ổ  [LATIN SMALL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE]
                  '1ED7', # ỗ  [LATIN SMALL LETTER O WITH CIRCUMFLEX AND TILDE]
                  '1ED9', # ộ  [LATIN SMALL LETTER O WITH CIRCUMFLEX AND DOT BELOW]
                  '1EDB', # ớ  [LATIN SMALL LETTER O WITH HORN AND ACUTE]
                  '1EDD', # ờ  [LATIN SMALL LETTER O WITH HORN AND GRAVE]
                  '1EDF', # ở  [LATIN SMALL LETTER O WITH HORN AND HOOK ABOVE]
                  '1EE1', # ỡ  [LATIN SMALL LETTER O WITH HORN AND TILDE]
                  '1EE3', # ợ  [LATIN SMALL LETTER O WITH HORN AND DOT BELOW]
                  '2092', # ₒ  [LATIN SUBSCRIPT SMALL LETTER O]
                  '24DE', # ⓞ  [CIRCLED LATIN SMALL LETTER O]
                  '2C7A', # ⱺ  [LATIN SMALL LETTER O WITH LOW RING INSIDE]
                  'A74B', # ꝋ  [LATIN SMALL LETTER O WITH LONG STROKE OVERLAY]
                  'A74D', # ꝍ  [LATIN SMALL LETTER O WITH LOOP]
                  'FF4F'  # ｏ  [FULLWIDTH LATIN SMALL LETTER O]
          ] => 'o',
          [

                  '0152', # Œ  [LATIN CAPITAL LIGATURE OE]
                  '0276'  # ɶ  [LATIN LETTER SMALL CAPITAL OE]
          ] => 'OE',
          [

                  'A74E'  # Ꝏ  [LATIN CAPITAL LETTER OO]
          ] => 'OO',
          [

                  '0222', # Ȣ  http://en.wikipedia.org/wiki/OU  [LATIN CAPITAL LETTER OU]
                  '1D15'  # ᴕ  [LATIN LETTER SMALL CAPITAL OU]
          ] => 'OU',
          [

                  '24AA'  # ⒪  [PARENTHESIZED LATIN SMALL LETTER O]
          ] => '(o)',
          [

                  '0153', # œ  [LATIN SMALL LIGATURE OE]
                  '1D14'  # ᴔ  [LATIN SMALL LETTER TURNED OE]
          ] => 'oe',
          [

                  'A74F'  # ꝏ  [LATIN SMALL LETTER OO]
          ] => 'oo',
          [

                  '0223'  # ȣ  http://en.wikipedia.org/wiki/OU  [LATIN SMALL LETTER OU]
          ] => 'ou',
          [

                  '01A4', # Ƥ  [LATIN CAPITAL LETTER P WITH HOOK]
                  '1D18', # ᴘ  [LATIN LETTER SMALL CAPITAL P]
                  '1E54', # Ṕ  [LATIN CAPITAL LETTER P WITH ACUTE]
                  '1E56', # Ṗ  [LATIN CAPITAL LETTER P WITH DOT ABOVE]
                  '24C5', # Ⓟ  [CIRCLED LATIN CAPITAL LETTER P]
                  '2C63', # Ᵽ  [LATIN CAPITAL LETTER P WITH STROKE]
                  'A750', # Ꝑ  [LATIN CAPITAL LETTER P WITH STROKE THROUGH DESCENDER]
                  'A752', # Ꝓ  [LATIN CAPITAL LETTER P WITH FLOURISH]
                  'A754', # Ꝕ  [LATIN CAPITAL LETTER P WITH SQUIRREL TAIL]
                  'FF30'  # Ｐ  [FULLWIDTH LATIN CAPITAL LETTER P]
          ] => 'P',
          [

                  '01A5', # ƥ  [LATIN SMALL LETTER P WITH HOOK]
                  '1D71', # ᵱ  [LATIN SMALL LETTER P WITH MIDDLE TILDE]
                  '1D7D', # ᵽ  [LATIN SMALL LETTER P WITH STROKE]
                  '1D88', # ᶈ  [LATIN SMALL LETTER P WITH PALATAL HOOK]
                  '1E55', # ṕ  [LATIN SMALL LETTER P WITH ACUTE]
                  '1E57', # ṗ  [LATIN SMALL LETTER P WITH DOT ABOVE]
                  '24DF', # ⓟ  [CIRCLED LATIN SMALL LETTER P]
                  'A751', # ꝑ  [LATIN SMALL LETTER P WITH STROKE THROUGH DESCENDER]
                  'A753', # ꝓ  [LATIN SMALL LETTER P WITH FLOURISH]
                  'A755', # ꝕ  [LATIN SMALL LETTER P WITH SQUIRREL TAIL]
                  'A7FC', # ꟼ  [LATIN EPIGRAPHIC LETTER REVERSED P]
                  'FF50'  # ｐ  [FULLWIDTH LATIN SMALL LETTER P]
          ] => 'p',
          [

                  '24AB'  # ⒫  [PARENTHESIZED LATIN SMALL LETTER P]
          ] => '(p)',
          [

                  '024A', # Ɋ  [LATIN CAPITAL LETTER SMALL Q WITH HOOK TAIL]
                  '24C6', # Ⓠ  [CIRCLED LATIN CAPITAL LETTER Q]
                  'A756', # Ꝗ  [LATIN CAPITAL LETTER Q WITH STROKE THROUGH DESCENDER]
                  'A758', # Ꝙ  [LATIN CAPITAL LETTER Q WITH DIAGONAL STROKE]
                  'FF31'  # Ｑ  [FULLWIDTH LATIN CAPITAL LETTER Q]
          ] => 'Q',
          [

                  '0138', # ĸ  http://en.wikipedia.org/wiki/Kra_(letter)  [LATIN SMALL LETTER KRA]
                  '024B', # ɋ  [LATIN SMALL LETTER Q WITH HOOK TAIL]
                  '02A0', # ʠ  [LATIN SMALL LETTER Q WITH HOOK]
                  '24E0', # ⓠ  [CIRCLED LATIN SMALL LETTER Q]
                  'A757', # ꝗ  [LATIN SMALL LETTER Q WITH STROKE THROUGH DESCENDER]
                  'A759', # ꝙ  [LATIN SMALL LETTER Q WITH DIAGONAL STROKE]
                  'FF51'  # ｑ  [FULLWIDTH LATIN SMALL LETTER Q]
          ] => 'q',
          [

                  '24AC'  # ⒬  [PARENTHESIZED LATIN SMALL LETTER Q]
          ] => '(q)',
          [

                  '0239'  # ȹ  [LATIN SMALL LETTER QP DIGRAPH]
          ] => 'qp',
          [

                  '0154', # Ŕ  [LATIN CAPITAL LETTER R WITH ACUTE]
                  '0156', # Ŗ  [LATIN CAPITAL LETTER R WITH CEDILLA]
                  '0158', # Ř  [LATIN CAPITAL LETTER R WITH CARON]
                  '0210', # Ȓ  [LATIN CAPITAL LETTER R WITH DOUBLE GRAVE]
                  '0212', # Ȓ  [LATIN CAPITAL LETTER R WITH INVERTED BREVE]
                  '024C', # Ɍ  [LATIN CAPITAL LETTER R WITH STROKE]
                  '0280', # ʀ  [LATIN LETTER SMALL CAPITAL R]
                  '0281', # ʁ  [LATIN LETTER SMALL CAPITAL INVERTED R]
                  '1D19', # ᴙ  [LATIN LETTER SMALL CAPITAL REVERSED R]
                  '1D1A', # ᴚ  [LATIN LETTER SMALL CAPITAL TURNED R]
                  '1E58', # Ṙ  [LATIN CAPITAL LETTER R WITH DOT ABOVE]
                  '1E5A', # Ṛ  [LATIN CAPITAL LETTER R WITH DOT BELOW]
                  '1E5C', # Ṝ  [LATIN CAPITAL LETTER R WITH DOT BELOW AND MACRON]
                  '1E5E', # Ṟ  [LATIN CAPITAL LETTER R WITH LINE BELOW]
                  '24C7', # Ⓡ  [CIRCLED LATIN CAPITAL LETTER R]
                  '2C64', # Ɽ  [LATIN CAPITAL LETTER R WITH TAIL]
                  'A75A', # Ꝛ  [LATIN CAPITAL LETTER R ROTUNDA]
                  'A782', # Ꞃ  [LATIN CAPITAL LETTER INSULAR R]
                  'FF32' # Ｒ  [FULLWIDTH LATIN CAPITAL LETTER R]
          ] => 'R',
          [

                  '0155', # ŕ  [LATIN SMALL LETTER R WITH ACUTE]
                  '0157', # ŗ  [LATIN SMALL LETTER R WITH CEDILLA]
                  '0159', # ř  [LATIN SMALL LETTER R WITH CARON]
                  '0211', # ȑ  [LATIN SMALL LETTER R WITH DOUBLE GRAVE]
                  '0213', # ȓ  [LATIN SMALL LETTER R WITH INVERTED BREVE]
                  '024D', # ɍ  [LATIN SMALL LETTER R WITH STROKE]
                  '027C', # ɼ  [LATIN SMALL LETTER R WITH LONG LEG]
                  '027D', # ɽ  [LATIN SMALL LETTER R WITH TAIL]
                  '027E', # ɾ  [LATIN SMALL LETTER R WITH FISHHOOK]
                  '027F', # ɿ  [LATIN SMALL LETTER REVERSED R WITH FISHHOOK]
                  '1D63', # ᵣ  [LATIN SUBSCRIPT SMALL LETTER R]
                  '1D72', # ᵲ  [LATIN SMALL LETTER R WITH MIDDLE TILDE]
                  '1D73', # ᵳ  [LATIN SMALL LETTER R WITH FISHHOOK AND MIDDLE TILDE]
                  '1D89', # ᶉ  [LATIN SMALL LETTER R WITH PALATAL HOOK]
                  '1E59', # ṙ  [LATIN SMALL LETTER R WITH DOT ABOVE]
                  '1E5B', # ṛ  [LATIN SMALL LETTER R WITH DOT BELOW]
                  '1E5D', # ṝ  [LATIN SMALL LETTER R WITH DOT BELOW AND MACRON]
                  '1E5F', # ṟ  [LATIN SMALL LETTER R WITH LINE BELOW]
                  '24E1', # ⓡ  [CIRCLED LATIN SMALL LETTER R]
                  'A75B', # ꝛ  [LATIN SMALL LETTER R ROTUNDA]
                  'A783', # ꞃ  [LATIN SMALL LETTER INSULAR R]
                  'FF52'  # ｒ  [FULLWIDTH LATIN SMALL LETTER R]
          ] => 'r',
          [

                  '24AD'  # ⒭  [PARENTHESIZED LATIN SMALL LETTER R]
          ] => '(r)',
          [

                  '015A', # Ś  [LATIN CAPITAL LETTER S WITH ACUTE]
                  '015C', # Ŝ  [LATIN CAPITAL LETTER S WITH CIRCUMFLEX]
                  '015E', # Ş  [LATIN CAPITAL LETTER S WITH CEDILLA]
                  '0160', # Š  [LATIN CAPITAL LETTER S WITH CARON]
                  '0218', # Ș  [LATIN CAPITAL LETTER S WITH COMMA BELOW]
                  '1E60', # Ṡ  [LATIN CAPITAL LETTER S WITH DOT ABOVE]
                  '1E62', # Ṣ  [LATIN CAPITAL LETTER S WITH DOT BELOW]
                  '1E64', # Ṥ  [LATIN CAPITAL LETTER S WITH ACUTE AND DOT ABOVE]
                  '1E66', # Ṧ  [LATIN CAPITAL LETTER S WITH CARON AND DOT ABOVE]
                  '1E68', # Ṩ  [LATIN CAPITAL LETTER S WITH DOT BELOW AND DOT ABOVE]
                  '24C8', # Ⓢ  [CIRCLED LATIN CAPITAL LETTER S]
                  'A731', # ꜱ  [LATIN LETTER SMALL CAPITAL S]
                  'A785', # ꞅ  [LATIN SMALL LETTER INSULAR S]
                  'FF33'  # Ｓ  [FULLWIDTH LATIN CAPITAL LETTER S]
          ] => 'S',
          [

                  '015B', # ś  [LATIN SMALL LETTER S WITH ACUTE]
                  '015D', # ŝ  [LATIN SMALL LETTER S WITH CIRCUMFLEX]
                  '015F', # ş  [LATIN SMALL LETTER S WITH CEDILLA]
                  '0161', # š  [LATIN SMALL LETTER S WITH CARON]
                  '017F', # ſ  http://en.wikipedia.org/wiki/Long_S  [LATIN SMALL LETTER LONG S]
                  '0219', # ș  [LATIN SMALL LETTER S WITH COMMA BELOW]
                  '023F', # ȿ  [LATIN SMALL LETTER S WITH SWASH TAIL]
                  '0282', # ʂ  [LATIN SMALL LETTER S WITH HOOK]
                  '1D74', # ᵴ  [LATIN SMALL LETTER S WITH MIDDLE TILDE]
                  '1D8A', # ᶊ  [LATIN SMALL LETTER S WITH PALATAL HOOK]
                  '1E61', # ṡ  [LATIN SMALL LETTER S WITH DOT ABOVE]
                  '1E63', # ṣ  [LATIN SMALL LETTER S WITH DOT BELOW]
                  '1E65', # ṥ  [LATIN SMALL LETTER S WITH ACUTE AND DOT ABOVE]
                  '1E67', # ṧ  [LATIN SMALL LETTER S WITH CARON AND DOT ABOVE]
                  '1E69', # ṩ  [LATIN SMALL LETTER S WITH DOT BELOW AND DOT ABOVE]
                  '1E9C', # ẜ  [LATIN SMALL LETTER LONG S WITH DIAGONAL STROKE]
                  '1E9D', # ẝ  [LATIN SMALL LETTER LONG S WITH HIGH STROKE]
                  '24E2', # ⓢ  [CIRCLED LATIN SMALL LETTER S]
                  'A784', # Ꞅ  [LATIN CAPITAL LETTER INSULAR S]
                  'FF53'  # ｓ  [FULLWIDTH LATIN SMALL LETTER S]
          ] => 's',
          [

                  '1E9E'  # ẞ  [LATIN CAPITAL LETTER SHARP S]
          ] => 'SS',
          [

                  '24AE'  # ⒮  [PARENTHESIZED LATIN SMALL LETTER S]
          ] => '(s)',
          [

                  '00DF'  # ß  [LATIN SMALL LETTER SHARP S]
          ] => 'ss',
          [

                  'FB06'  # ﬆ  [LATIN SMALL LIGATURE ST]
          ] => 'st',
          [

                  '0162', # Ţ  [LATIN CAPITAL LETTER T WITH CEDILLA]
                  '0164', # Ť  [LATIN CAPITAL LETTER T WITH CARON]
                  '0166', # Ŧ  [LATIN CAPITAL LETTER T WITH STROKE]
                  '01AC', # Ƭ  [LATIN CAPITAL LETTER T WITH HOOK]
                  '01AE', # Ʈ  [LATIN CAPITAL LETTER T WITH RETROFLEX HOOK]
                  '021A', # Ț  [LATIN CAPITAL LETTER T WITH COMMA BELOW]
                  '023E', # Ⱦ  [LATIN CAPITAL LETTER T WITH DIAGONAL STROKE]
                  '1D1B', # ᴛ  [LATIN LETTER SMALL CAPITAL T]
                  '1E6A', # Ṫ  [LATIN CAPITAL LETTER T WITH DOT ABOVE]
                  '1E6C', # Ṭ  [LATIN CAPITAL LETTER T WITH DOT BELOW]
                  '1E6E', # Ṯ  [LATIN CAPITAL LETTER T WITH LINE BELOW]
                  '1E70', # Ṱ  [LATIN CAPITAL LETTER T WITH CIRCUMFLEX BELOW]
                  '24C9', # Ⓣ  [CIRCLED LATIN CAPITAL LETTER T]
                  'A786', # Ꞇ  [LATIN CAPITAL LETTER INSULAR T]
                  'FF34'  # Ｔ  [FULLWIDTH LATIN CAPITAL LETTER T]
          ] => 'T',
          [

                  '0163', # ţ  [LATIN SMALL LETTER T WITH CEDILLA]
                  '0165', # ť  [LATIN SMALL LETTER T WITH CARON]
                  '0167', # ŧ  [LATIN SMALL LETTER T WITH STROKE]
                  '01AB', # ƫ  [LATIN SMALL LETTER T WITH PALATAL HOOK]
                  '01AD', # ƭ  [LATIN SMALL LETTER T WITH HOOK]
                  '021B', # ț  [LATIN SMALL LETTER T WITH COMMA BELOW]
                  '0236', # ȶ  [LATIN SMALL LETTER T WITH CURL]
                  '0287', # ʇ  [LATIN SMALL LETTER TURNED T]
                  '0288', # ʈ  [LATIN SMALL LETTER T WITH RETROFLEX HOOK]
                  '1D75', # ᵵ  [LATIN SMALL LETTER T WITH MIDDLE TILDE]
                  '1E6B', # ṫ  [LATIN SMALL LETTER T WITH DOT ABOVE]
                  '1E6D', # ṭ  [LATIN SMALL LETTER T WITH DOT BELOW]
                  '1E6F', # ṯ  [LATIN SMALL LETTER T WITH LINE BELOW]
                  '1E71', # ṱ  [LATIN SMALL LETTER T WITH CIRCUMFLEX BELOW]
                  '1E97', # ẗ  [LATIN SMALL LETTER T WITH DIAERESIS]
                  '24E3', # ⓣ  [CIRCLED LATIN SMALL LETTER T]
                  '2C66', # ⱦ  [LATIN SMALL LETTER T WITH DIAGONAL STROKE]
                  'FF54'  # ｔ  [FULLWIDTH LATIN SMALL LETTER T]
          ] => 't',
          [

                  '00DE', # Þ  [LATIN CAPITAL LETTER THORN]
                  'A766'  # Ꝧ  [LATIN CAPITAL LETTER THORN WITH STROKE THROUGH DESCENDER]
          ] => 'TH',
          [

                  'A728'  # Ꜩ  [LATIN CAPITAL LETTER TZ]
          ] => 'TZ',
          [

                  '24AF'  # ⒯  [PARENTHESIZED LATIN SMALL LETTER T]
          ] => '(t)',
          [

                  '02A8'  # ʨ  [LATIN SMALL LETTER TC DIGRAPH WITH CURL]
          ] => 'tc',
          [

                  '00FE', # þ  [LATIN SMALL LETTER THORN]
                  '1D7A', # ᵺ  [LATIN SMALL LETTER TH WITH STRIKETHROUGH]
                  'A767'  # ꝧ  [LATIN SMALL LETTER THORN WITH STROKE THROUGH DESCENDER]
          ] => 'th',
          [

                  '02A6'  # ʦ  [LATIN SMALL LETTER TS DIGRAPH]
          ] => 'ts',
          [

                  'A729'  # ꜩ  [LATIN SMALL LETTER TZ]
          ] => 'tz',
          [

                  '00D9', # Ù  [LATIN CAPITAL LETTER U WITH GRAVE]
                  '00DA', # Ú  [LATIN CAPITAL LETTER U WITH ACUTE]
                  '00DB', # Û  [LATIN CAPITAL LETTER U WITH CIRCUMFLEX]
                  '00DC', # Ü  [LATIN CAPITAL LETTER U WITH DIAERESIS]
                  '0168', # Ũ  [LATIN CAPITAL LETTER U WITH TILDE]
                  '016A', # Ū  [LATIN CAPITAL LETTER U WITH MACRON]
                  '016C', # Ŭ  [LATIN CAPITAL LETTER U WITH BREVE]
                  '016E', # Ů  [LATIN CAPITAL LETTER U WITH RING ABOVE]
                  '0170', # Ű  [LATIN CAPITAL LETTER U WITH DOUBLE ACUTE]
                  '0172', # Ų  [LATIN CAPITAL LETTER U WITH OGONEK]
                  '01AF', # Ư  [LATIN CAPITAL LETTER U WITH HORN]
                  '01D3', # Ǔ  [LATIN CAPITAL LETTER U WITH CARON]
                  '01D5', # Ǖ  [LATIN CAPITAL LETTER U WITH DIAERESIS AND MACRON]
                  '01D7', # Ǘ  [LATIN CAPITAL LETTER U WITH DIAERESIS AND ACUTE]
                  '01D9', # Ǚ  [LATIN CAPITAL LETTER U WITH DIAERESIS AND CARON]
                  '01DB', # Ǜ  [LATIN CAPITAL LETTER U WITH DIAERESIS AND GRAVE]
                  '0214', # Ȕ  [LATIN CAPITAL LETTER U WITH DOUBLE GRAVE]
                  '0216', # Ȗ  [LATIN CAPITAL LETTER U WITH INVERTED BREVE]
                  '0244', # Ʉ  [LATIN CAPITAL LETTER U BAR]
                  '1D1C', # ᴜ  [LATIN LETTER SMALL CAPITAL U]
                  '1D7E', # ᵾ  [LATIN SMALL CAPITAL LETTER U WITH STROKE]
                  '1E72', # Ṳ  [LATIN CAPITAL LETTER U WITH DIAERESIS BELOW]
                  '1E74', # Ṵ  [LATIN CAPITAL LETTER U WITH TILDE BELOW]
                  '1E76', # Ṷ  [LATIN CAPITAL LETTER U WITH CIRCUMFLEX BELOW]
                  '1E78', # Ṹ  [LATIN CAPITAL LETTER U WITH TILDE AND ACUTE]
                  '1E7A', # Ṻ  [LATIN CAPITAL LETTER U WITH MACRON AND DIAERESIS]
                  '1EE4', # Ụ  [LATIN CAPITAL LETTER U WITH DOT BELOW]
                  '1EE6', # Ủ  [LATIN CAPITAL LETTER U WITH HOOK ABOVE]
                  '1EE8', # Ứ  [LATIN CAPITAL LETTER U WITH HORN AND ACUTE]
                  '1EEA', # Ừ  [LATIN CAPITAL LETTER U WITH HORN AND GRAVE]
                  '1EEC', # Ử  [LATIN CAPITAL LETTER U WITH HORN AND HOOK ABOVE]
                  '1EEE', # Ữ  [LATIN CAPITAL LETTER U WITH HORN AND TILDE]
                  '1EF0', # Ự  [LATIN CAPITAL LETTER U WITH HORN AND DOT BELOW]
                  '24CA', # Ⓤ  [CIRCLED LATIN CAPITAL LETTER U]
                  'FF35'  # Ｕ  [FULLWIDTH LATIN CAPITAL LETTER U]
          ] => 'U',
          [

                  '00F9', # ù  [LATIN SMALL LETTER U WITH GRAVE]
                  '00FA', # ú  [LATIN SMALL LETTER U WITH ACUTE]
                  '00FB', # û  [LATIN SMALL LETTER U WITH CIRCUMFLEX]
                  '00FC', # ü  [LATIN SMALL LETTER U WITH DIAERESIS]
                  '0169', # ũ  [LATIN SMALL LETTER U WITH TILDE]
                  '016B', # ū  [LATIN SMALL LETTER U WITH MACRON]
                  '016D', # ŭ  [LATIN SMALL LETTER U WITH BREVE]
                  '016F', # ů  [LATIN SMALL LETTER U WITH RING ABOVE]
                  '0171', # ű  [LATIN SMALL LETTER U WITH DOUBLE ACUTE]
                  '0173', # ų  [LATIN SMALL LETTER U WITH OGONEK]
                  '01B0', # ư  [LATIN SMALL LETTER U WITH HORN]
                  '01D4', # ǔ  [LATIN SMALL LETTER U WITH CARON]
                  '01D6', # ǖ  [LATIN SMALL LETTER U WITH DIAERESIS AND MACRON]
                  '01D8', # ǘ  [LATIN SMALL LETTER U WITH DIAERESIS AND ACUTE]
                  '01DA', # ǚ  [LATIN SMALL LETTER U WITH DIAERESIS AND CARON]
                  '01DC', # ǜ  [LATIN SMALL LETTER U WITH DIAERESIS AND GRAVE]
                  '0215', # ȕ  [LATIN SMALL LETTER U WITH DOUBLE GRAVE]
                  '0217', # ȗ  [LATIN SMALL LETTER U WITH INVERTED BREVE]
                  '0289', # ʉ  [LATIN SMALL LETTER U BAR]
                  '1D64', # ᵤ  [LATIN SUBSCRIPT SMALL LETTER U]
                  '1D99', # ᶙ  [LATIN SMALL LETTER U WITH RETROFLEX HOOK]
                  '1E73', # ṳ  [LATIN SMALL LETTER U WITH DIAERESIS BELOW]
                  '1E75', # ṵ  [LATIN SMALL LETTER U WITH TILDE BELOW]
                  '1E77', # ṷ  [LATIN SMALL LETTER U WITH CIRCUMFLEX BELOW]
                  '1E79', # ṹ  [LATIN SMALL LETTER U WITH TILDE AND ACUTE]
                  '1E7B', # ṻ  [LATIN SMALL LETTER U WITH MACRON AND DIAERESIS]
                  '1EE5', # ụ  [LATIN SMALL LETTER U WITH DOT BELOW]
                  '1EE7', # ủ  [LATIN SMALL LETTER U WITH HOOK ABOVE]
                  '1EE9', # ứ  [LATIN SMALL LETTER U WITH HORN AND ACUTE]
                  '1EEB', # ừ  [LATIN SMALL LETTER U WITH HORN AND GRAVE]
                  '1EED', # ử  [LATIN SMALL LETTER U WITH HORN AND HOOK ABOVE]
                  '1EEF', # ữ  [LATIN SMALL LETTER U WITH HORN AND TILDE]
                  '1EF1', # ự  [LATIN SMALL LETTER U WITH HORN AND DOT BELOW]
                  '24E4', # ⓤ  [CIRCLED LATIN SMALL LETTER U]
                  'FF55'  # ｕ  [FULLWIDTH LATIN SMALL LETTER U]
          ] => 'u',
          [

                  '24B0'  # ⒰  [PARENTHESIZED LATIN SMALL LETTER U]
          ] => '(u)',
          [

                  '1D6B'  # ᵫ  [LATIN SMALL LETTER UE]
          ] => 'ue',
          [

                  '01B2', # Ʋ  [LATIN CAPITAL LETTER V WITH HOOK]
                  '0245', # Ʌ  [LATIN CAPITAL LETTER TURNED V]
                  '1D20', # ᴠ  [LATIN LETTER SMALL CAPITAL V]
                  '1E7C', # Ṽ  [LATIN CAPITAL LETTER V WITH TILDE]
                  '1E7E', # Ṿ  [LATIN CAPITAL LETTER V WITH DOT BELOW]
                  '1EFC', # Ỽ  [LATIN CAPITAL LETTER MIDDLE-WELSH V]
                  '24CB', # Ⓥ  [CIRCLED LATIN CAPITAL LETTER V]
                  'A75E', # Ꝟ  [LATIN CAPITAL LETTER V WITH DIAGONAL STROKE]
                  'A768', # Ꝩ  [LATIN CAPITAL LETTER VEND]
                  'FF36'  # Ｖ  [FULLWIDTH LATIN CAPITAL LETTER V]
          ] => 'V',
          [

                  '028B', # ʋ  [LATIN SMALL LETTER V WITH HOOK]
                  '028C', # ʌ  [LATIN SMALL LETTER TURNED V]
                  '1D65', # ᵥ  [LATIN SUBSCRIPT SMALL LETTER V]
                  '1D8C', # ᶌ  [LATIN SMALL LETTER V WITH PALATAL HOOK]
                  '1E7D', # ṽ  [LATIN SMALL LETTER V WITH TILDE]
                  '1E7F', # ṿ  [LATIN SMALL LETTER V WITH DOT BELOW]
                  '24E5', # ⓥ  [CIRCLED LATIN SMALL LETTER V]
                  '2C71', # ⱱ  [LATIN SMALL LETTER V WITH RIGHT HOOK]
                  '2C74', # ⱴ  [LATIN SMALL LETTER V WITH CURL]
                  'A75F', # ꝟ  [LATIN SMALL LETTER V WITH DIAGONAL STROKE]
                  'FF56'  # ｖ  [FULLWIDTH LATIN SMALL LETTER V]
          ] => 'v',
          [

                  'A760'  # Ꝡ  [LATIN CAPITAL LETTER VY]
          ] => 'VY',
          [

                  '24B1'  # ⒱  [PARENTHESIZED LATIN SMALL LETTER V]
          ] => '(v)',
          [

                  'A761'  # ꝡ  [LATIN SMALL LETTER VY]
          ] => 'vy',
          [

                  '0174', # Ŵ  [LATIN CAPITAL LETTER W WITH CIRCUMFLEX]
                  '01F7', # Ƿ  http://en.wikipedia.org/wiki/Wynn  [LATIN CAPITAL LETTER WYNN]
                  '1D21', # ᴡ  [LATIN LETTER SMALL CAPITAL W]
                  '1E80', # Ẁ  [LATIN CAPITAL LETTER W WITH GRAVE]
                  '1E82', # Ẃ  [LATIN CAPITAL LETTER W WITH ACUTE]
                  '1E84', # Ẅ  [LATIN CAPITAL LETTER W WITH DIAERESIS]
                  '1E86', # Ẇ  [LATIN CAPITAL LETTER W WITH DOT ABOVE]
                  '1E88', # Ẉ  [LATIN CAPITAL LETTER W WITH DOT BELOW]
                  '24CC', # Ⓦ  [CIRCLED LATIN CAPITAL LETTER W]
                  '2C72', # Ⱳ  [LATIN CAPITAL LETTER W WITH HOOK]
                  'FF37'  # Ｗ  [FULLWIDTH LATIN CAPITAL LETTER W]
          ] => 'W',
          [

                  '0175', # ŵ  [LATIN SMALL LETTER W WITH CIRCUMFLEX]
                  '01BF', # ƿ  http://en.wikipedia.org/wiki/Wynn  [LATIN LETTER WYNN]
                  '028D', # ʍ  [LATIN SMALL LETTER TURNED W]
                  '1E81', # ẁ  [LATIN SMALL LETTER W WITH GRAVE]
                  '1E83', # ẃ  [LATIN SMALL LETTER W WITH ACUTE]
                  '1E85', # ẅ  [LATIN SMALL LETTER W WITH DIAERESIS]
                  '1E87', # ẇ  [LATIN SMALL LETTER W WITH DOT ABOVE]
                  '1E89', # ẉ  [LATIN SMALL LETTER W WITH DOT BELOW]
                  '1E98', # ẘ  [LATIN SMALL LETTER W WITH RING ABOVE]
                  '24E6', # ⓦ  [CIRCLED LATIN SMALL LETTER W]
                  '2C73', # ⱳ  [LATIN SMALL LETTER W WITH HOOK]
                  'FF57'  # ｗ  [FULLWIDTH LATIN SMALL LETTER W]
          ] => 'w',
          [

                  '24B2'  # ⒲  [PARENTHESIZED LATIN SMALL LETTER W]
          ] => '(w)',
          [

                  '1E8A', # Ẋ  [LATIN CAPITAL LETTER X WITH DOT ABOVE]
                  '1E8C', # Ẍ  [LATIN CAPITAL LETTER X WITH DIAERESIS]
                  '24CD', # Ⓧ  [CIRCLED LATIN CAPITAL LETTER X]
                  'FF38'  # Ｘ  [FULLWIDTH LATIN CAPITAL LETTER X]
          ] => 'X',
          [

                  '1D8D', # ᶍ  [LATIN SMALL LETTER X WITH PALATAL HOOK]
                  '1E8B', # ẋ  [LATIN SMALL LETTER X WITH DOT ABOVE]
                  '1E8D', # ẍ  [LATIN SMALL LETTER X WITH DIAERESIS]
                  '2093', # ₓ  [LATIN SUBSCRIPT SMALL LETTER X]
                  '24E7', # ⓧ  [CIRCLED LATIN SMALL LETTER X]
                  'FF58'  # ｘ  [FULLWIDTH LATIN SMALL LETTER X]
          ] => 'x',
          [

                  '24B3'  # ⒳  [PARENTHESIZED LATIN SMALL LETTER X]
          ] => '(x)',
          [

                  '00DD', # Ý  [LATIN CAPITAL LETTER Y WITH ACUTE]
                  '0176', # Ŷ  [LATIN CAPITAL LETTER Y WITH CIRCUMFLEX]
                  '0178', # Ÿ  [LATIN CAPITAL LETTER Y WITH DIAERESIS]
                  '01B3', # Ƴ  [LATIN CAPITAL LETTER Y WITH HOOK]
                  '0232', # Ȳ  [LATIN CAPITAL LETTER Y WITH MACRON]
                  '024E', # Ɏ  [LATIN CAPITAL LETTER Y WITH STROKE]
                  '028F', # ʏ  [LATIN LETTER SMALL CAPITAL Y]
                  '1E8E', # Ẏ  [LATIN CAPITAL LETTER Y WITH DOT ABOVE]
                  '1EF2', # Ỳ  [LATIN CAPITAL LETTER Y WITH GRAVE]
                  '1EF4', # Ỵ  [LATIN CAPITAL LETTER Y WITH DOT BELOW]
                  '1EF6', # Ỷ  [LATIN CAPITAL LETTER Y WITH HOOK ABOVE]
                  '1EF8', # Ỹ  [LATIN CAPITAL LETTER Y WITH TILDE]
                  '1EFE', # Ỿ  [LATIN CAPITAL LETTER Y WITH LOOP]
                  '24CE', # Ⓨ  [CIRCLED LATIN CAPITAL LETTER Y]
                  'FF39'  # Ｙ  [FULLWIDTH LATIN CAPITAL LETTER Y]
          ] => 'Y',
          [

                  '00FD', # ý  [LATIN SMALL LETTER Y WITH ACUTE]
                  '00FF', # ÿ  [LATIN SMALL LETTER Y WITH DIAERESIS]
                  '0177', # ŷ  [LATIN SMALL LETTER Y WITH CIRCUMFLEX]
                  '01B4', # ƴ  [LATIN SMALL LETTER Y WITH HOOK]
                  '0233', # ȳ  [LATIN SMALL LETTER Y WITH MACRON]
                  '024F', # ɏ  [LATIN SMALL LETTER Y WITH STROKE]
                  '028E', # ʎ  [LATIN SMALL LETTER TURNED Y]
                  '1E8F', # ẏ  [LATIN SMALL LETTER Y WITH DOT ABOVE]
                  '1E99', # ẙ  [LATIN SMALL LETTER Y WITH RING ABOVE]
                  '1EF3', # ỳ  [LATIN SMALL LETTER Y WITH GRAVE]
                  '1EF5', # ỵ  [LATIN SMALL LETTER Y WITH DOT BELOW]
                  '1EF7', # ỷ  [LATIN SMALL LETTER Y WITH HOOK ABOVE]
                  '1EF9', # ỹ  [LATIN SMALL LETTER Y WITH TILDE]
                  '1EFF', # ỿ  [LATIN SMALL LETTER Y WITH LOOP]
                  '24E8', # ⓨ  [CIRCLED LATIN SMALL LETTER Y]
                  'FF59'  # ｙ  [FULLWIDTH LATIN SMALL LETTER Y]
          ] => 'y',
          [

                  '24B4'  # ⒴  [PARENTHESIZED LATIN SMALL LETTER Y]
          ] => '(y)',
          [

                  '0179', # Ź  [LATIN CAPITAL LETTER Z WITH ACUTE]
                  '017B', # Ż  [LATIN CAPITAL LETTER Z WITH DOT ABOVE]
                  '017D', # Ž  [LATIN CAPITAL LETTER Z WITH CARON]
                  '01B5', # Ƶ  [LATIN CAPITAL LETTER Z WITH STROKE]
                  '021C', # Ȝ  http://en.wikipedia.org/wiki/Yogh  [LATIN CAPITAL LETTER YOGH]
                  '0224', # Ȥ  [LATIN CAPITAL LETTER Z WITH HOOK]
                  '1D22', # ᴢ  [LATIN LETTER SMALL CAPITAL Z]
                  '1E90', # Ẑ  [LATIN CAPITAL LETTER Z WITH CIRCUMFLEX]
                  '1E92', # Ẓ  [LATIN CAPITAL LETTER Z WITH DOT BELOW]
                  '1E94', # Ẕ  [LATIN CAPITAL LETTER Z WITH LINE BELOW]
                  '24CF', # Ⓩ  [CIRCLED LATIN CAPITAL LETTER Z]
                  '2C6B', # Ⱬ  [LATIN CAPITAL LETTER Z WITH DESCENDER]
                  'A762', # Ꝣ  [LATIN CAPITAL LETTER VISIGOTHIC Z]
                  'FF3A'  # Ｚ  [FULLWIDTH LATIN CAPITAL LETTER Z]
          ] => 'Z',
          [

                  '017A', # ź  [LATIN SMALL LETTER Z WITH ACUTE]
                  '017C', # ż  [LATIN SMALL LETTER Z WITH DOT ABOVE]
                  '017E', # ž  [LATIN SMALL LETTER Z WITH CARON]
                  '01B6', # ƶ  [LATIN SMALL LETTER Z WITH STROKE]
                  '021D', # ȝ  http://en.wikipedia.org/wiki/Yogh  [LATIN SMALL LETTER YOGH]
                  '0225', # ȥ  [LATIN SMALL LETTER Z WITH HOOK]
                  '0240', # ɀ  [LATIN SMALL LETTER Z WITH SWASH TAIL]
                  '0290', # ʐ  [LATIN SMALL LETTER Z WITH RETROFLEX HOOK]
                  '0291', # ʑ  [LATIN SMALL LETTER Z WITH CURL]
                  '1D76', # ᵶ  [LATIN SMALL LETTER Z WITH MIDDLE TILDE]
                  '1D8E', # ᶎ  [LATIN SMALL LETTER Z WITH PALATAL HOOK]
                  '1E91', # ẑ  [LATIN SMALL LETTER Z WITH CIRCUMFLEX]
                  '1E93', # ẓ  [LATIN SMALL LETTER Z WITH DOT BELOW]
                  '1E95', # ẕ  [LATIN SMALL LETTER Z WITH LINE BELOW]
                  '24E9', # ⓩ  [CIRCLED LATIN SMALL LETTER Z]
                  '2C6C', # ⱬ  [LATIN SMALL LETTER Z WITH DESCENDER]
                  'A763', # ꝣ  [LATIN SMALL LETTER VISIGOTHIC Z]
                  'FF5A'  # ｚ  [FULLWIDTH LATIN SMALL LETTER Z]
          ] => 'z',
          [

                  '24B5'  # ⒵  [PARENTHESIZED LATIN SMALL LETTER Z]
          ] => '(z)',
          [

                  '2070', # ⁰  [SUPERSCRIPT ZERO]
                  '2080', # ₀  [SUBSCRIPT ZERO]
                  '24EA', # ⓪  [CIRCLED DIGIT ZERO]
                  '24FF', # ⓿  [NEGATIVE CIRCLED DIGIT ZERO]
                  'FF10'  # ０  [FULLWIDTH DIGIT ZERO]
          ] => '0',
          [

                  '00B9', # ¹  [SUPERSCRIPT ONE]
                  '2081', # ₁  [SUBSCRIPT ONE]
                  '2460', # ①  [CIRCLED DIGIT ONE]
                  '24F5', # ⓵  [DOUBLE CIRCLED DIGIT ONE]
                  '2776', # ❶  [DINGBAT NEGATIVE CIRCLED DIGIT ONE]
                  '2780', # ➀  [DINGBAT CIRCLED SANS-SERIF DIGIT ONE]
                  '278A', # ➊  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ONE]
                  'FF11'  # １  [FULLWIDTH DIGIT ONE]
          ] => '1',
          [

                  '2488'  # ⒈  [DIGIT ONE FULL STOP]
          ] => '1.',
          [

                  '2474'  # ⑴  [PARENTHESIZED DIGIT ONE]
          ] => '(1)',
          [

                  '00B2', # ²  [SUPERSCRIPT TWO]
                  '2082', # ₂  [SUBSCRIPT TWO]
                  '2461', # ②  [CIRCLED DIGIT TWO]
                  '24F6', # ⓶  [DOUBLE CIRCLED DIGIT TWO]
                  '2777', # ❷  [DINGBAT NEGATIVE CIRCLED DIGIT TWO]
                  '2781', # ➁  [DINGBAT CIRCLED SANS-SERIF DIGIT TWO]
                  '278B', # ➋  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT TWO]
                  'FF12'  # ２  [FULLWIDTH DIGIT TWO]
          ] => '2',
          [

                  '2489'  # ⒉  [DIGIT TWO FULL STOP]
          ] => '2.',
          [

                  '2475'  # ⑵  [PARENTHESIZED DIGIT TWO]
          ] => '(2)',
          [

                  '00B3', # ³  [SUPERSCRIPT THREE]
                  '2083', # ₃  [SUBSCRIPT THREE]
                  '2462', # ③  [CIRCLED DIGIT THREE]
                  '24F7', # ⓷  [DOUBLE CIRCLED DIGIT THREE]
                  '2778', # ❸  [DINGBAT NEGATIVE CIRCLED DIGIT THREE]
                  '2782', # ➂  [DINGBAT CIRCLED SANS-SERIF DIGIT THREE]
                  '278C', # ➌  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT THREE]
                  'FF13'  # ３  [FULLWIDTH DIGIT THREE]
          ] => '3',
          [

                  '248A'  # ⒊  [DIGIT THREE FULL STOP]
          ] => '3.',
          [

                  '2476'  # ⑶  [PARENTHESIZED DIGIT THREE]
          ] => '(3)',
          [

                  '2074', # ⁴  [SUPERSCRIPT FOUR]
                  '2084', # ₄  [SUBSCRIPT FOUR]
                  '2463', # ④  [CIRCLED DIGIT FOUR]
                  '24F8', # ⓸  [DOUBLE CIRCLED DIGIT FOUR]
                  '2779', # ❹  [DINGBAT NEGATIVE CIRCLED DIGIT FOUR]
                  '2783', # ➃  [DINGBAT CIRCLED SANS-SERIF DIGIT FOUR]
                  '278D', # ➍  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FOUR]
                  'FF14'  # ４  [FULLWIDTH DIGIT FOUR]
          ] => '4',
          [

                  '248B'  # ⒋  [DIGIT FOUR FULL STOP]
          ] => '4.',
          [

                  '2477'  # ⑷  [PARENTHESIZED DIGIT FOUR]
          ] => '(4)',
          [

                  '2075', # ⁵  [SUPERSCRIPT FIVE]
                  '2085', # ₅  [SUBSCRIPT FIVE]
                  '2464', # ⑤  [CIRCLED DIGIT FIVE]
                  '24F9', # ⓹  [DOUBLE CIRCLED DIGIT FIVE]
                  '277A', # ❺  [DINGBAT NEGATIVE CIRCLED DIGIT FIVE]
                  '2784', # ➄  [DINGBAT CIRCLED SANS-SERIF DIGIT FIVE]
                  '278E', # ➎  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FIVE]
                  'FF15'  # ５  [FULLWIDTH DIGIT FIVE]
          ] => '5',
          [

                  '248C'  # ⒌  [DIGIT FIVE FULL STOP]
          ] => '5.',
          [

                  '2478' # ⑸  [PARENTHESIZED DIGIT FIVE]
          ] => '(5)',
          [

                  '2076', # ⁶  [SUPERSCRIPT SIX]
                  '2086', # ₆  [SUBSCRIPT SIX]
                  '2465', # ⑥  [CIRCLED DIGIT SIX]
                  '24FA', # ⓺  [DOUBLE CIRCLED DIGIT SIX]
                  '277B', # ❻  [DINGBAT NEGATIVE CIRCLED DIGIT SIX]
                  '2785', # ➅  [DINGBAT CIRCLED SANS-SERIF DIGIT SIX]
                  '278F', # ➏  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SIX]
                  'FF16'  # ６  [FULLWIDTH DIGIT SIX]
          ] => '6',
          [

                  '248D'  # ⒍  [DIGIT SIX FULL STOP]
          ] => '6.',
          [

                  '2479' # ⑹  [PARENTHESIZED DIGIT SIX]
          ] => '(6)',
          [

                  '2077', # ⁷  [SUPERSCRIPT SEVEN]
                  '2087', # ₇  [SUBSCRIPT SEVEN]
                  '2466', # ⑦  [CIRCLED DIGIT SEVEN]
                  '24FB', # ⓻  [DOUBLE CIRCLED DIGIT SEVEN]
                  '277C', # ❼  [DINGBAT NEGATIVE CIRCLED DIGIT SEVEN]
                  '2786', # ➆  [DINGBAT CIRCLED SANS-SERIF DIGIT SEVEN]
                  '2790', # ➐  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SEVEN]
                  'FF17'  # ７  [FULLWIDTH DIGIT SEVEN]
          ] => '7',
          [

                  '248E'  # ⒎  [DIGIT SEVEN FULL STOP]
          ] => '7.',
          [

                  '247A'  # ⑺  [PARENTHESIZED DIGIT SEVEN]
          ] => '(7=)',
          [

                  '2078', # ⁸  [SUPERSCRIPT EIGHT]
                  '2088', # ₈  [SUBSCRIPT EIGHT]
                  '2467', # ⑧  [CIRCLED DIGIT EIGHT]
                  '24FC', # ⓼  [DOUBLE CIRCLED DIGIT EIGHT]
                  '277D', # ❽  [DINGBAT NEGATIVE CIRCLED DIGIT EIGHT]
                  '2787', # ➇  [DINGBAT CIRCLED SANS-SERIF DIGIT EIGHT]
                  '2791', # ➑  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT EIGHT]
                  'FF18'  # ８  [FULLWIDTH DIGIT EIGHT]
          ] => '8',
          [

                  '248F'  # ⒏  [DIGIT EIGHT FULL STOP]
          ] => '8.',
          [

                  '247B'  # ⑻  [PARENTHESIZED DIGIT EIGHT]
          ] => '(8)',
          [

                  '2079', # ⁹  [SUPERSCRIPT NINE]
                  '2089', # ₉  [SUBSCRIPT NINE]
                  '2468', # ⑨  [CIRCLED DIGIT NINE]
                  '24FD', # ⓽  [DOUBLE CIRCLED DIGIT NINE]
                  '277E', # ❾  [DINGBAT NEGATIVE CIRCLED DIGIT NINE]
                  '2788', # ➈  [DINGBAT CIRCLED SANS-SERIF DIGIT NINE]
                  '2792', # ➒  [DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT NINE]
                  'FF19'  # ９  [FULLWIDTH DIGIT NINE]
          ] => '9',
          [

                  '2490'  # ⒐  [DIGIT NINE FULL STOP]
          ] => '9.',
          [

                  '247C'  # ⑼  [PARENTHESIZED DIGIT NINE]
          ] => '(9)',
          [

                  '2469', # ⑩  [CIRCLED NUMBER TEN]
                  '24FE', # ⓾  [DOUBLE CIRCLED NUMBER TEN]
                  '277F', # ❿  [DINGBAT NEGATIVE CIRCLED NUMBER TEN]
                  '2789', # ➉  [DINGBAT CIRCLED SANS-SERIF NUMBER TEN]
                  '2793'  # ➓  [DINGBAT NEGATIVE CIRCLED SANS-SERIF NUMBER TEN]
          ] => '10',
          [

                  '2491' # ⒑  [NUMBER TEN FULL STOP]
          ] => '10.',
          [

                  '247D'  # ⑽  [PARENTHESIZED NUMBER TEN]
          ] => '(10)',
          [

                  '246A', # ⑪  [CIRCLED NUMBER ELEVEN]
                  '24EB' # ⓫  [NEGATIVE CIRCLED NUMBER ELEVEN]
          ] => '11',
          [

                  '2492'  # ⒒  [NUMBER ELEVEN FULL STOP]
          ] => '11.',
          [

                  '247E'  # ⑾  [PARENTHESIZED NUMBER ELEVEN]
          ] => '(11)',
          [

                  '246B', # ⑫  [CIRCLED NUMBER TWELVE]
                  '24EC'  # ⓬  [NEGATIVE CIRCLED NUMBER TWELVE]
          ] => '12',
          [

                  '2493'  # ⒓  [NUMBER TWELVE FULL STOP]
          ] => '12.',
          [

                  '247F'  # ⑿  [PARENTHESIZED NUMBER TWELVE]
          ] => '(12)',
          [

                  '246C', # ⑬  [CIRCLED NUMBER THIRTEEN]
                  '24ED'  # ⓭  [NEGATIVE CIRCLED NUMBER THIRTEEN]
          ] => '13',
          [

                  '2494'  # ⒔  [NUMBER THIRTEEN FULL STOP]
          ] => '13.',
          [

                  '2480' # ⒀  [PARENTHESIZED NUMBER THIRTEEN]
          ] => '(13)',
          [

                  '246D', # ⑭  [CIRCLED NUMBER FOURTEEN]
                  '24EE' # ⓮  [NEGATIVE CIRCLED NUMBER FOURTEEN]
          ] => '14',
          [

                  '2495' # ⒕  [NUMBER FOURTEEN FULL STOP]
          ] => '14.',
          [

                  '2481' # ⒁  [PARENTHESIZED NUMBER FOURTEEN]
          ] => '(14)',
          [

                  '246E', # ⑮  [CIRCLED NUMBER FIFTEEN]
                  '24EF'  # ⓯  [NEGATIVE CIRCLED NUMBER FIFTEEN]
          ] => '15',
          [

                  '2496'  # ⒖  [NUMBER FIFTEEN FULL STOP]
          ] => '15.',
          [

                  '2482' # ⒂  [PARENTHESIZED NUMBER FIFTEEN]
          ] => '(15)',
          [

                  '246F', # ⑯  [CIRCLED NUMBER SIXTEEN]
                  '24F0'  # ⓰  [NEGATIVE CIRCLED NUMBER SIXTEEN]
          ] => '16',
          [

                  '2497'  # ⒗  [NUMBER SIXTEEN FULL STOP]
          ] => '16.',
          [

                  '2483' # ⒃  [PARENTHESIZED NUMBER SIXTEEN]
          ] => '(16)',
          [

                  '2470', # ⑰  [CIRCLED NUMBER SEVENTEEN]
                  '24F1' # ⓱  [NEGATIVE CIRCLED NUMBER SEVENTEEN]
          ] => '17',
          [

                  '2498' # ⒘  [NUMBER SEVENTEEN FULL STOP]
          ] => '17.',
          [

                  '2484'  # ⒄  [PARENTHESIZED NUMBER SEVENTEEN]
          ] => '(17)',
          [

                  '2471', # ⑱  [CIRCLED NUMBER EIGHTEEN]
                  '24F2'  # ⓲  [NEGATIVE CIRCLED NUMBER EIGHTEEN]
          ] => '18',
          [

                  '2499'  # ⒙  [NUMBER EIGHTEEN FULL STOP]
          ] => '18.',
          [

                  '2485'  # ⒅  [PARENTHESIZED NUMBER EIGHTEEN]
          ] => '(18)',
          [

                  '2472', # ⑲  [CIRCLED NUMBER NINETEEN]
                  '24F3'  # ⓳  [NEGATIVE CIRCLED NUMBER NINETEEN]
          ] => '19',
          [

                  '249A' # ⒚  [NUMBER NINETEEN FULL STOP]
          ] => '19.',
          [

                  '2486'  # ⒆  [PARENTHESIZED NUMBER NINETEEN]
          ] => '(19)',
          [

                  '2473', # ⑳  [CIRCLED NUMBER TWENTY]
                  '24F4'  # ⓴  [NEGATIVE CIRCLED NUMBER TWENTY]
          ] => '20',
          [

                  '249B'  # ⒛  [NUMBER TWENTY FULL STOP]
          ] => '20.',
          [

                  '2487' # ⒇  [PARENTHESIZED NUMBER TWENTY]
          ] => '(20)',
          [

                  '00AB', # «  [LEFT-POINTING DOUBLE ANGLE QUOTATION MARK]
                  '00BB', # »  [RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK]
                  '201C', # “  [LEFT DOUBLE QUOTATION MARK]
                  '201D', # ”  [RIGHT DOUBLE QUOTATION MARK]
                  '201E', # „  [DOUBLE LOW-9 QUOTATION MARK]
                  '2033', # ″  [DOUBLE PRIME]
                  '2036', # ‶  [REVERSED DOUBLE PRIME]
                  '275D', # ❝  [HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT]
                  '275E', # ❞  [HEAVY DOUBLE COMMA QUOTATION MARK ORNAMENT]
                  '276E', # ❮  [HEAVY LEFT-POINTING ANGLE QUOTATION MARK ORNAMENT]
                  '276F', # ❯  [HEAVY RIGHT-POINTING ANGLE QUOTATION MARK ORNAMENT]
                  'FF02'  # ＂  [FULLWIDTH QUOTATION MARK]
          ] => '"',
          [

                  '2018', # ‘  [LEFT SINGLE QUOTATION MARK]
                  '2019', # ’  [RIGHT SINGLE QUOTATION MARK]
                  '201A', # ‚  [SINGLE LOW-9 QUOTATION MARK]
                  '201B', # ‛  [SINGLE HIGH-REVERSED-9 QUOTATION MARK]
                  '2032', # ′  [PRIME]
                  '2035', # ‵  [REVERSED PRIME]
                  '2039', # ‹  [SINGLE LEFT-POINTING ANGLE QUOTATION MARK]
                  '203A', # ›  [SINGLE RIGHT-POINTING ANGLE QUOTATION MARK]
                  '275B', # ❛  [HEAVY SINGLE TURNED COMMA QUOTATION MARK ORNAMENT]
                  '275C', # ❜  [HEAVY SINGLE COMMA QUOTATION MARK ORNAMENT]
                  'FF07'  # ＇  [FULLWIDTH APOSTROPHE]
          ] => '\'',
          [

                  '2010', # ‐  [HYPHEN]
                  '2011', # ‑  [NON-BREAKING HYPHEN]
                  '2012', # ‒  [FIGURE DASH]
                  '2013', # –  [EN DASH]
                  '2014', # —  [EM DASH]
                  '207B', # ⁻  [SUPERSCRIPT MINUS]
                  '208B', # ₋  [SUBSCRIPT MINUS]
                  'FF0D'  # －  [FULLWIDTH HYPHEN-MINUS]
          ] => '-',
          [

                  '2045', # ⁅  [LEFT SQUARE BRACKET WITH QUILL]
                  '2772', # ❲  [LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT]
                  'FF3B'  # ［  [FULLWIDTH LEFT SQUARE BRACKET]
          ] => '[',
          [

                  '2046', # ⁆  [RIGHT SQUARE BRACKET WITH QUILL]
                  '2773', # ❳  [LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT]
                  'FF3D'  # ］  [FULLWIDTH RIGHT SQUARE BRACKET]
          ] => ']',
          [

                  '207D', # ⁽  [SUPERSCRIPT LEFT PARENTHESIS]
                  '208D', # ₍  [SUBSCRIPT LEFT PARENTHESIS]
                  '2768', # ❨  [MEDIUM LEFT PARENTHESIS ORNAMENT]
                  '276A', # ❪  [MEDIUM FLATTENED LEFT PARENTHESIS ORNAMENT]
                  'FF08'  # （  [FULLWIDTH LEFT PARENTHESIS]
          ] => '(',
          [

                  '2E28'  # ⸨  [LEFT DOUBLE PARENTHESIS]
          ] => '((',
          [

                  '207E', # ⁾  [SUPERSCRIPT RIGHT PARENTHESIS]
                  '208E', # ₎  [SUBSCRIPT RIGHT PARENTHESIS]
                  '2769', # ❩  [MEDIUM RIGHT PARENTHESIS ORNAMENT]
                  '276B', # ❫  [MEDIUM FLATTENED RIGHT PARENTHESIS ORNAMENT]
                  'FF09'  # ）  [FULLWIDTH RIGHT PARENTHESIS]
          ] => ')',
          [

                  '2E29'  # ⸩  [RIGHT DOUBLE PARENTHESIS]
          ] => '))',
          [

                  '276C', # ❬  [MEDIUM LEFT-POINTING ANGLE BRACKET ORNAMENT]
                  '2770', # ❰  [HEAVY LEFT-POINTING ANGLE BRACKET ORNAMENT]
                  'FF1C'  # ＜  [FULLWIDTH LESS-THAN SIGN]
          ] => '<',
          [

                  '276D', # ❭  [MEDIUM RIGHT-POINTING ANGLE BRACKET ORNAMENT]
                  '2771', # ❱  [HEAVY RIGHT-POINTING ANGLE BRACKET ORNAMENT]
                  'FF1E'  # ＞  [FULLWIDTH GREATER-THAN SIGN]
          ] => '>',
          [

                  '2774', # ❴  [MEDIUM LEFT CURLY BRACKET ORNAMENT]
                  'FF5B'  # ｛  [FULLWIDTH LEFT CURLY BRACKET]
          ] => '{',
          [

                  '2775', # ❵  [MEDIUM RIGHT CURLY BRACKET ORNAMENT]
                  'FF5D'  # ｝  [FULLWIDTH RIGHT CURLY BRACKET]
          ] => '}',
          [

                  '207A', # ⁺  [SUPERSCRIPT PLUS SIGN]
                  '208A', # ₊  [SUBSCRIPT PLUS SIGN]
                  'FF0B'  # ＋  [FULLWIDTH PLUS SIGN]
          ] => '+',
          [

                  '207C', # ⁼  [SUPERSCRIPT EQUALS SIGN]
                  '208C', # ₌  [SUBSCRIPT EQUALS SIGN]
                  'FF1D'  # ＝  [FULLWIDTH EQUALS SIGN]
          ] => '=',
          [

                  'FF01'  # ！  [FULLWIDTH EXCLAMATION MARK]
          ] => '!',
          [

                  '203C'  # ‼  [DOUBLE EXCLAMATION MARK]
          ] => '!!',
          [

                  '2049'  # ⁉  [EXCLAMATION QUESTION MARK]
          ] => '!?',
          [

                  'FF03'  # ＃  [FULLWIDTH NUMBER SIGN]
          ] => '#',
          [

                  'FF04'  # ＄  [FULLWIDTH DOLLAR SIGN]
          ] => '$',
          [

                  '2052', # ⁒  [COMMERCIAL MINUS SIGN]
                  'FF05'  # ％  [FULLWIDTH PERCENT SIGN]
          ] => '%',
          [

                  'FF06'  # ＆  [FULLWIDTH AMPERSAND]
          ] => '&',
          [

                  '204E', # ⁎  [LOW ASTERISK]
                  'FF0A'  # ＊  [FULLWIDTH ASTERISK]
          ] => '*',
          [

                  'FF0C'  # ，  [FULLWIDTH COMMA]
          ] => ',',
          [

                  'FF0E'  # ．  [FULLWIDTH FULL STOP]
          ] => '.',
          [

                  '2044', # ⁄  [FRACTION SLASH]
                  'FF0F'  # ／  [FULLWIDTH SOLIDUS]
          ] => '/',
          [

                  'FF1A'  # ：  [FULLWIDTH COLON]
          ] => ':',
          [

                  '204F', # ⁏  [REVERSED SEMICOLON]
                  'FF1B'  # ；  [FULLWIDTH SEMICOLON]
          ] => ';',
          [

                  'FF1F'  # ？  [FULLWIDTH QUESTION MARK]
          ] => '?',
          [

                  '2047'  # ⁇  [DOUBLE QUESTION MARK]
          ] => '??',
          [

                  '2048'  # ⁈  [QUESTION EXCLAMATION MARK]
          ] => '?!',
          [

                  'FF20'  # ＠  [FULLWIDTH COMMERCIAL AT]
          ] => '@',
          [

                  'FF3C'  # ＼  [FULLWIDTH REVERSE SOLIDUS]
          ] => '\\',
          [

                  '2038', # ‸  [CARET]
                  'FF3E'  # ＾  [FULLWIDTH CIRCUMFLEX ACCENT]
          ] => '^',
          [

                  'FF3F'  # ＿  [FULLWIDTH LOW LINE]
          ] => '_',
          [

                  '2053', # ⁓  [SWUNG DASH]
                  'FF5E'  # ～  [FULLWIDTH TILDE]
          ] => '~'

  })


  def simplify 
    begin
    self.unpack("U*").map{|unicode_code_point| UNICODE_TO_ASCII[unicode_code_point] || unicode_code_point}.flatten.pack("U*") 
  rescue
    raise "Error: Invalid Character present"
  end
  end
end

class String
  include SpecialCharRemover
end