enum Business: String {
    case loan = "대출"
    case deposit = "예금"
    
    var processTime: Double {
        switch self {
        case .loan:
            return 1.1
        case .deposit:
            return 0.7
        }
    }
}
