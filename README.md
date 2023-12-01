# gf180_inv_demo
GF180MCUのインバータ製作デモ

* inv_dc.sch - DC解析テストベンチ
* inv_tran.sch - トランジェント解析テストベンチ

* inv_test.sch - LVS用回路図
* inv_test.sym - サブサーキットシンボル（inv_test.sch用)

* inv_test.gds - レイアウト例その１
* inv_test_2.gds - レイアウト例その２
* TOP_pex_extracted.spice - inv_test.gdsのRC抽出付ネットリスト

* inv_pex.sym - プリミティブシンボル (TOP_pex_extracted.spice用)
* inv_tran_pex.sch - ポストレイアウトシミュレーションテストベンチ
