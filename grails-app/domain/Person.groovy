class Person {

    String name
    static hasMany = [account:Account,transaction:Transaction]
    static mappedBy = [account:"owner"]
    // String notes

    static constraints = {
	name()
    }
    String toString() {
	return name
    }
}
