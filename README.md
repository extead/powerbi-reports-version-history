# Power BI version history template

It's an old style alternative for the new Projects feature in Power BI - https://learn.microsoft.com/en-us/power-bi/developer/projects/projects-overview

## Workflow (in Windows, without using VS Code)

### Downloading report changes from the repository
1. Perform a git pull
2. Select the report you want to edit (for example, `reports/Analytics Reports/First Analytics Report`)
3. For convenience, open another window next to the project (you need to see the files `report-compile.bat` and `report-extract.bat` in it)
4. Drag the directory `reports/Analytics Reports/First Analytics Report` and drop it onto the `report-compile.bat` file
5. The report will compile into the file `reports/Analytics Reports/First Analytics Report.pbix`
6. Open the file, edit, save changes, and publish if necessary

### Sending report changes to the repository

1. If the report is new, place it in the appropriate directory. For example, we have a report that we put in `reports/Analytics Reports/Second Analytics Report.pbix`
2. For convenience, open another window next to the project (you need to see the files `report-compile.bat` and `report-extract.bat` in it)
3. Drag the file `reports/Analytics Reports/Second Analytics Report.pbix` and drop it onto the `report-extract.bat` file
6. The report will be unpacked into the directory `reports/Analytics Reports/Second Analytics Report` next to the report file
7. Add changes to git `git add "reports/Analytics Reports/Second Analytics Report"`
8. Make a commit `git commit -m "few changes"`
9. Perform a `git push`
## Workflow (in Windows, using VS Code)

### Downloading report changes from the repository
1. Perform a `git pull`
2. Select the report you want to edit (for example, `reports/Analytics Reports/First Analytics Report`)
3. In VS Code, open the file `reports/Analytics Reports/First Analytics Report/.pbixproj.json`
4. Press Ctrl+Shift+P
5. Enter Task: Run Task and press Enter
6. Select Compile
7. The report will compile into the file `reports/Analytics Reports/First Analytics Report.pbix`
8. Open the file, edit, save changes, and publish if necessary

### Sending report changes to the repository
1. If the report is new, place it in the appropriate directory. For example, we have a report that we put in `reports/Analytics Reports/Second Analytics Report.pbix`
2. In VS Code, open the file `reports/Analytics Reports/Second Analytics Report.pbix` (a tab with this file should appear, the content itself will not display, this is normal)
3. Press Ctrl+Shift+P
4. Enter Task: Run Task and press Enter
5. Select Extract
6. The report will be unpacked into the directory `reports/Analytics Reports/Second Analytics Report` next to the report file
7. Add changes to git `git add "reports/Analytics Reports/Second Analytics Report"`
8. Make a commit `git commit -m "few changes"`
9. Perform a `git push`