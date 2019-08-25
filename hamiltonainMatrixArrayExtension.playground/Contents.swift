//Hamiltonian Matrix
//To see the requirements for a Hamiltonian matrix
//https://en.wikipedia.org/wiki/Hamiltonian_matrix

//Extend the array type functionality to check for Hamiltonian double nested array types with element Int types
extension Array where Element == Array<Int>{
    func isHamiltonian() -> Bool{
        //Assume the matrix is not symmetrical and transpose
        var symmetrical: Bool = false
        var transposeIsEqualToZero:Bool = false
        
        //Collect the values in the 2 x 2 matrix
        let a = self[self.index(0, offsetBy: 0)][self.index(0, offsetBy: 0)], b = self[self.index(0, offsetBy: 0)][self.index(0, offsetBy: 1)],
        c = self[self.index(1, offsetBy: 0)][self.index(0, offsetBy: 0)], d = self[self.index(1, offsetBy: 0)][self.index(1, offsetBy: 0)]
        
        print(a)
        print(b)
        print(c)
        print(d)
        //Nested Function Hidden from the outside world unless I return it
        
        //Check
        func isSymmetric(for x: Int, comparedTo y: Int) -> Bool{
            if x == y{
                symmetrical = true
            }else{
                symmetrical = false
            }
            return symmetrical
        }
        
        //No need to transform the matrix we're just dealing with a 2x2 matrix
        func isTransposeEqualToZero(for x:Int, and y: Int) -> Bool{
            let sum = x + y
            if sum == 0 {
                transposeIsEqualToZero = true
            }else{
                transposeIsEqualToZero = false
            }
            return transposeIsEqualToZero
        }
        
        //Check if b and c are symmetrical
        symmetrical = isSymmetric(for: b, comparedTo: c)
        
        //Check if a + transpose(d) == 0
        transposeIsEqualToZero = isTransposeEqualToZero(for: a, and: d)
        
        let result: Bool = (transposeIsEqualToZero && symmetrical)
        //Return true if the matrix meets the requirements of the Hamiltonian matrix
        var output = result ? true : false
        
//        if transposeIsEqualToZero && symmetrical{
//            return true
//        }else{
//            return false
//        }
        return output
    }
    
}

var myHamiltonianMatrix = [
    [0,0],
    [0,0]
]

myHamiltonianMatrix[0][0]
myHamiltonianMatrix[myHamiltonianMatrix.index(1, offsetBy: 0)][myHamiltonianMatrix.index(0 , offsetBy: 0)]
print(myHamiltonianMatrix.isHamiltonian())
