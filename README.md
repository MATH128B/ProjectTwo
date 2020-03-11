# ProjectTwo
Implementing neural networks

The elusive link to the website is 
[**https://academics.davidson.edu/math/chartier/Numerical/matlab.html**].
Then snag the script "mnist_all.mat", which should be the same one that Nishad linked to. 

Now just type 
  digit = train0(1,:);
  digitImage = reshape(digit,28,28);
  image(rot90(flipud(digitImage),-1)),
  colormap(gray(256)), axis square tight off;
as suggested and you'll get an image of the 0-digit.

Everything else should be pretty straight forward from here.
