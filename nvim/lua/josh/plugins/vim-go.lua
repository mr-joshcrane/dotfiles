local nvim_setup, nvim = pcall(require, "telescope")
if not nvim_setup then
  print("Unable to setup nvim_go")
  return
end

nvim.setup({})
