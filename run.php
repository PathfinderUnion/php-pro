<?php



header("Content-Type: text/html; charset=UTF-8");

$domain = "http://xunibi.boice.com.cn";//填写网站域名
$queues = array(
    'admin/login/queue',      //记录最后执行时间
    'home/queue/chart',         //计算行情
    'home/queue/tendency',      //计算趋势
    'home/queue/houprice',      //更新市场价格
    'home/queue/paicuo',      //自动匹配交易
    'home/queue/qianbao',      //同步钱包转入记录
    'home/queue/move',         //处理交易状态:正常
    'home/queue/yichang',      //处理交易状态:异常
);
for ($i = 0; $i < count($queues); $i++) {
    http_get($domain . "/" . $queues[$i]);
}
echo "本次执行完毕";
function http_get($url)
{
    $oCurl = curl_init();
    if (stripos($url, "https://") !== FALSE) {
        curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($oCurl, CURLOPT_SSLVERSION, 1); //CURL_SSLVERSION_TLSv1
    }
    curl_setopt($oCurl, CURLOPT_URL, $url);
    curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1);
    $sContent = curl_exec($oCurl);
    $aStatus = curl_getinfo($oCurl);
    curl_close($oCurl);
    if (intval($aStatus["http_code"]) == 200) {
        return true;
    } else {
        return false;
    }
}


?>