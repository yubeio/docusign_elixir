# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.RecipientSmsAuthentication do
  @moduledoc """
  Contains the element senderProvidedNumbers which is an Array  of phone numbers the recipient can use for SMS text authentication.
  """

  @derive [Poison.Encoder]
  defstruct [
    :senderProvidedNumbers
  ]

  @type t :: %__MODULE__{
    :senderProvidedNumbers => [String.t]
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientSmsAuthentication do
  def decode(value, _options) do
    value
  end
end
