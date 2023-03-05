I am editing the README file. Adding some more details about the project description.# P1_Probstat_C_5025201272

Praktikum PROBSTAT 2022 Modul 1
I am editing the README file. Adding some more details about the project description.
## Sarah Alissa Putri - 5025201272

### Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

a. Distribusi Geometrik
```ruby
dgeom(x=3, prob=0.20)
```
Output :
```ruby
dgeom(x=3, prob=0.20)
[1] 0.1024
```

b. Mean distribusi geometrik
> Dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3

```ruby
mean(rgeom(n=10000, prob=0.20) == 3)
```

Output :
```ruby
mean(rgeom(n=10000, prob=0.20) == 3)
[1] 0.1038
mean(rgeom(n=10000, prob=0.20) == 3)
[1] 0.0969
```
c. Kesimpulan yang didapatkan adalah hasil 1a selalu sama, sedangkan 1b nilainya berubah-ubah. Hasil perhitungan pada poin a dan b nilainya tidak berbeda jauh.

d. Histogram  Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```ruby
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = 0.20)) %>%
  mutate(Failures = ifelse(x == 3, 3, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama",
       subtitle = "Geometric(.2)",
       x = "Kegagalan sebelum sukses pertama (x)",
       y = "Peluang")
```
Untuk dapat menggunakan library dplyr dan ggplot2, perlu untuk melakukan instalasi packages terlebih dahulu.

![image](https://user-images.githubusercontent.com/81427127/162610532-012bc8b7-629c-4556-a596-7e9176d9f259.png)

e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```ruby
 #rataan
 rataan = 1/0.20
 paste("Nilai rataan adalah ", rataan)
 
 #varian
 varian = (1-0.20)/0.20^2
 paste("Nilai varian adalah ", varian)
 ```
 
### Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

a. Peluang terdapat 4 pasien yang sembuh.
```ruby
dbinom(4, 20, 0.2)
```
Output :
```ruby
dbinom(4, 20, 0.2)
[1] 0.2181994
```

b. Grafik Histogram
![image](https://user-images.githubusercontent.com/81427127/162610690-082ace51-2d47-4e15-bb55-c6abf16d20e6.png)

c.  Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```ruby
p = 0.2
n = 4
rataan = n*p
paste("Nilai rataan adalah ", rataan)

varian = n*p*(1-p)
paste("Nilai varian adalah ", varian)
```

Output :
```ruby
p = 0.2
> n = 4
> rataan = n*p
> paste("Nilai rataan adalah ", rataan)
[1] "Nilai rataan adalah  0.8"
> 
> varian = n*p*(1-p)
> paste("Nilai varian adalah ", varian)
[1] "Nilai varian adalah  0.64"
```

### Soal 3
>Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

a. Peluang bahwa 6 bayi akan lahir di rumah sakit besok
```ruby
dpois(6, 4.5)
```
Output :
```ruby
dpois(6, 4.5)
[1] 0.1281201
```

b. Histogram kelahiran 6 bayi akan lahir di rumah sakit selama
setahun (n = 365)
![image](https://user-images.githubusercontent.com/81427127/162610860-a7c5e19f-93b1-4170-81ad-d2455aa1f45a.png)

c. Kesimpulan yang didapatkan, hasil simulasi nya sekitar 11.5% sedangkan nilai exactnya sebesar 12,8% di mana ini sesuai karena nilai simulasi mendekati nilai exact.
```ruby
babies %>% dplyr::summarize(Enam_Bayi = sum(babies$data == 6) / n())
```
Output : 
```ruby
Enam_Bayi
[1] 0.1150685
```
d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
Output :
```lambda = 4.5
> rataan = varian = lambda
> rataan
[1] 4.5
> varian
[1] 4.5
```

### Soal 4
> Diketahui nilai x = 2 dan v = 10. Tentukan:

a. Fungsi Probabilitas dari Distribusi Chi-Square.
Source code dan output :
```ruby
dchisq(2,10)
[1] 0.007664155
 ```
b. Histogram dari Distribusi Chi-Square dengan 100 data random.
 ![image](https://user-images.githubusercontent.com/81427127/162611281-6c53104b-f126-4d44-afff-01ce3bc9be15.png)

C. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
Source code dan output :
```ruby
v = 10
> rataan = v
> rataan
[1] 10
> varian = 2*v
> varian
[1] 20
```

### Soal 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

a. Fungsi Probabilitas dari Distribusi Exponensial
Source code dan output :
```ruby
set.seed(1)
> rexp(3)
[1] 0.7551818 1.1816428 0.1457067
```

b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
- 10 bilangan random
  ![image](https://user-images.githubusercontent.com/81427127/162611550-a0b67502-08e3-4aa8-8359-17c480c3febc.png)
- 100 bilangan random
  ![image](https://user-images.githubusercontent.com/81427127/162611569-3d00bcf7-25a5-4af2-82cf-b81360001f0c.png)
- 1000 bilangan random
  ![image](https://user-images.githubusercontent.com/81427127/162611581-c4bb4d35-4ca7-4f7b-bc75-b2928bb862f6.png)
- 10000 bilangan random
  ![image](https://user-images.githubusercontent.com/81427127/162611590-41c10cae-e160-498c-9aca-039c57c31899.png)
  
c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Source code dan output :
```ruby
n = 100
 lambda = 3
 
 set.seed(1)
 rataan = mean(rexp(n, lambda))
 varian = (sd(rexp(n, lambda)))^2
 rataan
[1] 0.3435588
 varian
[1] 0.06560765
```

### Soal 6
> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.

a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.
```ruby
n = 100
m = 50
std = 8

data <- rnorm(n,m,std)
avg <- mean(data)
x1 <- floor(avg)
x2 <- round(avg)

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="black")
```
![image](https://user-images.githubusercontent.com/81427127/162611889-652b68bf-e6e0-4ae7-8aba-df80ba2466b7.png)

b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_ DNhistorigram
```ruby
x <- rnorm(100,50,8)
hist(x, breaks = 50,
     main = "5025201272_Sarah Alissa Putri_Probstat_C_DNhistogram")
```
![image](https://user-images.githubusercontent.com/81427127/162611947-cdb338b5-3574-4f89-8ed7-17561d3ed384.png)

c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
```ruby
var(x)
[1] 56.64935
```

## Referensi
- https://rpubs.com/mpfoley73/458721
- https://mse.redwoods.edu/darnold/math15/spring2013/R/Activities/MeanVarStd.html
- https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html
