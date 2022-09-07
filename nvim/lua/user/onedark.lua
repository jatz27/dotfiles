local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end

onedark.setup {
  style = 'darker',
  transparent = false,  -- Show/hide background
  term_colors = true, -- Change terminal color as per the selected theme style
  code_style = {
          comments = 'none',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none'
      },
  }

onedark.load()
