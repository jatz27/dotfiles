local status_cmp, _ = pcall(require, "cmp")
if not status_cmp then
  return
end

require("util.cmp.cmp")
--[[ require("util.cmp.tabnine") ]]
