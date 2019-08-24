//Hamiltonian Matrix
//Is the provided matrix Hamiltionian
//https://en.wikipedia.org/wiki/Hamiltonian_matrix

var matrix: [[Int]] = [[1,2],[2,4]]
//print(matrix[0])
//print(matrix[1])

//Extend the array type functionality to check for Hamiltonian double nested array types with element Int types
extension Array where Element == Array<Int>{
    func isHamiltonian() -> Bool{
        //self.index(0, offsetBy: 0)
        var symmetrical: Bool = false
        var transposeIsEqualToZero:Bool = false
        
        let a = self[self.index(0, offsetBy: 0)][self.index(0, offsetBy: 0)], b = self[self.index(0, offsetBy: 0)][self.index(0, offsetBy: 1)],
        c = self[self.index(1, offsetBy: 0)][self.index(0, offsetBy: 0)], d = self[self.index(1, offsetBy: 0)][self.index(1, offsetBy: 0)]
        
        print(a)
        print(b)
        print(c)
        print(d)
        //Nested Function Hidden from the outside world unless I return it
        
        //Check if b and c are symmetrical
        func isSymmetric(for x: Int, comparedTo y: Int) -> Bool{
            if x == y{
                symmetrical = true
            }else{
                symmetrical = false
            }
            return symmetrical
        }
        
        //Check if a + transpose(d) == 0
        func isTransposeEqualToZero(for x:Int, and y: Int) -> Bool{
            let sum = x + y
            if sum == 0 {
                transposeIsEqualToZero = true
            }else{
                transposeIsEqualToZero = false
            }
            return transposeIsEqualToZero
        }
        
        //Run code
        symmetrical = isSymmetric(for: b, comparedTo: c)
        transposeIsEqualToZero = isTransposeEqualToZero(for: a, and: d)
        
        if transposeIsEqualToZero && symmetrical{
            return true
        }else{
            return false
        }
    
    }
    
}

var myHamiltonianMatrix = [
    [0,0],
    [0,0]
]
myHamiltonianMatrix[0][0]
myHamiltonianMatrix[myHamiltonianMatrix.index(1, offsetBy: 0)][myHamiltonianMatrix.index(0 , offsetBy: 0)]
print(myHamiltonianMatrix.isHamiltonian())



