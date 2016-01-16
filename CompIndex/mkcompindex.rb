#!/usr/bin/env ruby

now = Time.now.strftime("%Y-%m-%d")
ci_raw = IO.readlines('CompIndex-test.md')
File.open('CompIndex-test2.md', 'w') do |ci_formatted|
  header = <<EOS
  ci_formatted.write("# LD4PE Competency Index\n")
  ci_formatted.write("#{now}: generated from [Compindex-published.md](https://github.com/ld4pe/cieb/blob/master/CompIndex/CompIndex-draft.md)\n\n")
  ci_formatted.write("See also [http://explore.dublincore.net/comp-index/](http://explore.dublincore.net/comp-index/)\n\n")
  ci_formatted.write("_Legend_")
  ci_formatted.write("### _Topic clusters_')
  ci_formatted.write("   * _Topics_")
  ci_formatted.write("      * __#{line[2..-1]}__")
  ci_formatted.write("         * #{line[2..-1]}")
  ci_formatted.write(header)
  EOS
  ci_raw.each do |line| 
    case line
    when /^A/
      ci_formatted.write("\n### #{line[2..-1]}\n")
    when /^B/
      ci_formatted.write("   * #{line[2..-1]}")
    when /^C/
      ci_formatted.write("      * __#{line[2..-1]}__")
    when /^D/
      ci_formatted.write("         * #{line[2..-1]}")
    end
  end
end

