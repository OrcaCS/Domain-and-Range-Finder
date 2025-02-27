// find domain and range of a function

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("\nPlease enter your function type (linear / quadratic / square root / absolute): ");
        type = keyboard.next();

        if (type = "linear") {
        System.out.println("Format is y = mx + b. \nDomain is a real number / { x | x ∈ R} \nRange is a real number / {y | y ∈ R}");
        } else if (type = "quadratic") {
        System.out.println("Please enter the capital letter matching the form. \nA. ax^2 + bx + c = 0 \nB. y = a(x - h)^2 + k \nC. y = a(x - p)(x - q)");
          if (keyboard.next == "A") {
            System.out.print("\nPlease enter the a value: ")
            double quadA = keyboard.next();
            System.out.print("\nPlease enter the b value: ")
            double quadB = keyboard.next();
            System.out.print("\nPlease enter the c value: ")
            double quadC = keyboard.next();

            // turn ax^2 + bx + c into a(x -h)^2 + k
            // check is a is positive or negative
            // print out range (k value)

            System.out.println("Domain is a real number / {x | x ∈ R} \nRange is BLANK / {y | y ∈ R }"); // update
          } else if (keyboard.next == "B") {
            System.out.print("\nPlease enter the a value: ")
            double quadA = keyboard.next();
            System.out.print("\nPlease enter the h value: ")
            double quadH = keyboard.next();
            System.out.print("\nPlease enter the k value: ")
            double quadK = keyboard.next();

            System.out.println("Domain is a real number / {x | x ∈ R}");
            if (a > 0) {
                System.out.println("Range is anything greater than or equal to " + quadK + " / {y | y ∈ R | y ≥ " + quadK + " }");
            } else if (a < 0) {
                System.out.println("Range is anything less than or equal to " + quadK + " / {y | y ∈ R | y ≤ " + quadK + " }");
            }
          }
        }
        
        if (type = "square root") {
        }

        if (type = "absolute") {
        }
