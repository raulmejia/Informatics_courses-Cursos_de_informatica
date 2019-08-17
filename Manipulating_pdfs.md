qpdf --decrypt mypdf.pdf --password=yourpasword hello.pdf


pdftk mypdf.pdf cat 1 4 6 output mypdf_transformed.pdf 
