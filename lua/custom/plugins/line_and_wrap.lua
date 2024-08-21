return {
  'line_and_wrap',
  lazy = false,
  config = function()
    -- Настройка для отображения вертикальной линии на 80 символах
    vim.opt.colorcolumn = '80'

    -- Настройка для автоматического переноса строк на 79 символах
    vim.opt.textwidth = 79

    -- Включение визуального переноса длинных строк
    vim.opt.wrap = true

    -- Включение автоматического переноса строк при вводе
    vim.opt.formatoptions:append 't'

    -- Установка цвета для вертикальной линии
    vim.cmd [[highlight ColorColumn guibg=#303030 gui=nocombine]]
  end,
  dir = vim.fn.stdpath 'config' .. '/lua/custom/plugins/line_and_wrap',
}

