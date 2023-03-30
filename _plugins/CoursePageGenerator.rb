module CourseExtraData

  class CourseGenerator < Jekyll::Generator

    # Converts the course.json data file and the _courses collection into
    # a single data structure for ease of access and use.
    # @param course_data site.data["courses"]
    # @param doc_data site.collections["courses"].docs
    # @return A hash containing the converted/managed course data.
    def manage_course_data(course_data, doc_data)

      data = {}

      # Build Hash of courses
      course_data.each do | course |
        data[course["id"]] = { "data" => course, "docs" => []}
      end

      # Sort documents by their `lesson_index` 
      sorted_docs = []
      sort_cursor = 1
      while doc_data.length > 0
        doc_data.each_with_index do | doc, index |
          if doc.data["lesson_index"] <= sort_cursor
            sorted_docs << doc
            doc_data.delete_at(index)
          end
        end

        sort_cursor += 1
      end        

      # Populate each course with its related documents
      sorted_docs.each do | doc | 
        data.each do | course |
          if course[0] == doc.data["course_id"]
            course[1]["docs"] << doc
          end
        end
      end

      return data
    end
    
    def generate(site)
      # Get the courses.json data from the _data folder and iterate over
      # each course defined in it.
      course_data = site.data['courses']
      course_docs = site.collections["courses"].docs
      
      # Get cleaned course data and add the data to site.data
      clean_data = manage_course_data(course_data, course_docs)
      site.data["course_data"] = clean_data

      # Generate pages for each course, lesson, and challenge
      clean_data.each do | course |
        course[1]["docs"].each do | doc |
          site.pages << CoursePage.new(site, course, doc)
        end
      end
    end

    

  end

  class CoursePage < Jekyll::Page

    def initialize(site, course, doc)
      @site = site
      @base = site.source
      @dir  = course[1]["data"]["permalink"]

      @basename = "index"
      @ext      = ".html"

      @data = doc.data

      @content_type = doc.data["content_type"]
      if @content_type != "portal"
        @basename = doc.data["title"].downcase.gsub(/[^0-9a-z ]/i, '').gsub(" ", "-")
      end

      @name = @basename + @ext

      @content = doc.content

    end

  end

end