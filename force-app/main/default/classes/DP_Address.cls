public class DP_Address implements IPrototype {
    private class AddressException extends Exception{}
    public String streetName;
    public Integer houseNumber;

    public DP_Address(String streetName, Integer houseNumber) {
        if(streetName == null || streetName.length() == 0)
        {
            throw new AddressException('Street name cannot be empty.');
        }
        if(houseNumber == null)
        {
            throw new AddressException('House number cannot be empty.');
        }

        this.streetName = streetName;
        this.houseNumber = houseNumber;
    }

    public override String toString()
    {
        return String.format('Street Name: {0}, House Number: {1}', new List<Object>
        {
            this.streetName,
            this.houseNumber
        });
    }

    public Object deepCopy()
    {
        return new DP_Address(this.streetName, this.houseNumber);
    }
}