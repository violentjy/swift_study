import Foundation

public class PublicModel {
    public init() {}
    
    private func privateFunction() {
        print("This is private function")
    }
    
    fileprivate func fileprivateFunction() {
        print("This is fileprivate function")
    }
    
    func internalFunction() {
        print("This is internal function")
    }
    
    public func publicFunction() {
        print("This is public function")
    }
}

class PublicClassTest {
    let model = PublicModel()
    
    func callPrivate() {
//        model.privateFunction() // Error!
    }
    
    func callFileprivate() {
        model.fileprivateFunction()
    }
    
    func callInternal() {
        model.internalFunction()
    }
    
    func callPublic() {
        model.publicFunction()
    }
}
