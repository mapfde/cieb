#!/usr/bin/env ruby

now = Time.now.strftime("%Y-%m-%d")
header = %(
# LD4PE Competency Index

#{now}: generated from [Compindex-published.md](https://github.com/ld4pe/cieb/blob/master/CompIndex/CompIndex-draft.md)\n
See also [http://explore.dublincore.net/comp-index/](http://explore.dublincore.net/comp-index/)\n\n

-----------------------------------\n
### Topic cluster
   * Topic
      * Competency: a tweet-length phrase expressing a concept or skill to be learned
         * Benchmark: specific task that demonstrates competency\n
-----------------------------------\n
)

ci_raw = IO.readlines('CompIndex-test.txt')
File.open('CompIndex-test2.md', 'w') do |file|
  file.write(header)
  ci_raw.each do |line| 
    case line
    when /^A/
      file.write("\n### #{line[2..-1]}\n")
    when /^B/
      file.write("   * #{line[2..-1]}")
    when /^C/
      file.write("      * #{line[2..-1]}")
    when /^D/
      file.write("         * #{line[2..-1]}")
    end
  end
end

