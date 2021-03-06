class City < ActiveHash::Base

  self.data = [
    { id: 1, name: '岩沼市' },
    { id: 2, name: '多賀城市' },
    { id: 3, name: '塩釜市' },
    { id: 4, name: '七ヶ浜町' },
    { id: 5, name: '利府町' },
    { id: 6, name: '松島町' },
    { id: 7, name: '大郷町' },
    { id: 8, name: '大衡村' },
    { id: 9, name: '富谷市' },
    { id: 10, name: '大和町' },
    { id: 11, name: '登米市' },
    { id: 12, name: '栗原市' },
    { id: 13, name: '加美町' },
    { id: 14, name: '色麻町' },
    { id: 15, name: '大崎市' },
    { id: 16, name: '美里町' },
    { id: 17, name: '涌谷町' },
    { id: 18, name: '東松島市' },
    { id: 19, name: '石巻市' },
    { id: 20, name: '女川町' },
    { id: 21, name: '南三陸町' },
    { id: 22, name: '気仙沼市' },
    { id: 23, name: '大河原町' },
    { id: 24, name: '柴田町' },
    { id: 25, name: '村田町' },
    { id: 26, name: '蔵王町' },
    { id: 27, name: '川崎町' },
    { id: 28, name: '角田市' },
    { id: 29, name: '七ヶ宿町' },
    { id: 30, name: '白石市' },
    { id: 31, name: '丸森町' },
    { id: 32, name: '仙台市青葉区' },
    { id: 33, name: '仙台市泉区' },
    { id: 34, name: '仙台市宮城野区' },
    { id: 35, name: '仙台市太白区' },
    { id: 36, name: '仙台市若林区' },
    { id: 37, name: '名取市' },
    { id: 38, name: '亘理町' },
    { id: 39, name: '山元町' }
  ]

  include ActiveHash::Associations
  has_many :citys

  end
