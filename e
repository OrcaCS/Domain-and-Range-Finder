import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner keyboard = new Scanner(System.in);

        System.out.println("\nPlease enter your function type (linear / quadratic / square root / absolute): ");
        String type = keyboard.nextLine();

        if (type.equals("linear")) {
        System.out.println("Format is y = mx + b. \nDomain is a real number / { x | x ∈ R} \nRange is a real number / {y | y ∈ R}");
        } else if (type.equals("quadratic")) {
        System.out.println("\nPlease enter the capital letter matching the form. \nA. ax^2 + bx + c = 0 \nB. y = a(x - h)^2 + k \nC. y = a(x - p)(x - q)");
        String form = keyboard.nextLine();
          if (form.equals("A")) {
            System.out.print("\nPlease enter the a value: ");
            double quadA = keyboard.nextDouble();
            System.out.print("\nPlease enter the b value: ");
            double quadB = keyboard.nextDouble();
            System.out.print("\nPlease enter the c value: ");
            double quadC = keyboard.nextDouble();

            double quadH = quadB / (2 * quadA);
            double quadK = quadC - quadB * quadB / (4 * quadA);
            
            if (quadA != 1) {
                if (quadH > 0) {
                    if (quadK > 0) {
                        System.out.println("Your vertex form is: " + quadA + "(x + " + quadH + ") + " + quadH);
                    } else if (quadK < 0) {
                        System.out.println("Your vertex form is: " + quadA + "(x + " + quadH + ") - " + Math.abs(quadK));
                    }
                } else { // h < 0
                    if (quadK > 0) {
                        System.out.println("Your vertex form is: " + quadA + "(x - " + Math.abs(quadH) + ") + " + quadH);
                    } else if (quadK < 0) {
                    System.out.println("Your vertex form is: " + quadA + "(x - " + Math.abs(quadH) + ") - " + Math.abs(quadK));
                    }
                }
            }
            if (quadA == 1) {
                if (quadH > 0) {
                    if (quadK > 0) {
                    System.out.println("Your vertex form is: " + quadA + "(x + " + quadH + ") + " + quadH);
                    } else if (quadK < 0) {
                    System.out.println("Your vertex form is: " + quadA + "(x + " + quadH + ") - " + Math.abs(quadK));
                    }
                } else { // h < 0
                    if (quadK > 0) {
                        System.out.println("Your vertex form is: (x - " + Math.abs(quadH) + ") + " + quadH);
                    } else if (quadK < 0) {
                    System.out.println("Your vertex form is: (x - " + Math.abs(quadH) + ") - " + Math.abs(quadK));
                    }
                }
            }
            
            System.out.println("Domain is a real number / {x | x ∈ R}");
            
            if (quadA > 0) {
                System.out.println("Range is anything greater than or equal to " + quadK + " / {y | y ∈ R | y ≥ " + quadK + " }");
            } else if (quadA < 0) {
                System.out.println("Range is anything less than or equal to " + quadK + " / {y | y ∈ R | y ≤ " + quadK + " }");
            }
            }

          } else if (form.equals("B")) {
            System.out.print("\nPlease enter the a value: ");
            double quadA = keyboard.nextDouble();
            System.out.print("\nPlease enter the k value: ");
            double quadK = keyboard.nextDouble();

            System.out.println("Domain is a real number / {x | x ∈ R}");
            if (quadA > 1) {
                System.out.println("Range is anything greater than or equal to " + quadK + " / {y | y ∈ R | y ≥ " + quadK + " }");
            } else { // quadA < 0
                System.out.println("Range is anything less than or equal to " + quadK + " / {y | y ∈ R | y ≤ " + quadK + " }");
            }
          }
        } else if (type.equals("square root")) {
            // placeholder
        } else if (type.equals("absolute")) {
            // placeholder
        }
    }
}
