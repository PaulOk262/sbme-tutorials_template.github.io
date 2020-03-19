---
layout: presentation
style: laminal
highlighter: ir-black
code: "SBE201"
course: "SBE201 Data Structures and Algorithms"
category: "presentation"
semester: "Spring"
year: "2020"
title: "Section 4: Time Complexity (Big O Notation) & Sorting Algorithms (1)"
by: "Asem Alaa"
author: "Asem Alaa"
---

<textarea id="source" markdown="1">

# Section 4

## Time Complexity & Sorting Algorithms (1)

##### Presentation by *{{ page.author }}*

{% include presentation-margins.html %}

---
## Big O Notation for Algorithm Analysis

--
### What is an Algorithm

--
> According to Donald Knuth, the word *algorithm* is derived from the name “al-Khowârizmı̂,” a ninth-century Persian mathematician.

--
### In programming, 

* *algorithm* is a function with some logic. 
* Very general term. 
* The `meanArray` function is an *algorithm 
* Similary, `varianceArray`, `minArray`, `maxArray`, `factorial`, and `power`.


We are .red[concerned] about the function running time **w.r.t input size `n`**.


---
### Estimating the running time $T(n)$

* $T(n)$ is the running time function.
* $n$ is size of the data structure.
* printing array of size 10 takes less time than array of size 1000 ($T(10) < T(100)$)

#### Example

```c++
void printArray( double *array, int size ) // n = size
{
    for( int i = 0; i < size; ++i ) 
    {
        std::cout << array[i]; // T1(n) = n
        std::cout << " "; // T2(n) = n
    }
    std::cout << "\n"; // T3(n) = 1
}
```

$T(n) = T1 + T2 + T3 = n + n + 1= 1 + 2n $ (:thinking: linear)

---
### Estimating the running time $T(n)$

* $n$ is size of the data structure.

#### Example

Alternatively, factor out $n$

```c++
void printArray( double *array, int size ) // n = size
{
    for( int i = 0; i < size; ++i ) // T1(n) = n * ( T2 + T3 )
    {
        std::cout << array[i]; // T2(n) = 1
        std::cout << " "; // T3(n) = 1
    }
    std::cout << "\n"; // T4(n) = 1
}
```
$  T(n) = 1 + n ( T3 + T4 ) = 1 + 2n $ (:thinking: linear)

---
### Estimating the running time $T(n)$

* $n$ is size of the data structure.

#### Example

slight modification..

```c++
void printArray( double *array, int size ) // n = size
{
    for( int i = 0; i < size; ++i ) // T1(n) = n * ( T2 )
    {
        std::cout << array[i] << " "; // T2(n) = 1
    }
    std::cout << "\n"; // T4(n) = 1
}
```

$T(n) = T1 + T4 = 1 + n ( T4 ) = 1 + n$

* Conclusion: $T(n)$ is not reliable estimate!
* But $T(n)$ is still linear!

---
### Estimating the running time $T(n)$

```c++
#include <iostream>
void printArray( double *array, int size ) {
    for( int i = 0; i < size; ++i ) 
        std::cout << array[i] << " ";
}
int main() {
    double a[] = {1.2, 1.3, -1.0, 0.4};
    printArray(a, 4);
}
```

Estimating the running time of an algorithm by $T(n)$ is unrealistic **because the running time will vary**:

1. from platform to another (e.g Core i3 vs Core i9).
2. from compiler to another (e.g GCC vs Clang vs MSVC).

Even if used the same compiler and platform, it may change from time to time (e.g summer vs. winter)


---
### ~~Estimating the running time $T(n)$~~ 
### The asymptotic running time (big O notation)

For either

* $T_a(n) = 2n + 1$
* $T_b(n) = n + 1$
* $T_c(n) = 4n + 5$
* $T_d(n) = 6n + 3$

* The $n$ term will dominate the function $T(n)$ at large $n$ values.

So, we propose "big O notation" to .blue[capture] the dominating term at large $n$ values.


So..

$O(T_a(n)) = O(T_b(n)) = O(T_c(n)) = O(T_d(n))$ = .blue[$O(n)$]

---
### The asymptotic running time (big O notation)

#### Quadratic Performance

Consider the following function `varianceArray`

```c++
double meanArray(double *array, int size){.....} // O(??)

double varianceArray( double *array, int size ) // n = size
{
    double sum = 0 ; // O(1)
    for( int i = 0; i < size ; ++i ) // O(??)
    {
        double diff = meanArray( array, size ) - array[i]; // O(n) 
        sum = sum + diff * diff ; // O(1)
    }
    return sum / size; // O(1)
}
```

---
### The asymptotic running time (big O notation)

#### Quadratic Performance

Consider the following function `varianceArray`

```c++
double meanArray( double *array, int size){.....} // O(an + b) = O(n)
double varianceArray( double *array, int size ) // n = size
{
    double sum = 0 ; // O(1)
    for( int i = 0; i < size ; ++i )  // O(n^2)
    {
        double diff = meanArray( array, size ) - array[i]; // O(n)
        sum = sum + diff * diff ; // O(1)
    }
    return sum / size; // O(1)
}
```

--
$ O(T(n)) = O(1) + O(n^2) + O(1) = O(n^2) $

.small[.blue[Can we do better?]]

---
### The asymptotic running time (big O notation)

#### Quadratic Performance

Consider the following function `varianceArray`

```c++
double meanArray( double *array, int size){.....} // O(an + b) = O(n)
double varianceArray( double *array, int size ) // n = size
{
    double sum = 0 ; // O(1)
    double mean = meanArray( array ); // O(n)
    for( int i = 0; i < size ; ++i )  // O(n)
    {
        double diff = mean - array[i]; // O(1)
        sum = sum + diff * diff ; // O(1)
    }
    return sum / size; // O(1)
}
```

$ O(T(n)) = O(1) + O(n) + O(n) + O(1) = O(n) $    
.small[.green[$O(n)$ is better than $O(n^2)$]]

---
### The asymptotic running time (big O notation)

#### Constant Performance

```c++
double arrayBack( double *array, int size ) // n = size
{
    double last = array[ size - 2 ]; // O(1)
    return last; // O(1)
}
```

$$ O( T(n) ) = O(1) + O(1) = O(1) $$

Note that:

$O(12)$ = $O(9 + log(3))$ = .blue[$O(1)$]

---
### The asymptotic running time (big O notation)

#### Exercise

| $f(n)$ | dominant term  | $O(f(n))$ |
|---|---|---|
| $2n + 3n^3 + 100$ |   |   |
| $11n + 2^n + 0.2n^3$ |   |  |
| $log_2(n) + 5n$ |   |  |
| $nlog_2(n) + n^{1.5}$ |   |  |

---
### The asymptotic running time (big O notation)

#### Exercise

| $f(n)$ | dominant term  | $O(f(n))$ |
|---|---|---|
| $2n + 3n^3 + 100$ | $3n^3$  | $O(n^3)$  |
| $11n + 2^n + n^3$ | $2^n$  | $O(2^n)$ |
| $log_2(n) + 5n$ | $5n$  | $O(n)$  |
| $nlog_2(n) + n^{1.5} $ |  +:octocat: | +:octocat: |

--
To find which is dominant for large $n$:
$$\lim_{n\to\infty} \frac{nlog_2(n)}{n^{1.5}} = 0 \text{ or } \infty$$


.small[hint: :shipit: use l'hopital]


---
class: center
### Common asymptotic functions

<img src="/gallery/complexity.svg" style="width:65%;">

[{Orders of common functions}](https://en.wikipedia.org/wiki/Big_O_notation#Orders_of_common_functions)

---
### The asymptotic running time (big O notation)

#### Exercise: predict running time in seconds using small measurement

```c++
double meanArray(double *array, int size){.....} // O(n)
double varianceArray( double *array, int size ) { // n = size
    double sum = 0 ; // O(1)
    for( int i = 0; i < size ; ++i ) { // O(??)
        double diff = meanArray( array, size ) - array[i]; // O(n) 
        sum = sum + diff * diff ; // O(1)
    }
    return sum / size; // O(1)
}
```

###### How to approximately estimate the function `varianceArray` running time for $n=1000000$, i.e array of **1-million** element
###### **Givens**
    
* The function has complexity of $ O(n^2) $.
* The function executed in *2 melliseconds* when $n=2000$.

---
### The asymptotic running time (big O notation)

#### Exercise: predict running time in seconds using small measurement

```c++
double meanArray(double *array, int size){.....} // O(n)
double varianceArray( double *array, int size ) { .....} // O(n^2)
```

###### How to approximately estimate the function `varianceArray` running time for $n=1000000$, i.e array of **1-million** element
###### **Givens**
    
* The function has complexity of $ O(n^2) $.
* The function executed in *2 microseconds* when $n=2000$.

--
###### **Solution**

$\frac{T(n_1)}{T(n_2)} \approx \frac{n_1^2}{n_2^2}$

$T(1000000) \approx \left( \frac{1000000}{2000} \right)^2 T(2000) = 250000 \times 2$

$T(1000000) \approx 500000 = 0.5 \text{ seconds}$

---
## Sorting Algorithms (1)

--
**Problem** given a collection of **n** elements, it is required to sort the elements in ascending order.

--
* **Example** the following arbitrary array:

| 1 | 9 | 4 | 7 | 3 |

--
* After applying sorting in ascending order will result as:


| 1 | 3 | 4 | 7 | 9 |

---
### Bubble Sort

--
#### Visualized Bubble Sort 1

<iframe width="560" height="315" src="/gallery/bubblesort.mp4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

---
#### Visualized Bubble Sort 2

<img src="/gallery/Bubble-sort-example-300px.gif">
> Credits: [CC BY-SA 3.0](https://commons.wikimedia.org/w/index.php?title=User:Swfung8&action=edit&redlink=1)

---
#### Implementation

```c++
#include <algorithm>
// A function to implement bubble sort
void bubbleSort( double *array, int size )
{
    for ( int i = 0; i < size-1; i++ )
    {
        for ( int j = 0; j < size-1; j++ )
        {
            if ( array[j] > array[j+1])
                std::swap( array[j] , array[j+1] );
        }
    }
}
```

---
#### Time Complexity (Big O notation) Analysis

```c++
#include <algorithm>
// A function to implement bubble sort
void bubbleSort( std::vector< double > &array )
{
    for ( int i = 0; i < array.size()-1; i++ ) // T1 = n * T2
    {
        for ( int j = 0; j < array.size()-1; j++ ) // T2 = n * T3
        {
            if ( array[j] > arr[j+1] ) // T3 = 1
                std::swap( array[j] , array[j+1] );
        }
    }
}
```

--
$$ T(n) = T_1 = n \times T_2 = n \times n = n^2 $$


--
$$ O(T(n)) = O(n^2) $$


---
### Selection Sort


--
<img src="/gallery/selectionsort.gif">
> credits: [GNU license](https://en.wikipedia.org/wiki/Joestape89)


---
#### Implementation


--
```c++
#include <algorithm>
void selectionSort( double *array, int size )
{
    // One by one move boundary of unsorted subarray
    for (int i = 0; i < size -1; i++)
    {
        // Find the minimum element in unsorted array
        int min_idx = i;

        for (int j = i+1; j < size ; j++)
        {
            if ( array[j] < array[min_idx] )
                min_idx = j;
        }

        // Swap the found minimum element with the first element
        std::swap( array[min_idx] ,  array[i] );
    }
}
```

---
#### Complexity Analysis

```c++
#include <algorithm>
void selectionSort( double *array, int size ){
    for (int i = 0; i < size -1; i++) // T1 = n * ( T2 + T3 + T4 )
    {
        int min_idx = i; // T2 = 1
        for (int j = i+1; j < size ; j++) // T3 = O(n)
        {
            if ( array[j] < array[min_idx] )
                min_idx = j;
        }
        // Swap the found minimum element with the element i
        std::swap( array[min_idx] ,  array[i] ); // T4 = 1
    }
}
```

--
$$ T(n) = T_1 = n \times (T_2 + T_3 + T_4) = n \times( O(n) + 2 ) $$

$$ O(T(n)) = O(n^2) $$

---
# Thank you

{% include presentation-margins.html %}

</textarea>
    
    
