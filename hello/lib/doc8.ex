#Un supervisor para GetServer
defmodule DropSup do
  use Supervisor

  #Metodo Conveniente para Cargar
  def start_link do
    Supervisor.start_link(__MODULE__, [], [{:name, __MODULE__}])
  end

  #Supervisor para llamado
  def init([]) do
    child = [worker(DropServer, [], [])]
    supervise(child, [{:strategy, :one_for_one}, {:max_restarts, 1},
      {:max_seconds, 5}])
  end

  #Funcion Interna
end
