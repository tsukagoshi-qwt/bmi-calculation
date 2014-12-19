
import Foundation

class calculation {
    var height : Float?
    var weight : Float?
    var BMI : Float?
    
    init(h : Float, w: Float){
        self.height = h/100;
        self.weight = w;
    }
    
    func calcBMI() -> Float {
        self.BMI = self.weight! / (self.height! * self.height!);
        return self.BMI!
    }
    
    func calcStdWight() -> Float {
        var StdWeight  = (self.height! * self.height!)*22
        return StdWeight;
    }
    
    //18.5未満で「やせ」18.5以上25未満で「標準」 25以上30未満で「肥満」30以上で「高度肥満」
    func judge () -> String {
        if(self.BMI! > 0) {
            switch (self.calcBMI()){
                case 0..<18.5:
                    return "痩せ"
                case 18.5..<25:
                    return "標準"
                case 25..<30:
                    return "肥満"
                default:
                    return "高度肥満"
            }
        }else{
            return ""
        }
    }
}