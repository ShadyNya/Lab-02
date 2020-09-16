lgi = require 'lgi' -- подключение модуля lgi

gtk = lgi.Gtk
gtk.init() -- инициализация библиотеки gtk

bld = gtk.Builder() -- создание нового экземпляра построителя интерфейсов
bld:add_from_file('StudentovaLab2.glade') -- загрузка описания интерфейса

ui = bld.objects
ui.wnd.title = 'lab-02St' -- задание названия главного 
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()


function ui.plus:on_clicked(...)
a = tonumber(ui.txt_a.text)
b = tonumber(ui.txt_b.text)
ui.lbl_res.label = a + b
end

function ui.minus:on_clicked(...)
a = tonumber(ui.txt_a.text)
b = tonumber(ui.txt_b.text)
ui.lbl_res.label = a - b
end

function ui.umnog:on_clicked(...)
a = tonumber(ui.txt_a.text)
b = tonumber(ui.txt_b.text)
ui.lbl_res.label = a * b
end

function ui.del:on_clicked(...)
a = tonumber(ui.txt_a.text)
b = tonumber(ui.txt_b.text)
ui.lbl_res.label = a / b
end
gtk.main()





