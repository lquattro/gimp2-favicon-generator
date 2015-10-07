(define
  ;Name Script and parameter
  ;@param image in window gimp
  ;@param layer is drawable
  (script-fu-favicon-generator image layer dir)

    ;Scale image per 96x96
    ;@param image
    ;@param width
    ;@param height
    (gimp-image-scale image 96 96)

    ;Save file in directory
    (file-png-save 0 image layer dir "favicon-96x96.png"
     TRUE 9 FALSE TRUE FALSE FALSE TRUE)

    ;Init var a at 1.
    ;(let* ( variables )  expressions )
    ;@example (let* ( (a 1)(b 2) )  (+ a b) )
    ;Set new value in var.
    ;@example (let* ( (theNum 10) ) (set! theNum (+ theNum theNum)) )
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