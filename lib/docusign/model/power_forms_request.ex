# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.PowerFormsRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :powerForms
  ]

  @type t :: %__MODULE__{
    :powerForms => [PowerForms]
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.PowerFormsRequest do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:powerForms, :list, DocuSign.Model.PowerForms, options)
  end
end
