# 📊 SAMA Operational Shift Fulfillment Analysis

> ⚠️ **DISCLAIMER:** All data used in this project is **100% fictional and simulated** to protect company confidentiality. However, the methodology and business logic model real-world operational challenges faced in shift allocation and staffing for wholesale retail clients.

---

## 📌 Business Overview
In retail staffing operations (connecting supermarket chains with freelance workers for roles such as cashiers, stock replenishment, and floor operators), maintaining a high **Shift Fulfillment Rate** is crucial to prevent client store disruptions and revenue loss.

This project analyzes operational shift requests, identifying store-level fill rates, attendance dropouts, and high-demand clients to guide recruitment priorities.

---

## 🛠️ Methodology & Tech Stack

### 1. Relational Data Extraction (SQL - SQLite)
- Queried multi-table relational databases (`solicitacoes`, `lojas`, `redes`, `funcoes`).
- Aggregated volume demand using `GROUP BY` and filtered high-volume accounts with `HAVING SUM(qtd_solicitada) > 30`.
- Mapped regional demand distributions across cities.

### 2. Business KPI Dashboard (Microsoft Excel)
- Built executive-level summaries featuring key metrics (Total Requests: 3,496 | Realized Shifts: 2,680 | Global Fill Rate: 76.6%).
- Formatted visual bar charts to highlight store-level fulfillment bottlenecks below operational thresholds.

---

## 📊 Key Findings & Strategic Recommendations

- **Global Fill Rate:** Operational average stands at **76.66%**.
- **Critical Operational Bottleneck:** **Beta Formosa** holds the lowest fulfillment rate at **54.48%**, requiring immediate recruiter intervention and talent pool expansion.
- **Top Requesting Client:** **Gama Anápolis** leads volume with **324 requested shifts**.

---

## 📁 Repository Structure
- `queries.sql`: Complete SQL script containing operational aggregation queries.
- `diarias_exemplo.db`: SQLite database file containing relational tables.
- `base_para_excel.xlsx`: Workbook featuring raw data, pivot tables, and the Executive Dashboard.
