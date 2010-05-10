class Transaction {
    // Account account
    float amount
    /*Reason*/String reason
    Person changedBy
    Date changeDate
    // static mappedBy = [person:"owner",account:Account]
    // String notes

    static constraints = {
    }
    String toString() {
	return amount + " '" + reason + "'";
    }
}
