qpdf --decrypt mypdf.pdf --password=yourpasword hello.pdf


pdftk mypdf.pdf cat 1 4 6 output mypdf_transformed.pdf 

### Merge pdfs

sudo apt install poppler-utils  
pdfunite file1.pdf file2.pdf merged_output.pdf
