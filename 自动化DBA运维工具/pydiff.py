#encoding=utf-8
import sys
gv_fileA=str(sys.argv[1])
gv_fileB=str(sys.argv[2])


def fileToSql(fileName):
    '''旧的废弃function'''
    file = open(fileName,'r')
    text = file.read()
    sql = []
    sp = []
    procedure = []
    sql_split = []
    spliteWordSP = 'DELIMITER ;;'
    spliteWordSP1 = ';;'
    spliteWordSP2 = 'DELIMITER ;'
    spliteWordSQL = ';'

    if text.find(spliteWordSP)   :
         __row = text.find(spliteWordSP)
         sql = sql + [  text[:__row - 1] ]
         text = text[ __row + len(spliteWordSP) : ]
    else:
        sql = sql + [ text ]


    #切成存储过程
    while text.find(spliteWordSP) > 0  :
        __row = text.find(spliteWordSP)
        sp = sp + [ text[:__row - 1] ]
        text = text[ __row + len(spliteWordSP) : ]

    #判断是否是存储过程 
    for item in sp :
        while item.find(spliteWordSP1) > 0 :
            #找到第一个;; 分割符 前面为存储过程 
            __row = item.find( spliteWordSP1 )
            if item[:__row-1].find(spliteWordSP2) < 0 :
                procedure = procedure + [ item[:__row] ]
                item = item[__row+len(spliteWordSP1):]
            else:
                #由DELIMITER ;来判断是否是正常sql
                if item[:__row-1].find(spliteWordSP2) > 0 :
                    __row_1 = item[:__row-1].find(spliteWordSP2)
                    procedure = procedure + [ item[:__row-1][ :__row_1 ] ]
                    sql = sql + [ item[:__row-1][__row_1 + len(spliteWordSP2) : __row-1] ]
                    item = item[__row+len(spliteWordSP1):]
    
    for item in sql :
        while item.find(spliteWordSQL) > 0 :
            __row = item.find(spliteWordSQL)
            sql_split = sql_split + [ item[:__row +len(spliteWordSQL) ] ]
            item = item[__row+len(spliteWordSQL):]

    re_list = sql_split + procedure

    return re_list


def file2Sql(fileName) :
    file_object = open(fileName, 'r')
    DELIMITER = ';'
    sql_list = []
    try :
        text = file_object.read()
        text = text.replace(';;','$$').replace(';',' ; ').replace('$$',' $$ ').replace('//',' // ').replace('||',' || ')
        txt_list = text.split()
        __temp_str = ''
        __change_delimiter_key = 0
        for i in txt_list :
            if __change_delimiter_key == 1 :
                DELIMITER = i
                __change_delimiter_key = 0
                continue

            if i.upper() != 'DELIMITER' :
                if i != DELIMITER :
                    __temp_str = __temp_str + i + ' '
                else :
                    __temp_str = __temp_str + " " + DELIMITER
                    sql_list.append(__temp_str)
                    __temp_str = ''
            else :
                __change_delimiter_key = 1
                continue
    finally :
        file_object.close()
        return sql_list







#listA = fileToSql( gv_fileA )
#listB = fileToSql( gv_fileB )

def diffSQL(list_a,list_b):
    import copy
    __temp_a = copy.copy(list_a)
    __temp_b = copy.copy(list_b)
    for item in list_a :
        if   item  in  __temp_b  :
            del __temp_b[__temp_b.index(item)]

    for item in list_b :
        if item in __temp_a  :
            del __temp_a[__temp_a.index(item)]

    return __temp_a , __temp_b 


def strcmp(s, t):
    """Levenshtein字串相似度return (编辑距离,莱文斯坦比%)"""
    if len(s) > len(t):
        s, t = t, s
    #第一步
    n = len(s)
    m = len(t)

    if not m : return n
    if not n : return m
    
    #第二步
    v0 = [ i for i in range(0, m+1) ]
    v1 = [ 0 ] * (m+1) 

    #第三步
    cost = 0
    for i in range(1, n+1):
        v1[0] = i
        for j in range(1, m+1):
            #第四步,五步
            if s[i-1] == t[j-1]:
                cost = 0
            else:
                cost = 1

            #第六步
            a = v0[j] + 1
            b = v1[j-1] + 1
            c = v0[j-1] + cost
            v1[j] = min(a, b, c)
        v0 = v1[:]
    #第七步
    return v1[m],((len(s)+len(t)-v1[m])*100/(len(s)+len(t)))



def diffSQL2(list_a,list_b):
    import copy
    import re
    import hashlib
    import difflib

    __re_list_a_sql = {}
    __re_list_a_nosql = []
    __re_list_b_sql = {}
    __re_list_b_nosql = []
    str_parse = r'CREATE\s(DATABASE|EVENT|FUNCTION|FUNCTION UDF|INDEX|PROCEDURE|SERVER|TABLE|TABLESPACE|TRIGGER|USER|VIEW)\s(?P<tbl_name>\w+)'
    pattern = re.compile(str_parse)

    def __pre(v_sql,v_pat):
        '''return sql table|database|event... name '''
        __temp_sql = v_sql.replace('`','').replace('\n','').upper()
        m = v_pat.match( __temp_sql )
        if m is not None :
            return m.groupdict()['tbl_name']
        else:
            return hashlib.md5(v_sql).hexdigest()

    def __addNote(str_a,str_b):
        v_diff = difflib.SequenceMatcher(None,str_a,str_b)
        __temp_stra = ''
        __temp_strb = ''
        for tag,i1,i2,j1,j2 in v_diff.get_opcodes() :
            if tag != 'equal' :
                __temp_stra = __temp_stra +'<font color="red">' + str_a[i1:i2] + '</font>'
                __temp_strb = __temp_strb +'<font color="red">' + str_b[j1:j2] + '</font>'
            else:
                __temp_stra = __temp_stra  + str_a[i1:i2] 
                __temp_strb = __temp_strb  + str_b[j1:j2] 
        return __temp_stra,__temp_strb


    for __str in list_a :
        __tmp_str = __pre(__str,pattern)
        if __tmp_str == '' :
            __re_list_a_nosql.append(__str)
        else:
            __re_list_a_sql[__tmp_str] = __str

    for __str in list_b :
        __tmp_str = __pre(__str,pattern)
        if __tmp_str == '' :
            __re_list_b_nosql.append(__str)
        else:
            __re_list_b_sql[__tmp_str] = __str

    __temp_a_sql = copy.copy(__re_list_a_sql)
    __temp_b_sql = copy.copy(__re_list_b_sql)

    for i in __temp_a_sql.keys() :
        if __re_list_b_sql.has_key(i) :
            if __temp_a_sql[i] == __re_list_b_sql[i]  :
                del __temp_a_sql[i]
            else:
                __temp_a_sql[i] = __addNote(__temp_a_sql[i],__re_list_b_sql[i])[0]
        else:
            __temp_a_sql[i] = '<font color="red">' + __temp_a_sql[i] + '</font>'

    for i in __temp_b_sql.keys() :
        if __re_list_a_sql.has_key(i) :
            if __temp_b_sql[i] == __re_list_a_sql[i] :
                del __temp_b_sql[i]
            else:
                __temp_b_sql[i] = __addNote(__temp_b_sql[i],__re_list_a_sql[i])[0]
        else:
            __temp_b_sql[i] = '<font color="red">' + __temp_b_sql[i] + '</font>'

    return __temp_a_sql ,__temp_b_sql

#a , b = diffSQL(listA,listB)
listA = file2Sql( gv_fileA )
listB = file2Sql( gv_fileB )
dictA , dictB = diffSQL2(listA,listB)
a = dictA.values()
b = dictB.values()
print '''<style type='text/css'>
.fn-clearfix:after {
visibility:hidden;
display:table;
font-size:0;
content:' ';
clear:both;
height:0;
}
.fn-clearfix {
zoom:1; /* for IE6 IE7 */
}
/* 隐藏, 通常用来与 JS 配合 */
body .fn-hide {
display:none;
}
/* 视觉隐藏,但在布局中占位*/
.fn-invisible {
visibility: hidden;
}
/* 设置内联, 减少浮动带来的bug */
.fn-left,.fn-right {
display:inline;
}
.fn-left {
float:left;
}
.fn-right {
float:right;
}
.right, .left {
width: 45%;
border: 1px solid #ccc;
word-wrap: break-word;
padding: 0 2%;
}
</style>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
</head><body><div class='wrapper fn-clearfix'><div class='left fn-left'><h4>''',gv_fileA,'''</h4><hr>'''

for i in a :
    print '<p>',i.replace(' ','&nbsp;').replace('\n','<br>').replace('font&nbsp;','font '),'</p><hr>'
print '''</div>
<div class='right fn-right'><h4>''',gv_fileB,'''</h4><hr>'''
for i in b :
    print '<p>',i.replace(' ','&nbsp;').replace('\n','<br>').replace('font&nbsp;','font '),'</p><hr>'

print '''</div></div>'''
