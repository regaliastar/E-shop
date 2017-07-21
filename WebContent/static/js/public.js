//购物车编辑操作
function cart(goods_id, product_id, quantity)
{
    $.post(
        web_url+'/cart/default/update.html',
        {'goods_id':goods_id, 'product_id':product_id, 'quantity':quantity},
        function (res) {
            if (res.code == 400) {
                layer.msg(res.msg);
            } else {
                layer.msg(res.msg);
                location.reload();
            }
        },'json'
    );
}

//购物车删除操作
function cartDel(goods_id, product_id)
{
    $.post(
        web_url+'/cart/default/delete.html',
        {'goods_id':goods_id, 'product_id':product_id},
        function (res) {
            if (res.code == 400) {
                layer.msg(res.msg);
            } else {
                layer.msg(res.msg);
                location.reload();
            }
        },'json'
    );
}

//签到
function sign()
{
    $.post(
        web_url+'/member/sign/create.html',
        {},
        function (res) {
            layer.msg(res.msg);
            if (res.code == 401) {
                location.href=res.data.return;
            }
        },'json'
    );
}