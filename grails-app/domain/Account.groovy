class Account {

    static constraints = {
    }

    float balance
    Person owner
    Date updatedDate
    Person updatedBy
    // String notes
    static hasMany = [transaction:Transaction]

    String toString() {
	return owner + ": " + balance
    }
}
