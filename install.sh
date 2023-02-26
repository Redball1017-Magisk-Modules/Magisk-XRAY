SKIPMOUNT=false
LATESTARTSERVICE=true
POSTFSDATA=false
PROPFILE=false
print_modname() {
 ui_print "*******************************"
 ui_print "     	XRAY For MAGISK        "
 ui_print "*******************************"
}
on_install() {
 ui_print "- 正在释放文件"
 unzip -o "$ZIPFILE" -d $MODPATH >&2
 rm -rf $MODPATH/install.sh
}
set_permissions() {
 set_perm_recursive $MODPATH 0 0 0755 0644
#设置权限，基本不要去动
}