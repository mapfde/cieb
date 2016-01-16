#!/usr/bin/env ruby

compindex_raw = IO.readlines('CompIndex-test.md')
File.open('CompIndex-test2.md', 'w') do |compindex_formatted|
  compindex_raw.each do |line| 
    case line
    when /^A/
      compindex_formatted.write("\n### #{line}\n")
    when /^B/
      compindex_formatted.write("   * #{line}")
    when /^C/
      compindex_formatted.write("      * #{line}")
    when /^D/
      compindex_formatted.write("         * #{line}")
    end
  end
end

# pandoc CompIndex-test2.md -o CompIndex-test2.docx
