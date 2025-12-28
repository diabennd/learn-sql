## SQL Study Notes
This repository is my personal journal of learning SQL, inspired by courses from [Luke Barousse](https://www.youtube.com/@LukeBarousse)'s Youtube channel. It documents how I started from scratch and gradualy built up my skills to tacle more advanced queries.

### 🎯 Learning Goals: 
- Develop a solid understanding of SQL fundamentals
- Confidently use SQL to perform practical **data analysis**
- Improve my ability to read and write complex queries(JOIN, subquery, aggregation, CTEs, and more)
- Practice SQL through real-world, project-based datasets

## 📚 Courses Followed

#### SQL for Data Analytics – Learn SQL in 4 Hours
**Level:** Beginner 
**Topics learned:**
- `SELECT`, `FROM`
- `WHERE`, `AND`, `OR`
- `ORDER BY`, `LIMIT`
- Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
- `GROUP BY`, `HAVING`

**Outcome:**
> lorem ipsum


---

## 🧪 Example Queries

### Basic Filtering
```sql
SELECT name, salary
FROM employees
WHERE salary > 5000000
ORDER BY salary DESC;