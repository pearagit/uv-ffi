---@diagnostic disable: lowercase-global
package = "uv-ffi"
version = "scm-1"
source = {
  url = "git+ssh://git@github.com/pearagit/uv-ffi.git",
}
description = {
  summary = "Pure luajit-ffi bindings to libuv just for fun!",
  detailed = "Pure luajit-ffi bindings to libuv just for fun!",
  homepage = "https://github.com/pearagit/uv-ffi",
  license = "Lua License",
}
dependencies = {
  "lua ~> 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["uv-ffi.connection"] = "lua/uv-ffi/connection.lua",
    ["uv-ffi"] = "lua/uv-ffi/init.lua",
    ["uv-ffi.pretty-print-ffi"] = "lua/uv-ffi/pretty-print-ffi.lua",
    ["uv-ffi.safe-coro"] = "lua/uv-ffi/safe-coro.lua",
    ["uv-ffi.socket-ffi"] = "lua/uv-ffi/socket-ffi.lua",
    ["uv-ffi.stream-wrap-ffi"] = "lua/uv-ffi/stream-wrap-ffi.lua",
  },
  copy_directories = {
    "tests",
  },
}
