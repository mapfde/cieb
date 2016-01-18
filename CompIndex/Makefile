CompIndex-generated.md: CompIndex.txt
	ruby mkcompindex.rb --source 'CompIndex.txt' --target 'CompIndex-generated.md'
	pandoc CompIndex-generated.md -o CompIndex-generated.docx
	git add CompIndex-generated.md
	git commit -m 'generated CompIndex-generated.md'
