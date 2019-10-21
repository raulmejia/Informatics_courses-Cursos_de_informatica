### Unlock persistently encryption  
qpdf --decrypt mypdf.pdf --password=yourpasword hello.pdf


pdftk mypdf.pdf cat 1 4 6 output mypdf_transformed.pdf 

### Merge pdfs

sudo apt install poppler-utils  
pdfunite file1.pdf file2.pdf merged_output.pdf


### Split pdfs
Extract several individual pages or in range:  
```pdfseparate -f 1 -l 5 input.pdf output-page%d.pdf```  
```pdftk ORIG_FILE.pdf cat 1 5 7 10-12 output NEW_FILE.pdf```
