### :sparkles: Flutter Fractals :sparkles:


<br>

#### Made with:

<p align="center">
    <img align="center" src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
    <img align="center" src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" />
    <img align="center" src="https://img.shields.io/badge/Visual_Studio_Code-2DB261?style=for-the-badge&logo=visual%20studio%20code&logoColor=white" />
</p>

<br>
##### :sparkles: What are Fractals? :sparkles:

<p>
    A <b>Fractal</b> is a mathematical shape which can be infinitely complex. 
    To put in simple words, a Fractal is a pattern which repeats for ever. As a result of which, no matter how much you are zoomed in or zoomed out of the image, the design looks same as the overall picture.
    As we go about in our daily lives, we cannot help but notice those beautiful design patterns which seem to repeat themselves infinitely. The term `Fractal` was coined by famous mathematician <a href="https://en.wikipedia.org/wiki/Benoit_Mandelbrot">Benoit Mandelbrot</a><br>
</p>
<p>
    The most common and the most famous fractal shown is the Mendelbrot curve. Here is an image of the most famous Mandelbrot Set Curve:
</p>
<p align = "center">
    <img align="center" src="https://mathworld.wolfram.com/images/eps-svg/ElephantValley_1000.svg" width="480" height="480" frameBorder="0" />
</p>
<p>
    One example of a fractal design is the Koch Snowflake. It starts with an equilateral triangle
    which is then overlapped with an upside down equilateral triangle. The 6 smaller triangnles formed are overlapped again by corresponding inverted triangles of the same shape and size. And the process is repeated infinitely, which results in the beautiful Koch Snowflake.<br>
</p>
<p>An Example is shown below:</p>
<p align = "center">
    <img align="center" src="https://www.researchgate.net/profile/Yaroslav-Sergeyev/publication/321045063/figure/fig3/AS:709179266330625@1546092921185/Generation-of-the-Koch-snowflake.png" frameBorder="0" />
</p>

<br>

##### :sparkles: What I have done :sparkles:

I was working on generating artistic figures using Flutter and Dart :sad: . But somehow, those figures did not catch the eyes of the audience. That is when, a senior of mine suggested to study and try to generate fractals in my application. This app is a result of that.

I have used pure mathematical calculations and Flutter's internal features to generate 3 different fractal arts:-

* Branching Tree
* Sierpenski Carpet
* Dragon Curve

Flutter's CustomPainter class helps us to build and draw different shapes on a canvas based on our requirements. This CustomPainter has been used to draw our Fractal designs.

A demo of the app:


![Demo of the Application](readmeAssets/fractal.gif)

<br>

##### :sparkles: Future Plans :sparkles:

* Make the Figures dynamic instead of static
* Make a Live Wallpaper generator Mobile application using the Fractals as design
