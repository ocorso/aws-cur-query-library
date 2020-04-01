/* This sample query is used in the AWS blog post:
 * 'Querying your AWS Cost and Usage Report using Amazon Athena'
 * https://bit.ly/cur-athena-blog
 */
SELECT line_item_product_code,
       SUM(line_item_unblended_cost) AS cost
FROM <YOUR TABLE NAME>
WHERE YEAR='2019'
GROUP BY line_item_product_code HAVING SUM(line_item_unblended_cost) > 0
ORDER BY line_item_product_code;