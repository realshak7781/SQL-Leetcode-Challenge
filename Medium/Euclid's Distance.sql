--https://www.interviewbit.com/problems/euclid-s-distance/

SELECT SQRT(
    POW(MAX(XCoordinate) - MIN(XCoordinate), 2) + 
    POW(MAX(YCoordinate) - MIN(YCoordinate), 2)
) AS A
FROM HOUSES;


--Logic is flawed for this question :



---

### ⚠️ Problem With the Current Logic

The query:

```sql
SELECT SQRT(
    POW(MAX(X) - MIN(X), 2) + 
    POW(MAX(Y) - MIN(Y), 2)
) AS euclidean_distance
FROM HOUSES;
```

**does not necessarily give the true distance between two actual points in the table.**

Instead, it assumes that:

* One point lies at `(MIN(X), MIN(Y))`
* Another at `(MAX(X), MAX(Y))`

But in reality:

* The **point with MAX(X)** might **not** have MAX(Y), and vice versa.
* So, you're combining x from one row and y from another — this may form a **non-existent point**.

---
