package main.models.indentModels.inputModels;

public class FilterInput {
    private int indentId;
    private String fromDate;
    private String toDate;

    // Getters and setters

    public String getFromDate() {
        return fromDate;
    }

    public int getIndentId() {
		return indentId;
	}

	public void setIndentId(int indentId) {
		this.indentId = indentId;
	}

	public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }
}

