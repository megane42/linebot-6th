# coding: utf-8

module Linebot6th

  module Area
    METLIFE = 'メッツライフドーム'
    NAGOYA  = 'ナゴヤドーム'
  end

  module Day
    ONE = '1日目'
    TWO = '2日目'
  end

  CASTS = {
    Area::METLIFE => {
      Day::ONE => {
        cute: %w(
          大橋彩香（島村卯月）
          藍原ことみ（一ノ瀬志希）
          金子真由美（藤本里奈）
          髙野麻美（宮本フレデリカ）
          立花理香（小早川紗枝）
          三宅麻理恵（安部菜々）
          大坪由佳（三村かな子）
          高森奈津美（前川みく）
          藤本彩花（棟方愛海）
        ),
        cool: %w(
          福原綾香（渋谷凛）
          飯田友子（速水奏）
          桜咲千依（白坂小梅）
          ルゥ ティン（塩見周子）
          青木瑠璃子（多田李衣菜）
          千菅春香（松永涼）
          東山奈央（川島瑞樹）
          村中知（大和亜季）
        ),
        passion: %w(
          原紗友里（本田未央）
          花守ゆみり（佐藤心）
          原優子（向井拓海）
          安野希世乃（木村夏樹）
          山本希望（城ヶ崎莉嘉）
          佳村はるか（城ヶ崎美嘉）
          木村珠莉（相葉夕美）
          伊達朱里紗（難波笑美）
          杜野まこ（姫川友紀）
          山下七海（大槻唯）
        ),
      },
      Day::TWO => {
        cute: %w(
          大橋彩香（島村卯月）
          藍原ことみ（一ノ瀬志希）
          金子真由美（藤本里奈）
          髙野麻美（宮本フレデリカ）
          立花理香（小早川紗枝）
          三宅麻理恵（安部菜々）
          朝井彩加（早坂美玲）
          五十嵐裕美（双葉杏）
          新田ひより（道明寺歌鈴）
        ),
        cool: %w(
          福原綾香（渋谷凛）
          飯田友子（速水奏）
          桜咲千依（白坂小梅）
          ルゥ ティン（塩見周子）
          青木志貴（二宮飛鳥）
          今井麻夏（佐々木千枝）
          上坂すみれ（アナスタシア）
          小市眞琴（結城晴）
          佐藤亜美菜（橘ありす）
          洲崎綾（新田美波）
        ),
        passion: %w(
          原紗友里（本田未央）
          花守ゆみり（佐藤心）
          原優子（向井拓海）
          安野希世乃（木村夏樹）
          山本希望（城ヶ崎莉嘉）
          佳村はるか（城ヶ崎美嘉）
          黒沢ともよ（赤城みりあ）
          春瀬なつみ（龍崎薫）
        ),
      },
    },
    Area::NAGOYA => {
      Day::ONE => {
        cute: %w(
          大橋彩香（島村卯月）
          朝井彩加（早坂美玲）
          五十嵐裕美（双葉杏）
          大空直美（緒方智絵里）
          津田美波（小日向美穂）
          牧野由依（佐久間まゆ）
          大坪由佳（三村かな子）
          下地紫野（中野有香）
          都丸ちよ（椎名法子）
          三宅麻理恵（安部菜々）
        ),
        cool: %w(
          福原綾香（渋谷凛）
          青木瑠璃子（多田李衣菜）
          鈴木みのり（藤原肇）
          高橋花林（森久保乃々）
          渕上舞（北条加蓮）
          松井恵理子（神谷奈緒）
          嘉山未紗（脇山珠美）
          原田彩楓（三船美優）
          森下来奈（鷹富士茄子）
        ),
        passion: %w(
          原紗友里（本田未央）
          鈴木絵理（堀裕子）
          高田憂希（依田芳乃）
          のぐちゆり（及川雫）
          松嵜麗（諸星きらり）
          松田颯水（星輝子）
          和氣あず未（片桐早苗）
          金子有希（高森藍子）
          田澤茉純（浜口あやめ）
          神谷早矢佳（南条光）
          深川芹亜（喜多日菜子）
        ),
      },
      Day::TWO => {
        cute: %w(
          大橋彩香（島村卯月）
          朝井彩加（早坂美玲）
          五十嵐裕美（双葉杏）
          大空直美（緒方智絵里）
          津田美波（小日向美穂）
          牧野由依（佐久間まゆ）
          会沢紗弥（関裕美）
          種﨑敦美（五十嵐響子）
          中島由貴（乙倉悠貴）
        ),
        cool: %w(
          福原綾香（渋谷凛）
          青木瑠璃子（多田李衣菜）
          鈴木みのり（藤原肇）
          高橋花林（森久保乃々）
          渕上舞（北条加蓮）
          松井恵理子（神谷奈緒）
          森下来奈（鷹富士茄子）
          田辺留依（荒木比奈）
          長島光那（上条春菜）
        ),
        passion: %w(
          原紗友里（本田未央）
          鈴木絵理（堀裕子）
          高田憂希（依田芳乃）
          のぐちゆり（及川雫）
          松嵜麗（諸星きらり）
          松田颯水（星輝子）
          和氣あず未（片桐早苗）
          神谷早矢佳（南条光）
          深川芹亜（喜多日菜子）
          武田羅梨沙多胡（喜多見柚）
          花井美春（村上巴）
          山下七海（大槻唯）
        ),
      },
    },
  }


  def self.extract_where_and_when_from(text)
    area = day = nil

    if text.match(/メッツ|メッツライフ|メラド|埼玉|西武/)
      area = Area::METLIFE
    elsif text.match(/ナゴヤ|名古屋|愛知/)
      area = Area::NAGOYA
    end

    if text.match(/1|１|一|初日/)
      day = Day::ONE
    elsif text.match(/2|２|二|最終日/)
      day = Day::TWO
    end

    [area, day]
  end


  def self.make_messages_from(area, day)
    [
      "もしかして #{area} #{day} の話してる？",
      CASTS[area][day][:cute].join("\n"),
      CASTS[area][day][:cool].join("\n"),
      CASTS[area][day][:passion].join("\n"),
    ]
  end


  def self.make_reply_for(text)
    area, day = extract_where_and_when_from(text)

    unless area && day
      puts "An event is ignored due to the lack of informations (area: #{area}, day: #{day})."
      return nil
    end

    puts "An event is successfully recognized (area: #{area}, day: #{day})."
    make_messages_from(area, day)
  end
end
