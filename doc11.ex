#Usando quote y unquote para crear macros
defmodule Double do
  defmacro double(x) do
    quote do
      2 * unquote(x)
    end
  end

end
