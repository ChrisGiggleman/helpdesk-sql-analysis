-- Help Desk SQL Analysis
-- Chris Giggleman

-- =====================================
-- Tickets by Department
-- =====================================
SELECT department, COUNT(*) AS ticket_count
FROM tickets
WHERE department IS NOT NULL
GROUP BY department
ORDER BY ticket_count DESC;

-- =====================================
-- Tickets by Issue Type
-- =====================================
SELECT issue_type, COUNT(*) AS ticket_count
FROM tickets
WHERE issue_type IS NOT NULL
GROUP BY issue_type
ORDER BY ticket_count DESC;

-- =====================================
-- Monthly Ticket Volume
-- =====================================
SELECT month, COUNT(*) AS tickets
FROM tickets
GROUP BY month
ORDER BY MIN(monthsort);

-- =====================================
-- Average Resolution Time by Priority
-- =====================================
SELECT priority,
       ROUND(AVG(resolution_time_hours), 2) AS avg_resolution_time
FROM tickets
GROUP BY priority;

-- =====================================
-- Technician Performance
-- =====================================
SELECT technician,
       COUNT(*) AS tickets_handled,
       ROUND(AVG(resolution_time_hours), 2) AS avg_resolution_time
FROM tickets
GROUP BY technician;
