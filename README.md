# Data-Analyst-Internship
1. I looked for missing values
While going through the dataset, I noticed that some rows didn’t have income values - around 24 of them.
Instead of deleting those rows, I filled the missing values with the median income. That way, it stays balanced and doesn’t affect the analysis too much.

2. I checked for duplicates
I did a quick scan to see if any rows were repeated - just to clean up any copy-paste errors or accidental data duplication.
If there were any, I removed them. Better to be safe!

3. I fixed messy text entries
Some of the columns like "Education" and "Marital_Status" had messy or inconsistent text — like "graduation", " Graduation ", "MARRIED", etc.
I cleaned them up by removing extra spaces and making sure all values were in Title Case.

4. I made the date column usable
The "Dt_Customer" column was written as plain text like '04-09-2012'.
I converted it into a proper date format, so that you can easily sort by date, filter by year, or do time-based analysis.

5. I cleaned up the column headers
Some column names were hard to read like MntMeatProducts or had capital letters and no separators.
So I renamed all of them to be lowercase with underscores, like mnt_meat_products, which is much easier to understand and work with - especially in Excel or Python.

6. I saved the cleaned data into Excel
After doing all this cleanup, I saved the final version as a .xlsx file so you can open it in Excel right away and start analyzing without dealing with the mess.
