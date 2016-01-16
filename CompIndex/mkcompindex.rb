#!/usr/bin/env ruby

now = Time.now.strftime("%Y-%m-%d")
header = <<-EOS
# LD4PE Competency Index

#{now}: generated from [Compindex-published.md](https://github.com/ld4pe/cieb/blob/master/CompIndex/CompIndex-draft.md)
See also [http://explore.dublincore.net/comp-index/](http://explore.dublincore.net/comp-index/)

_Legend_
### _Topic cluster_
   * _Topic_
      * **_Competency: a tweet-length phrase expressing a concept or skill to be learned_**
         * _Benchmark: specific task that demonstrates competency_
EOS

ci_raw = IO.readlines('CompIndex-test.md')
File.open('CompIndex-test2.md', 'w') do |ci_formatted|
ci_formatted.write(header)
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

