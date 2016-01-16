#!/usr/bin/env ruby

now = Time.now.strftime("%Y-%m-%d")
ci_raw = IO.readlines('CompIndex-test.md')
File.open('CompIndex-test2.md', 'w') do |ci_formatted|
  ci_formatted.write("## LD4PE Competency Index\n")
  ci_formatted.write("#{now}: Generated from [Compindex-published.md](https://github.com/ld4pe/cieb/blob/master/CompIndex/CompIndex-draft.md)\n")
  ci_formatted.write("See also [http://explore.dublincore.net/comp-index/](http://explore.dublincore.net/comp-index/)\n")
  ci_raw.each do |line| 
    case line
    when /^A/
      ci_formatted.write("\n### #{line[2..-1]}\n")
    when /^B/
      ci_formatted.write("   * #{line[2..-1]}")
    when /^C/
      ci_formatted.write("      * #{line[2..-1]}")
    when /^D/
      ci_formatted.write("         * #{line[2..-1]}")
    end
  end
end

