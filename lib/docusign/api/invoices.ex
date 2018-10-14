# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.Invoices do
  @moduledoc """
  API calls for all endpoints tagged `Invoices`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Retrieves a billing invoice.
  Retrieves the specified invoice.   ###### Note: If the &#x60;pdfAvailable&#x60; property in the response is set to *true*, you can download a PDF version of the invoice. To download the PDF, make the call again and change the value of the &#x60;Accept&#x60; property in the header to &#x60;Accept: application/pdf&#x60;.  Privileges required: account administrator  The response returns a list of charges and information about the charges. Quantities are usually shown as &#39;unlimited&#39; or an integer. Amounts are shown in the currency set for the account.  **Response** The following table provides a description of the different &#x60;chargeName&#x60; property values. The information will grow as more chargeable items are added to the system.  | chargeName | Description | | --- | --- | | id_check | ID Check Charge | | in_person_signing | In Person Signing charge | | envelopes Included | Sent Envelopes for the account | | age_verify | Age verification check | | ofac | OFAC Check | | id_confirm | ID confirmation check | | student_authentication | STAN PIN authentication check | | wet_sign_fax | Pages for returning signed documents by fax | | attachment_fax | Pages for returning attachments by fax | | phone_authentication | Phone authentication charge | | powerforms | PowerForm envelopes sent | | signer_payments | Payment processing charge | | outbound_fax | Send by fax charge | | bulk_recipient_envelopes | Bulk Recipient Envelopes sent | | sms_authentications | SMS authentication charge | | saml_authentications | SAML authentication charge | | express_signer_certificate | DocuSign Express Certificate charge | | personal_signer_certificate | Personal Signer Certificate charge | | safe_certificate | SAFE BioPharma Signer Certificate charge | | seats | Included active seats charge | | open_trust_certificate | OpenTrust Signer Certificate charge | 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - invoice_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.Invoices{}} on success
  {:error, info} on failure
  """
  @spec billing_invoices_get_billing_invoice(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.Invoices.t()} | {:error, Tesla.Env.t()}
  def billing_invoices_get_billing_invoice(connection, account_id, invoice_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/billing_invoices/#{invoice_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Invoices{})
  end

  @doc """
  Get a List of Billing Invoices
  Retrieves a list of invoices for the account. If the from date or to date queries are not specified, the response returns invoices for the last 365 days.  Privileges required: account administrator 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :from_date (String.t): Specifies the date/time of the earliest invoice in the account to retrieve.
    - :to_date (String.t): Specifies the date/time of the latest invoice in the account to retrieve.

  ## Returns

  {:ok, %DocuSign.Model.BillingInvoicesResponse{}} on success
  {:error, info} on failure
  """
  @spec billing_invoices_get_billing_invoices(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.BillingInvoicesResponse.t()} | {:error, Tesla.Env.t()}
  def billing_invoices_get_billing_invoices(connection, account_id, opts \\ []) do
    optional_params = %{
      from_date: :query,
      to_date: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/billing_invoices")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BillingInvoicesResponse{})
  end

  @doc """
  Get a list of past due invoices.
  Returns a list past due invoices for the account and notes if payment can be made through the REST API.   Privileges Required: account administrator

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.BillingInvoicesSummary{}} on success
  {:error, info} on failure
  """
  @spec billing_invoices_get_billing_invoices_past_due(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.BillingInvoicesSummary.t()} | {:error, Tesla.Env.t()}
  def billing_invoices_get_billing_invoices_past_due(connection, account_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/billing_invoices_past_due")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BillingInvoicesSummary{})
  end
end