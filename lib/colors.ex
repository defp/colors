defmodule Colors do

  # styles
  @colors [
    {:bold,          "\x1B[1m", "\x1B[22m", :style},
    {:italic,        "\x1B[3m", "\x1B[23m", :style},
    {:underline,     "\x1B[4m", "\x1B[24m", :style},
    {:inverse,       "\x1B[7m", "\x1B[27m", :style},
    {:strikethrough, "\x1B[9m", "\x1B[29m", :style},

  # grayscale
    {:white, "\x1B[37m", "\x1B[39m", :grayscale},
    {:grey,  "\x1B[90m", "\x1B[39m", :grayscale},
    {:black, "\x1B[30m", "\x1B[39m", :grayscale},

  # colors
    {:blue,    "\x1B[34m", "\x1B[39m", :color},
    {:cyan,    "\x1B[36m", "\x1B[39m", :color},
    {:green,   "\x1B[32m", "\x1B[39m", :color},
    {:magenta, "\x1B[35m", "\x1B[39m", :color},
    {:red,     "\x1B[31m", "\x1B[39m", :color},
    {:yellow,  "\x1B[33m", "\x1B[39m", :color},

  # background colors
    {:white_bg,   "\x1B[47m", "\x1B[49m", :background},
    {:grey_bg,    "\x1B[49;5;8m", "\x1B[49m", :background},
    {:black_bg,   "\x1B[40m", "\x1B[49m", :background},
    {:blue_bg,    "\x1B[44m", "\x1B[49m", :background},
    {:cyan_bg,    "\x1B[46m", "\x1B[49m", :background},
    {:green_bg,   "\x1B[42m", "\x1B[49m", :background},
    {:magenta_bg, "\x1B[45m", "\x1B[49m", :background},
    {:red_bg,     "\x1B[41m", "\x1B[49m", :background},
    {:yellow_bg,  "\x1B[43m", "\x1B[49m", :background},
  ]

  for {name, before, after_, _type} <- @colors do
    def unquote(name)(str) do
      unquote(before) <> str <> unquote(after_)
    end
  end

  def random(str, type) do
    random_element = type |> list |> Enum.random
    apply(__MODULE__, random_element, [str])
  end

  def list(type) do
    for {name, _, _, ^type} <- @colors, do: name
  end
end
