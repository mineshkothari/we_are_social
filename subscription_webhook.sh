curl -H "Content-Type: application/json" -X POST -d '
{
  "object": {
    "id": "in_1BVW0MDlGgqnGwaX6uuO7cnm",
    "object": "invoice",
    "amount_due": 999,
    "application_fee": null,
    "attempt_count": 0,
    "attempted": true,
    "billing": "charge_automatically",
    "charge": "ch_1BVW0MDlGgqnGwaX85OTlb9H",
    "closed": true,
    "currency": "gbp",
    "customer": "cus_BtIbpwuVVLqq41",
    "date": 1512440274,
    "description": null,
    "discount": null,
    "ending_balance": 0,
    "forgiven": false,
    "lines": {
      "object": "list",
      "data": [
        {
          "id": "sub_BtIbx91R3VdLsw",
          "object": "line_item",
          "amount": 999,
          "currency": "gbp",
          "description": null,
          "discountable": true,
          "livemode": false,
          "metadata": {
          },
          "period": {
            "start": 1512440274,
            "end": 1515118674
          },
          "plan": {
            "id": "REG_MONTHLY",
            "object": "plan",
            "amount": 999,
            "created": 1512438702,
            "currency": "gbp",
            "interval": "month",
            "interval_count": 1,
            "livemode": false,
            "metadata": {
            },
            "name": "Monthly Subscription",
            "statement_descriptor": "Social Monthly Sub",
            "trial_period_days": null
          },
          "proration": false,
          "quantity": 1,
          "subscription": null,
          "subscription_item": "si_BtIbmoMxSQo0Ma",
          "type": "subscription"
        }
      ],
      "has_more": false,
      "total_count": 1,
      "url": "/v1/invoices/in_1BVW0MDlGgqnGwaX6uuO7cnm/lines"
    },
    "livemode": false,
    "metadata": {
    },
    "next_payment_attempt": null,
    "number": "699759ae4c-0001",
    "paid": true,
    "period_end": 1512440274,
    "period_start": 1512440274,
    "receipt_number": null,
    "starting_balance": 0,
    "statement_descriptor": null,
    "subscription": "sub_BtIbx91R3VdLsw",
    "subtotal": 999,
    "tax": null,
    "tax_percent": null,
    "total": 999,
    "webhooks_delivered_at": null
  },
  "previous_attributes": null
}' http://localhost:8000/subscriptions_webhook/