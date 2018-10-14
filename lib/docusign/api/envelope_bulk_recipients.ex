# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeBulkRecipients do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeBulkRecipients`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes the bulk recipient file from an envelope.
  Deletes the bulk recipient file from an envelope. This cannot be used if the envelope has been sent.  After using this, the &#x60;bulkRecipientsUri&#x60; property is not returned in subsequent GET calls for the envelope, but the recipient will remain as a bulk recipient.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.BulkRecipientsUpdateResponse{}} on success
  {:error, info} on failure
  """
  @spec recipients_delete_bulk_recipients_file(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.BulkRecipientsUpdateResponse.t} | {:error, Tesla.Env.t}
  def recipients_delete_bulk_recipients_file(connection, account_id, envelope_id, recipient_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/bulk_recipients")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BulkRecipientsUpdateResponse{})
  end

  @doc """
  Gets the bulk recipient file from an envelope.
  Retrieves the bulk recipient file information from an envelope that has a bulk recipient.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - opts (KeywordList): [optional] Optional parameters
    - :include_tabs (String.t): If **true** include the tabs in the the result. 
    - :start_position (String.t): Reserved for DocuSign. 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeBulkRecipients{}} on success
  {:error, info} on failure
  """
  @spec recipients_get_bulk_recipients(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeBulkRecipients.t} | {:error, Tesla.Env.t}
  def recipients_get_bulk_recipients(connection, account_id, envelope_id, recipient_id, opts \\ []) do
    optional_params = %{
      include_tabs: :query,
      start_position: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/bulk_recipients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeBulkRecipients{})
  end

  @doc """
  Adds or replaces envelope bulk recipients.
  Updates the bulk recipients in a draft envelope using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - opts (KeywordList): [optional] Optional parameters
    - :bulk_recipients_request (BulkRecipientsRequest): 

  ## Returns

  {:ok, %DocuSign.Model.BulkRecipientsSummaryResponse{}} on success
  {:error, info} on failure
  """
  @spec recipients_put_bulk_recipients(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.BulkRecipientsSummaryResponse.t} | {:error, Tesla.Env.t}
  def recipients_put_bulk_recipients(connection, account_id, envelope_id, recipient_id, opts \\ []) do
    optional_params = %{
      bulkRecipientsRequest: :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/recipients/#{recipient_id}/bulk_recipients")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BulkRecipientsSummaryResponse{})
  end
end
