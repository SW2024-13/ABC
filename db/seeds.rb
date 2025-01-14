# メニューを作成
menus = [
  { name: "唐揚げ丼", price: 500 },
  { name: "かつ丼", price: 500 },
  { name: "カレー", price: 300 },
  { name: "オムライス", price: 700 },
  { name: "ピザ", price: 1000 },
  { name: "ラーメン", price: 400 },
  { name: "とんかつ定食", price: 1200 },
  { name: "うどん", price: 200 }
]

menus.each do |menu|
  Menu.create(menu)
end




# 注文を作成
orders = [
  { name: "かつ丼", price: 500, purchased: false, user_id: 2 },
  { name: "カレー", price: 300, purchased: true, user_id: 3 },
  { name: "オムライス", price: 700, purchased: true, user_id: 4 },
  { name: "ピザ", price: 1000, purchased: false, user_id: 5 },
  { name: "ラーメン", price: 400, purchased: true, user_id: 6 },
  { name: "とんかつ定食", price: 1200, purchased: true, user_id: 7 },
  { name: "うどん", price: 200, purchased: true, user_id: 8 }
]

orders.each do |order|
  Order.create(order)
end

