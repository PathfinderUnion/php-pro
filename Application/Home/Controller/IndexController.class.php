<?php
namespace Home\Controller;

class IndexController extends HomeController
{
	public function index()
	{

		$indexAdver = (APP_DEBUG ? null : S('index_indexAdver'));

		if (!$indexAdver) {
			$indexAdver = M('Adver')->where(array('status' => 1))->order('id asc')->select();
			S('index_indexAdver', $indexAdver);
		}

		$this->assign('indexAdver', $indexAdver);
		$indexArticleType = (APP_DEBUG ? null : S('index_indexArticleType'));

		if (!$indexArticleType) {
			$indexArticleType = M('ArticleType')->where(array('status' => 1, 'index' => 1))->order('sort asc ,id desc')->limit(3)->select();
			S('index_indexArticleType', $indexArticleType);
		}

		$this->assign('indexArticleType', $indexArticleType);
		$indexArticle = (APP_DEBUG ? null : S('index_indexArticle'));

		if (!$indexArticle) {
			foreach ($indexArticleType as $k => $v) {
				$indexArticle[$k] = M('Article')->where(array('type' => $v['name'], 'status' => 1, 'index' => 1))->order('id desc')->limit(6)->select();
			}

			S('index_indexArticle', $indexArticle);
		}

		$this->assign('indexArticle', $indexArticle);
		$indexLink = (APP_DEBUG ? null : S('index_indexLink'));

		if (!$indexLink) {
			$indexLink = M('Link')->where(array('status' => 1))->order('sort asc ,id desc')->select();
		}

		$this->assign('indexLink', $indexLink);

        $ajaxMenu = new AjaxController();
        $indexMenu = $ajaxMenu->getJsonMenu('');
        $this->assign('indexMenu', $indexMenu);

#var_dump($indexAdver, $indexArticleType, $indexArticle, $indexLink);
		if (C('index_html')) {
			$this->display('Index/' . C('index_html') . '/index');
		}
		else {
			$this->display();
		}
	}

	public function monesay($monesay = NULL)
	{
	}

	public function install()
	{
	}

    public function fragment()
    {
        $ajax = new AjaxController();
        $data  = $ajax->allcoin('');
        $this->assign('data', $data);
        $this->display('Index/d/fragment');
    }

    public function newPrice()
    {
        ini_set('display_errors', 'on');
        error_reporting(E_ALL);
        //var_dump(C('market'));
        $data = $this->allCoinPrice();
        //var_dump($data);
       // exit;
        $last_data = S('ajax_all_coin_last');
        $_result = array();
        if (empty($last_data)) {
            foreach (C('market') as $k => $v) {
                $_result[$v['id'] . '-' . strtoupper($v['xnb'])] =  $data[$k][1] . '-0.0';
            }
        } else {
            foreach (C('market') as $k => $v) {
                $_result[$v['id'] . '-' . strtoupper($v['xnb'])] =  $data[$k][1] . '-' . ($data[$k][1] - $last_data[$k][1]);
            }
        }

        S('ajax_all_coin_last', $data);

        $data = json_encode(
            array(
                'result' => $_result,
            )
        );
        exit($data);

        //exit('{"result":{"25-BTC":"4099.0-0.0","1-LTC":"26.43--0.22650056625141082","26-DZI":"1.72-0.0","6-DOGE":"0.00151-0.0"},"totalPage":5}');
    }


    protected function allCoinPrice()
    {
        $data = (APP_DEBUG ? null : S('allcoin'));

        // 市场交易记录
        $marketLogs = array();
        foreach (C('market') as $k => $v) {
            $tradeLog = M('TradeLog')->where(array('status' => 1, 'market' => $k))->order('id desc')->limit(50)->select();
            $_data = array();
            foreach ($tradeLog as $_k => $v) {
                $_data['tradelog'][$_k]['addtime'] = date('m-d H:i:s', $v['addtime']);
                $_data['tradelog'][$_k]['type'] = $v['type'];
                $_data['tradelog'][$_k]['price'] = $v['price'] * 1;
                $_data['tradelog'][$_k]['num'] = round($v['num'], 6);
                $_data['tradelog'][$_k]['mum'] = round($v['mum'], 2);
            }
            $marketLogs[$k] = $_data;
        }

        $themarketLogs = array();
        if ($marketLogs) {
            $last24 = time() - 86400;
            $_date = date('m-d H:i:s', $last24);
            foreach (C('market') as $k => $v) {
                $tradeLog = isset($marketLogs[$k]['tradelog']) ? $marketLogs[$k]['tradelog'] : null;
                if ($tradeLog) {
                    $sum = 0;
                    foreach ($tradeLog as $_k => $_v) {
                        if ($_v['addtime'] < $_date) {
                            continue;
                        }
                        $sum += $_v['mum'];
                    }
                    $themarketLogs[$k] = $sum;
                }
            }
        }

        foreach (C('market') as $k => $v) {
            $data[$k][0] = $v['title'];
            $data[$k][1] = round($v['new_price'], $v['round']);
            $data[$k][2] = round($v['buy_price'], $v['round']);
            $data[$k][3] = round($v['sell_price'], $v['round']);
            $data[$k][4] = isset($themarketLogs[$k]) ? $themarketLogs[$k] : 0;//round($v['volume'] * $v['new_price'], 2) * 1;
            $data[$k][5] = '';
            $data[$k][6] = round($v['volume'], 2) * 1;
            $data[$k][7] = round($v['change'], 2);
            $data[$k][8] = $v['name'];
            $data[$k][9] = $v['xnbimg'];
            $data[$k][10] = '';
        }

        return $data;
    }

}

?>