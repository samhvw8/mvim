
function isMac()
	return jit.os == "OSX"
end

function isVscode()
	return vim.fn.exists("g:vscode") == 1
end

function isNotVscode()
	return vim.fn.exists("g:vscode") ~= 1
end
