import Foundation

public struct MailChecker {
    public static func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    public static func getDomain(_ email: String) -> Result<String,Error>{
        if Array(email).contains("@") {
            let result = String(email.suffix(Array(email).firstIndex(of:"@")!))
            return .success(result)
        } else {
            return .failure(Error.self as! Error)
        }
    }
}
