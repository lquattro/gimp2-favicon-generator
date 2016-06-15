(define
  ;Name Script and parameter
  ;@param image in window gimp
  ;@param layer is drawable
  (script-fu-favicon-generator image layer dir)

    ;Set Local Variables
    (let* 
      (
        ;Create new variable SF-IMAGE.
        (img image)
        ;Create new variable String.
        (fav96 "favicon-96x96.png")
        ;Create new variable SF-DIRNAME+"/"+fav96.
        (dirdoc (string-append dir "/" fav96))
      )

      ;Log message
      (gimp-message dirdoc)

      ;Scale image per 96x96
      ;@param image
      ;@param width
      ;@param height
      (gimp-image-scale img 96 96)

      ;Save file in directory
      (gimp-file-save RUN-NONINTERACTIVE img layer dirdoc fav96)
    )
)

;Add Button in Gimp directory and Description script
(script-fu-register
  ;Function name
  "script-fu-favicon-generator"
  ;Menu Label and localisation
  "<Image>/File/Save/Generate & Save favicon"
  ;Description
  "Auto Scale and Save favicon."
  ;Author
  "lquattro"
  ;Copyrith Notice
  "Apache License Version 2.0, January 2004 http://www.apache.org/licenses/"
  ;Date created
  "October 2015"
  ;Image type that the script works on
  ""
  ;SF-STRING "Text" "Text Box" ;@example a string variable
  ;A image variable
  SF-IMAGE    "image"     0
  ;A drawable variable
  SF-DRAWABLE "layer"     0
  ;A dir variable
  SF-DIRNAME  "dir"       "/"
)