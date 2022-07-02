defmodule BasicExample do
  def regexexample do
    [
      Regex.run(~r{[aeiou]}, "caterpiller"),
      Regex.scan(~r{[aeiou]}, "caterpiller"),
      Regex.split(~r{[aeiou]}, "caterpiller"),
      Regex.replace(~r{[aeiou]}, "caterpiller", "*")
    ]
  end

  def touple_example do
    {"this", "is", "touple"}
  end

  def list_example do
    [
      ["this", "is", "list"],
      [this: "is", keyword: "list"]
    ]
  end

  def maps_example do
    [
      %{"AL" => "Alabama", "TX" => "Texas"},
      %{{:error, :enoent} => :fatal, {:error, :busy} => :retry},
      %{:red => "red", :green => "green"}
    ]
  end

  def date_time_example do
    d1 = Date.new!(2022, 6, 2)
    t1 = Time.new!(12, 10, 10)

    [
      Date.new(2022, 6, 2),
      {:ok, d1} = Date.new(2022, 6, 2),
      Date.day_of_week(d1),
      Date.add(d1, 7),
      inspect(d1, structs: false),
      t1
    ]
  end
end

IO.inspect(BasicExample.regexexample())
IO.inspect(BasicExample.touple_example())
IO.inspect(BasicExample.list_example())
IO.inspect(BasicExample.maps_example())
IO.inspect(BasicExample.date_time_example())
