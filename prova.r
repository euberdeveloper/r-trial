# -----

my_string <- "ciao"
print(my_string)

# -----
print("------------------------------------------")
# -----

bool <- TRUE
num <- 3
int <- 4L
complex <- 5 + 5i
ch <- "stringa"
raw <- charToRaw(ch)
vec <- c("a", "b", "c")
l <- list("a", 0, TRUE, c("a", "b"))
m <- matrix(c("a", "b", "c", "d", "e", "f"), nrow = 3, ncol = 2)
a <- array(c("a", "b", "c", "d", "e"), dim = c(4, 3, 2, 2))
f <- factor(c(0, 1, 2, 2, 2, 1, "a", "a", "b"))
data_frame <- data.frame(
    sex = c("male", "bene"),
    age = c(23, 24)
)

print(class(bool))
print(class(num))
print(class(int))
print(class(complex))
print(class(ch))
print(class(raw))
print(class(vec)) # prints character
print(class(l))
print(class(m))
print(class(a))
print(class(f))
print(class(data_frame))



# -----
print("------------------------------------------")
# -----


var.with.dots <- "che cazzo è sta merda" # nolint
print(var.with.dots)
5 -> right_var_ma_che_cazz
print(right_var_ma_che_cazz)
7 -> a -> b
cat(a, b)
print("haho")
"hidden " -> .hidden_var
print(.hidden_var)
mah <<- 1
print(mah)


# -----
print("------------------------------------------")
# -----


print(ls())
print(ls(pattern = "v"))
print(ls(all.names = TRUE))


# -----
print("------------------------------------------")
# -----


# remove everything
rm(list = ls())
print(ls())


# -----
print("------------------------------------------")
# -----


a <- c(1, 2, 3)
b <- c(3, 2, 1)

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a %% b)
print(a %/% b)
print(a^b)

print(a > b)
# ....
print(c(1, 0, 0) && c(1, 0, 0)) # takes just first elements

# -----
print("------------------------------------------")
# -----

print(2:8)
print(2:-4)
print(1 %in% 0:5)

m <- matrix(c(1, 2), nrow = 4, ncol = 6)
print(m)
print(t(m) %*% m)

# -----
print("------------------------------------------")
# -----

if (is.integer(40L)) {
    print("it is integer")
} else {
    print("merda")
}

# -----
print("------------------------------------------")
# -----

a <- switch(1,
    "one",
    "two"
)
print(a)
a <- switch("bar",
    foo = {
        "one"
    },
    bar = {
        "two"
    }
)
print(a)

# -----
print("------------------------------------------")
# -----

i <- 0
repeat {
    print(i)
    i <- i + 1
    if (i > 5) break
}

i <- 0
while (i <= 5) {
    print(i)
    i <- i + 1
}

for (l in LETTERS[1:5]) {
    if (l == "C") {
        next
    }
    print(l)
}

# -----
print("------------------------------------------")
# -----

print(1:10)
print("/")
print(seq(1, 10))

my_procedure <- function(n = 2) {
    v <- 1:n
    print(v^2)
}
my_procedure((5))
my_procedure(n = 4)

new_function <- function(a, b) {
    print(a^2)
    print(a)
}
# Evaluate the function without supplying one of the arguments.
new_function(6)

# -----
print("------------------------------------------")
# -----


phrase <- paste("ciao", "come", "va", sep = " ")
print(phrase)

# -----
print("------------------------------------------")
# -----

# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)


# -----
print("------------------------------------------")
# -----

for (n in 0:nchar("ciao")) {
    print(n)
}

# -----
print("------------------------------------------")
# -----

print(0.5:10.5)
print(seq(0.5, 10.5, by = 1.5))

# -----
print("------------------------------------------")
# -----

t <- c("Lun", "Mar", "Mer", "Gio", "Ven", "Sab", "Dom")
print(
    t[c(1, 3, 5)]
)
print(
    t[c(1, 5, 3, 5)]
)
print(
    t[c(FALSE, TRUE, FALSE, FALSE, TRUE, TRUE)]
)
print(
    t[c(-2, -5)]
)

print(sort(t))
print(sort(t, decreasing = TRUE))

t[9] <- "Non esiste"
print(t)


# -----
print("------------------------------------------")
# -----

l <- list(0, 1, "ciao")
c("zero", "uno", "saluto") -> names(l)
print(l)
cat(">>>>>", "\n")
print(l[1]) # returns a list
print(l["saluto"]) # returns a list
print(l$saluto) # returns an el
cat(">>>>>", "\n")
la <- list(1, 2)
lb <- list(3, 4)
names(lb) <- c("a", "b")
print(c(la, lb))
la <- unlist(la)
print(la)


# -----
print("------------------------------------------")
# -----


m <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
print(m)

m <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = TRUE)
print(m)

m <- matrix(c(1, 2, 3, 4),
    nrow = 2, ncol = 2,
    dimnames = list(c("x", "y"), c("a", "b"))
)
print(m)

m <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8),
    nrow = 4, ncol = 4, byrow = TRUE,
    dimnames = list(c("a", "b", "c", "d"), c("e", "f", "g", "h"))
)
print(m)

print(m[1, 2])
print(m[1])
print(m[1, ])
print(m[, 1])
print(m[, 1, drop = FALSE])
print(m[1:2, 1:2])
print(m[c(2, 1), c(3, 1, 3)])
print(m[c("b", "d"), ])

# -----
print("------------------------------------------")
# -----

a <- array(c(1, 2, 3, 4),
    dim = c(4, 4, 2),
    dimnames = list(
        c("a", "b", "c", "d"),
        c("e", "f", "g", "h"), c("Matrix 1", "matrix 2")
    )
)
print(a)

new_array <- array(c(0, 1, 2), dim = c(3, 3, 2))
print(new_array)

result <- apply(new_array, c(3, 2, 1), sum)
print(result)

# -----
print("------------------------------------------")
# -----

# -----
print("------------------------------------------")
# -----

data <- c("pizza", "pasta", "pasta", "pizza", "pane")
f <- factor(data)
print(f)

height <- c(110, 170, 190)
weight <- c(60, 80, 90)
sex <- c("male", "female", "male")

df <- data.frame(height, weight, sex)
print(df)
print(df$sex)
print(df$height)

f <- gl(3, 2, labels = c("cane", "gatto", "mulo"))
print(f)

# -----
print("------------------------------------------")
# -----

name <- c("Eugenio", "Marco", "Luca")
surname <- c("Berretta", "Rossi", "Verdi")
age <- c(23, 34, 45)
school <- c("TUM", "UNITN", "UNIBZ")

df <- data.frame(name, surname, age, school)
print(df)

print(df$school)
print(df["school"])
print(df[c(1, 2), c(2, 1)])
print(df[, 4])

print(
    str(df)
)
print(summary(df))

# -----
print("------------------------------------------")
# -----

print(.libPaths())
# print(library()) # nolint
# install.packages("ggplot2") # nolint

# -----
print("------------------------------------------")
# -----


paste(getwd(), "assets", sep = "/") -> input_dir
input_path <- paste(input_dir, "prova.csv", sep = "/")
output_path <- paste(input_dir, "prova_2.csv", sep = "/")
print(input_path)
data <- read.csv(input_path)
print(data)
# data <- read.csv(input_path, header = FALSE) # nolint
# print(data) # nolint

print(data$salary)
print(data[, 3])
print(data["salary"])
print(data[3])
print(max(data$salary))
print(max(data["salary"]))
print(">>>>>>>>>")
print(subset(data, salary > 100 & id < 6))
print(">>>>>>>>>")
new_data <- subset(data, salary > 100 & id < 6)
write.csv(new_data, output_path)

# -----
print("------------------------------------------")
# -----

grepl("xlsx",installed.packages()) ->> v
print(length(v))
print(any(v))


# -----
print("------------------------------------------")
# -----

is_json_pckg_installed = any(grepl("rjson", installed.packages()))
if (!is_json_pckg_installed) {
    install.packages("rjson")
}

library("rjson")
input_path = paste(input_dir, "prova.json", sep = "/")
result <- fromJSON(file = input_path)
print(result)
print(">>>>>>>>>>>>>>>>")
print(result$a$c)