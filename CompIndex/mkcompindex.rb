#!/usr/bin/env ruby

compindexraw = IO.readlines("CompIndex-test.md")
compindex_formatted = []
compindexraw.each do |line| 
  case line
  when /^A/
    compindex_formatted << line
  when /^B/
    compindex_formatted << "* #{line}"
  when /^C/
    compindex_formatted << "  * #{line}"
  when /^D/
    compindex_formatted << "    * #{line}"
  end
end

compindex_formatted.each { |line| puts line }
