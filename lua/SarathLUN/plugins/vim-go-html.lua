local function detect_go_html_tmpl()
	if vim.fn.expand("%:e") == "gohtml" and vim.fn.search("{{") ~= 0 then
		vim.cmd("set filetype=gohtmltmpl")
	end
end

vim.api.nvim_create_autocmd("BufRead,BufNewFile", {
	callback = detect_go_html_tmpl,
})
