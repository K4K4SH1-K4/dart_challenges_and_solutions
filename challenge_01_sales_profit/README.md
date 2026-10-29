## 01. Small Business Sales & Profit Intelligence System

1.  Level 1 · Foundation
    Building a console application for a Malawian small business that needs to know whether it is actually making money.
    The real problem: Many small businesses confuse cash received with profit earned.
    Your system must:

- Store a business name, product name, selling price, purchase cost, and quantity sold.
- Calculate total sales revenue, total cost of goods sold, gross profit, and gross profit margin.
- Calculate discounts and determine how they affect profitability.
- Use conditional logic to classify the result as a loss, break-even, or profit.
- Reject invalid quantities and negative prices.
- Use functions for calculations and a class to represent a product or sale.
- Print a clean business report using string interpolation and formatted output.

## Serious edge cases:

- The business sells nothing.
- The selling price equals the purchase cost.
- A discount makes the sale unprofitable.
- The quantity is zero or negative.
- The cost is higher than the selling price.

## Acceptance test

A trader buys 12 items at MWK 4,500 each and sells them at MWK 6,000 each, with a 10% discount on the total
selling price.
Your program must calculate:

- Revenue after discount: MWK 64,800
- Cost of goods sold: MWK 54,000
- Gross profit: MWK 10,800
- Gross profit margin: 16.67% approximately

## Note!

Dart Apprentice · Real-World Engineering Challenges
If your output is wrong, your system has failed the test.
Concepts tested: Variables, constants, types, arithmetic, strings, control flow, functions, loops, and classes
