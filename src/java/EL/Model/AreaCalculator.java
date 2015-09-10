
package EL.Model;

public class AreaCalculator {
    
   public double calculateRectangle(String length, String width) {
        double area = 0;
        
        return area = Double.parseDouble(length) * Double.parseDouble(width);
    }
    
    public double calculateTriangle (String height, String base) {
        double area = 0;
        
        return area = (Double.parseDouble(height) * Double.parseDouble(base)) / 2;
    }
    
    public double calculateCircle (String radius) {
        double area = 0;
        
        return area = Math.PI * Math.pow(Double.parseDouble(radius), 2);
        
    }
}
