# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ConnectEvents do
  @moduledoc """
  Connect event logging
  """

  @derive [Poison.Encoder]
  defstruct [
    :failures,
    :logs,
    :totalRecords,
    :type
  ]

  @type t :: %__MODULE__{
    :failures => [ConnectLog],
    :logs => [ConnectLog],
    :totalRecords => String.t,
    :type => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.ConnectEvents do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:failures, :list, DocuSign.Model.ConnectLog, options)
    |> deserialize(:logs, :list, DocuSign.Model.ConnectLog, options)
  end
end
