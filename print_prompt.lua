local template, err = io.open("prompt_template.txt")
if not template then
  error(err)
end
local readme, err = io.open("Steps-To-Learn-Data-Science.md")
if not readme then
  template:close()
  error(err)
end
io.write(string.format(string.sub(template:read("*a"), 1, -2), readme:read("*a")))
readme:close()
template:close()
