from resource import Resource

bookmark = Resource('bookmark')

story = Resource('story', specify=True)
bookmark.depends(story)

toc = Resource('toc')
story.depends(toc)

chapter = Resource('chapter', specify=True)
chapter_title = Resource('title')
chapter_content = Resource('content')
chapter_author = Resource('author')

chapter.depends(chapter_title)
chapter.depends(chapter_content)
chapter.depends(chapter_author)

story.depends(chapter)
toc.depends(chapter)
