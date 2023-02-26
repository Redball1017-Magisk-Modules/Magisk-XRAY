#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
# 这将使你的脚本更加兼容，即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}
touch /cache/xray.log
chmod +x "$MODDIR/xray"
$MODDIR/xray run -config $MODDIR/config.json &> /cache/xray.log