local modules = {
  'settings',
  'settings.color',
  'settings.keymap',
  'plugins',
  -- 'plugins.cmp',
}

for _, module in ipairs(modules) do
  local ok, lib = pcall(require, module)
  if not ok then
    print('Error loading module: ' .. module .. '\n\n' .. lib)
  end
end
