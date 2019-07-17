/**
 * dart语言重要的概念
 * 
 * 1.放在变量中的所有内容都是一个对象，每个对象都是一个类的实例。偶数，函数和null对象。所有对象都继承自Object类。
 * 
 * 2.尽管Dart是强类型的，但类型注释是可选的，因为Dart可以推断类型。如果要明确说明不需要任何类型，请使用特殊类型dynamic。
 * 
 * 3.Dart支持泛型类型，如List<int>（整数列表）或List<dynamic>（任何类型的对象列表）。
 * 
 * 4.Dart支持顶级函数(例如main())，以及绑定到类或对象的函数(分别是静态和实例方法)。还可以在函数内创建函数(嵌套函数或本地函数)。
 * 
 * 5.类似地，Dart支持顶级变量，以及绑定到类或对象的变量(静态和实例变量)。实例变量有时称为字段或属性。
 * 
 * 6.与Java，Dart不具备关键字public,protected和private。如果标识符以下划线(_)开头，则它对其库是私有的。
 * 
 * 7.标识符可以以字母或下划线(_)开头，后跟这些字符加数字的任意组合。
 * 
 * 8.Dart有两个表达式(具有运行时值)和语句(不具有)。例如，条件表达式condition ? expr1 : expr2的值为expr1或expr2。将其为if-else语句进行比较，该语句没有任何值。语句通常包含一个或多个表达式，但表达式不能直接包含语句。
 * 
 * 9.Dart工具可以报告两种问题：警告和错误。警告只是表明你的代码可能无法正常工作，但他们不会阻止你的程序执行。错误可以是编译时或运行时。编译时错误会阻止代码运行，运行时错误导致代码执行时引发异常。
 */

/**
 * 关键词Keywords
 * 
 * abstract/as/assert/async/await/break/case/catch/class/const/continue/covariant/default/deferred/do
 * 
 * dynamic/else/enum/export/extends/external/factory/false/final/finally/for/Function/get/hide/if
 * 
 * implements/import/in/interface/is/library/mixin/new/null/on/operator/part/rethrow/return/set
 * 
 * show/static/super/switch/sync/this/throw/true/try/typedef/var/void/while/with/yield
 */

/**
 * 变量Variables
 * 
 * var name = 'Bob';   变量存储引用，调用的变量name包含对String值为“Bob”的对象的引用
 * name推断变量的类型String，但可以通过指定它来更改该类型。如果对象不限于单一类型，请按照设计准则指定Object或dynamic类型
 * dynamic name = 'Bob';
 * 另一种选择是显式声明将推断出的类型：
 * String name = 'Bob';
 */

/**
 * 默认值Default value
 * 
 * 未初始化的变量的初始值为null。即使是具有数字类型的变量最初也是null,因为数字--就像Dart中的其他所以--都是对象
 * int lineCount;
 * assert(lineCount == null);
 * 注意：assert()生产代码中将忽略该调用。在开发期间，除非条件为真，否则抛出异常。
 */

/**
 * 最后和常数Final and const
 * 
 * 如果从未打算更改变量，请使用final或const代替var或替代类型。最终变量只能设置一次;const变量是编译时常量。(Const变量是隐式最终的)最终的顶级或类变量在第一次使用时被初始化
 * 注意：实例变量可以是final但不是const。必须在构造函数体启动之前初始化最终实例变量---在变量声明，构造函数参数或构造函数的初始化列表中。
 * 以下是创建和设置最终变量的示例：
 * final name = 'Bob';   没有类型注释final String nickname = 'Bobby';
 * 无法更改最终变量的值：
 * name = 'Alice';  报错，最终变量只能设置一次
 * 使用const为变量的编译时间常数。如果const变量在类级别，请标记static const。在声明变量的地方，将值设置为编译时常量，例如数字或字符串文字，const变量或对常数进行算术运算的结果：
 * const bar = 1000000;  压力单位(dynes/cm2)
 * 该const关键字不只是声明常数变量。还可以使用它来创建常量值，以及声明创建常量值的构造函数。任何变量都可以具有常量值。
 * var foo = const [];
 * final bar = const [];
 * const baz = [];
 * 可以省略声明const的初始化表达式，不要冗余地使用const。
 * 可以更改非final，非const变量的值，即使它曾经有一个const的值：
 * FOO = [ 1,2,3 ];  是const []
 * 无法更改const变量的值：
 * baz = [ 42 ]; // 错误：无法为常量变量赋值
 */

/**
 * 内置类型Built-in types
 * 
 * Dart语言支持以下类型：
 * 数字(numbers)/字符串(strings)/布尔(booleans)/列表(lists)/套(sets)/地图(maps)/符文(runes)/符号(symbols)
 * 可以使用文字初始化任何这些特殊类型的对象。例如，'this is a string'是一个字符串文字，true是一个布尔文字。
 * 因为Dart中的每个变量都引用一个对象--一个类的实例--通常可以使用构造函数来初始化变量。一些内置类型有自己的构造函数。例如，可以使用Map()构造函数来创建地图。
 * 
 * 数字(int和double)
 * 包括基本的运算符，如+ - / * ，还有abs(),ceil(),floor()等方法。
 * 整数是没有小数点的数字。以下是定义整数文字的一些示例：
 * var x = 1;
 * var hex = 0xDEADBEEF;
 * 如果数字包含小数，则为双精度数。如下：
 * var y = 1.1;
 * var exponents = 1.42e5;
 * 从Dart 2.1开始，必要时整数文字会自动转换为双精度数：
 * double z = 1;  //相当于double z = 1.0
 * 
 * 以下是将字符串转换为数字的方法，反之亦然：
 * // String -> int
 * var one = int.parse('1');
 * assert(one == 1);
 * // String -> double
 * var onePointOne = double.parse('1.1');
 * assert(onePointOne == 1.1);
 * // int -> String
 * String oneAsString = 1.toString();
 * assert(oneAsString == '1');
 * // double -> String
 * String piAsString = 3.14159.toStringAsFixed(2);
 * assert(piAsString == '3.14');
 * 
 * int类型指定传统的按位移位(<< , >>)，AND(&)和OR(|)运算符。例如：
 * assert((3 << 1) == 6);  //0011 << 1 == 0110
 * assert((3 >> 1) == 1);  //0011 >> 1 == 0001
 * assert((3 | 4) == 7);   //0011 | 0100 == 0111
 * 
 * 文字数字是编译时常量。许多算术表达式也是编译时常量，只有它们的操作数是编译为数字的编译时常量。
 * const msPerSecond = 1000;
 * const secondsUntilRetry = 5;
 * const msUntilRetry = secondsUntilRetry * msPerSecond;
 * 
 */

/**
 * 字符串Strings
 * 
 * Dart字符串是一系列UTF-16代码单元。可以使用单引号或双引号来创建字符串：
 * var s1 = 'Single quotes work well for string literals.';
 * var s2 = "Double quotes work just as well.";
 * var s3 = 'It\'s easy to escape the string delimiter.';
 * var s4 = "It's even easier to use the other delimiter.";
 * 
 * 可以使用表达式将表达式的值放在字符串中。如果表达式是标识符，则可以跳过{}。要获取与对象相对应的字符串，Dart会调用该对象的方法。${expression}toString()
 * var s = 'string interpolation';
 * assert('Dart has $s, which is very handy.' == 'Dart has string interpolation, ' + 'which is very handy.');
 * assert('That deserves all caps.' + '${s.toUpperCase()} is very handy!' == 'That deserves all caps.' + 'STRING INTERPOLATION is very handy!');
 * 
 * 可以使用相邻的字符串文字或 + 运算符来连接字符串：
 * var s1 = 'String'
 *           'concatenation'
 *           "works even over line breaks.";
 * assert(s1 == 
 *          'String concatenation works even over'
 *          'line breaks.');
 * var s2 = 'The + operator' + 'works, as well.';
 * assert(s2 == 'The + operator works, as well.');
 * 
 * 创建多行字符串的另一种方法：使用带有单引号或双引号的三引号：
 * var s1 = '''
 *   you can create multi-line strings like this one.
 *   ''';
 * var s2 = """This is also a
 *    multi-line string.""";
 * 
 * 可以通过其添加前缀来创建 "原始" 字符串r:
 * var s = r'In a raw string, not even \n gets special treatment.';
 * 
 * 文字字符串是编译时常量，只要任何插值表达式是一个编译时常量，其值为null或数值，字符串或布尔值。
 * // 这些工作在const字符串中
 * const aConstNum = 0;
 * const aConstBool = true;
 * const aConstString = 'a constant string';
 * 
 * // 这些不适用于const字符串
 * var aNum = 0;
 * var aBool = true;
 * var sString = 'a string';
 * const aConstList = [1,2,3];
 * 
 * // const invalidConstString = '$aNum $aBool $aString $aConstList';
 * const validConstString = '$aConstNum $aConstBool $aConstString';
 * 
 */

/**
 * 布尔Booleans
 * 
 * 为了表示布尔值，Dart具有一个类型名为bool。只有两个对象具有bool类型：boolean literals true和false，它们都是编译时常量。
 * // 检查空字符串
 * var fullName = '';
 * assert(fullName.isEmpty);
 * 
 * //检查零
 * var hitPoints = 0;
 * assert(hitPoints <= 0);
 * 
 * //检查是否为空
 * var unicorn;
 * assert(unicorn == null);
 * 
 * //检查NaN
 * var iMeantToDoThis = 0 / 0;
 * assert(iMeantToDoThis.isNaN);
 */

/**
 * 列表Lists
 * 
 * 在Dart中，数组是List对象，因此被称为列表。Dart列表文字看起来像JavaScript数组文字。这是一个简单的Dart列表：
 * var list = [1, 2, 3];
 * 注意：Dart推断出list有类型List<int>。如果尝试将非整数对象添加到此列表，则分析器或运行时会引发错误。
 * 列表使用从零开始的索引，其中0是第一个元素list.length-1 的索引，并且是最后一个元素的索引。可以获得列表的长度并像在JavaScript中一样引用列表元素：
 * var list = [1, 2, 3];
 * assert(list.length == 3);
 * assert(list[1] == 2);
 * 
 * list[1] = 1;
 * assert(list[1] == 1);
 * 
 * 要创建一个编译时常量const的列表，请在列表文字前添加：
 * var constantList = const [1, 2, 3];   // constantList [1] = 1; 取消注释会导致错误
 * 
 */

/**
 * 集Sets
 * 
 * Dart中的一组是一组无序的独特物品。对集合的Dart支持由set literals和Set类型提供。
 * 这是一个简单的Dart集，使用set literal创建：
 * var halogens = { 'fluorine', 'chlorine', 'bormine', 'iodine', 'astatine'};
 * 
 * 注意：Dart推断出halogens具有该类型Set<String>。如果尝试向集合中添加错误类型的值，则分析器或运行时会引发错误。
 * 
 * 要创建一个空集，请使用{}前面带有类型参数，或者指定{}给类型的变量Set:
 * var names = < String > {};  // 设置<String> names = {};
 * 设置还是映射？ 映射文字的语法类似于集合文字的语法。由于地图文字是第一个，因此{}默认为该Map类型。如果你忘记了类型注释{}或它所分配的变量，则Dart会创建一个类型的对象Map<dynamic, dynamic>
 * 
 * 使用add()或addAll()方法将项添加到现有集：
 * var elements = <String>{};
 * elements.add('fluorine');
 * elements.addAll(halogens);
 * 
 * 使用.length得到的一组项目的数量：
 * var elements = <String>{};
 * elements.add('fluorine');
 * elements.addAll(halogens);
 * assert(elements.length == 5);
 * 
 * 要创建一个编译时常量const的集合，请在set literal之前添加：
 * final constantSet = const {
 *    'fluorine',
 *    'chlorine',
 *    'bromine',
 *    'iodine',
 *    'astatine',
 * };
 * // constantSet.add('helium');  //取消注释会导致错误
 * 
 */

/**
 * 地图Maps
 * 
 * 通常，映射是关联键和值的对象。键和值都可以是任何类型的对象。每个键只出现一次，但可以多次使用相同的值。地图的Dart支持由地图文字和Map类型提供。
 * var gifts = {
 *    Key:   Value
 *    'first':  'partridge',
 *    'second': 'turtledoves',
 *    'fifth':  'golden rings'
 * };
 * var nobleGases = {
 *    2: 'helium',
 *    10: 'neon',
 *    18: 'argon',
 * }
 * 注意：Dart推断出gifts具有类型Map<String, String>和nobleGases类型的Dart Map<int, String>。如果尝试将错误类型的值添加到任一映射，则分析器或运行时会引发错误。
 * 
 * 可以使用Map构造函数创建相同的对象：
 * var gifts = Map();
 * gifts['first'] = 'partridge';
 * gifts['second'] = 'turtledoves';
 * gifts['fifth'] = 'golden rings';
 * 
 * var nobleGases = Map();
 * nobleGases[2] = 'helium';
 * nobleGases[10] = 'neon';
 * nobleGases[18] = 'argon';
 * 
 * 像在JavaScript中一样，将新的键值对添加到现有地图中：
 * var gifts = {'first': 'partridge'};
 * gifts['fourth'] = 'calling birds';  // 添加键值对
 * 
 * 以与在JavaScript中相同的方式从地图中检索值:
 * var gifts = {'first': 'partridge'};
 * assert(gifts['first'] == 'partridge');
 * 
 * 如果查找不在地图中的键，则会得到null作为回报：
 * var gifts = {'first': 'partridge'};
 * assert(gifts['fifth'] == null);
 * 
 * 使用.length得到的映射中的键值对的数量：
 * var gifts = {'first': 'partridge'};
 * gifts['fourth'] = 'calling birds';
 * assert(gifts.length == 2);
 * 
 * 要创建一个编译时常量const的地图，请在地图文字之前添加：
 * final constantMap = const {
 *    2:  'helium',
 *    10: 'neon',
 *    18: 'argon',
 * 
 * }
 * 
 */

/**
 * 符文Runes
 * 
 * 在Dart中，符文是字符串的UTF-32代码点。
 * Unicode为世界上所有书写系统中使用的每个字母，数字和符号定义唯一的数值。由于Dart字符串是UTF-16代码单元的序列，因此在字符串中表示32位Unicode值需要特殊语法。
 * 表达Unicode代码点的常用方法是\uXXXX, XXXX是4位十六进制值。
 * 该字符串类有几个属性，可以用它来提取符文信息。在codeUnitAt和codeUnit属性返回16位编码单元。使用该runes属性获取字符串的符文。
 * 以下示例说明了符文，16位代码单元和32位代码点之间的关系。
 * main() {
 *    var  clapping = '\u{1f44f}';     
 *    print(clapping);
 *    print(clapping.codeUnits);
 *    print(clapping.runes.toList());
 * 
 *    Runes input = new Runes(
 *      '\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d}';
 *    print(new String.fromCharCodes(input))
 *    )
 * 
 * }
 * 
 */

/**
 * 符号Symbols
 * 
 * 符号对象表示Dart程序声明的操作者或标识符。可能永远不需要使用符号，但它们对于按名称引用标识符的API非常有用，因为缩小会更改标识符名称而不会更改标识符符号。
 * 要获取标识符的符号，请使用符号文字，#后面跟着标识符：
 *   #radix
 *   #bar
 * 符号文字是编译时常量。
 */

/**
 * 功能Functions
 * 
 * Dart是一种真正的面向对象语言，因此及时是函数也是对象并且具有类型Function。这意味着函数可以分配给变量或作为参数传递给其他函数。可以调用Dart类的实例，好像是一个函数一样。
 * 以下是实现函数的示例：
 * bool isNoble(int atomicNumber) {
 *    return _nobleGases[atomicNumber] != null;
 * }
 * 
 * 虽然Effective Dart建议为公共API键入注释，但如果省略类型，该函数仍然有效：
 * isNoble(atomicNumber) {
 *    return _nobleGases[atomicNumber] != null;
 * }
 * 
 * 对于只包含一个表达式的函数，可以使用简写语法：
 * bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
 * 
 * 注意：只有表达式--不是语句--可以出现在箭头(=>)和分号(;)之间。例如，不能在其中放置if语句，但可以使用条件表达式。
 * 
 * 函数可以有两种类型的参数：必须和可选。首先列出所需参数，然后列出任何可选参数。命名的可选参数也可以标记为@required。
 * 
 * 可选参数(Optional parameters)
 * 可选参数可以是位置参数，也可以是命名参数，但不能同时包
 * 
 * 可选的命名参数(Optional named parameters)
 * 调用函数时，可以使用指定命名参数。例如：paramName: value
 * enableFlags(bold: true, hidden: false);
 * 
 * 定义函数时，用于指定命名参数：{param1, param2,...}
 * void enableFlags({bool bold, bool hidden}) {...}   // 设置[bold]和[hidden]标志...
 * 
 * Flutter实例创建表达式可能变得复杂，因此窗口小部件构造函数仅使用命名参数。这使得实例创建表达式更易于阅读。
 * 可以使用@required在任何Dart代码(不仅仅是Flutter)中注释命名参数，以指示它是必须参数。例如：
 * const Scrollbar({Key key, @required Widget child})
 * 当一个Scrollbar构造，分析仪时，报告一个问题child的说法是不存在的。
 * 
 * 
 * 可选的位置参数(Optional positional parameters)
 * 包装一组函数参数将[]它们标识为可选的位置参数：
 * String say(String from, String msg, [String device]) {
 *    var result = '$from says $msg'  ;
 *    if(device != null) {
 *        result = '$result with a $device';
 *    }
 *    return result;
 * }
 * 
 * 这是一个在没有可选参数的情况下调用此函数的示例：
 * assert(say('Bob', 'Howdy') == 'Bob says Howdy');
 * 
 * 以下是使用第三个参数调用此函数的示例：
 * assert(say('Bob', 'Howdy', 'smoke signal') == 'Bob says Howdy with a smoke signal');
 * 
 * 默认参数值(Default parameter values)
 * 你的函数可用于=定义命名和位置参数的默认值。默认值必须是编译时常量。如果未提供默认值，则默认值为null。
 * 以下是为命名参数设置默认值的示例：
 * void enableFlags({bool bold = false, bool hidden = false}) {...}    //设置[bold]和[hidden]标志...
 * enableFlags(bold: true);  //粗体将是真的；隐藏将是假的
 * 
 * 显示如何设置位置参数的默认值：
 * String say(String from, String msg, [String device = 'carrier pigeon', String mood]) {
 *    var result = '$from says $msg';
 *    if(device != null) {
 *      result = '$result with a $device';
 *    }
 *    if(mood != null) {
 *      result = '$result (in a $mood mood)';
 *    }
 *    return result;
 * }
 * assert(say('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');
 * 
 * 你还可以将列表或地图作为默认值传递。以下示例定义了一个函数，该函数doStuff()指定参数的默认列表和list参数的默认映射gifts。
 * void doStuff(
 *    {List<int> list = const [1, 2, 3],
 *    Map<String, String> gifts = const {
 *      'first': 'paper',
 *      'second': 'cotton',
 *      'third':  'leather'
 *    }}) {
 *    print('list: $list');
 *    print('gifts: $gifts');
 * }
 * 
 */

/**
 * main()函数
 * 
 * 每个应用程序都必须具有顶级main()功能，该功能用作应用程序的入口点。该main()函数返回void并具有List<String>参数的可选参数。
 * 以下main()是Web应用程序功能的示例：
 * void main() {
 *     querySelector('#sample_text_id')
 *        ..text = 'Click me!'
 *        ..onClick.listen(reverseText);
 * }
 * 注意：..在代码中的语法称为级联。使用级联，可以对单个对象的成员执行多个操作。
 * 以下main()是带有的命令行应用程序的函数示例：
 *     void main(List<String> arguments) {
 *       print(arguments);
 *       assert(arguments.length == 2);
 *       assert(int.parse(arguments[0]) == 1);
 *       assert(arguments[1] == 'test);
 *     }
 * 
 * 
 * 作为第一类对象的功能
 * 可以将函数作为参数传递给另一个函数。例如：
 *     void printElement(int element) {
 *         print(element);
 *     }
 * 
 *     var list = [1, 2, 3];
 * 
 *     将printElement作为参数传递
 *     list.forEach(printElement);
 * 
 * 还可以为变量分配函数，例如：
 *     var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
 *     assert(loudify('hello') == '!!! HELLO !!!');
 * 
 * 
 * 匿名功能：
 * 
 * 大多数函数都被命名，例如main()或printElement()。还可以创建一个名为匿名函数的无名函数，有时也可以创建一个lambda或闭包。可以为变量分配匿名函数，以便例如可以在集合中添加或删除它。
 * 
 * 匿名函数看起来类似于命名函数---零个或多个参数，在逗号和括号之间用逗号和可选类型注释分隔。
 * 
 * 后面的代码块包含函数的主体：
 *       ([[Type] param1[, ...]]) {
 *         codeBlock;
 *       }
 * 
 * 以下示例使用无类型参数定义匿名函数item。为列表中的每个项调用的函数将打印一个包含指定索引处的值的字符串。
 *      var list = ['apples', 'bananas', 'oranges'];
 *      list.forEach((item){
 *        print('${list.indexOf(item)}: $item');
 *      
 *      });
 * 
 * 
 *      void main() {
 *          var list = ['apples', 'bananas', ' oranges'];
 *          list.forEach((item) {
 *              print('${list.indexOf(item)}: $item');
 *          })
 *      }
 * 
 * 如果函数只包含一个语句，则可以使用箭头表示缩短它。将以下行粘贴到DartPad中，然后单击'运行'以验证它是否在功能上等效。
 *      list.forEach(
 *          (item) => print('${list.indexOf(item)}: $item') );
 * 
 * 
 * 词汇范围：
 * Dart是一种词法范围的语言，这意味着变量的范围是静态确定的，只需通过代码的布局。以下是每个范围级别包含变量的嵌套函数示例：
 *       bool topLevel = true;
 *       void main() {
 *          var  insideMain = true;
 *          void  myFunction() {
 *             var  insideFunction = true;
 *             void  nestedFunction () {
 *                var  insideNestedFunction = true;
 *                assert(topLevel);
 *                assert(insideMain);
 *                assert(insideFunction);
 *                assert(insideNestedFunction);
 *             }
 *          }
 * 
 *       }
 * 请注意如何nestedFunction()使用每个级别的变量，一直到顶级。
 * 
 * 词汇封闭：
 * 闭合是能够访问在其词法范围的变量的函数的对象，即使当函数用于其原来的范围之外。
 * 函数可以关闭周围范围中定义的变量。在以下示例中，makeAdder()捕获变量addBy。无论返回的函数在哪里，它都会记住addBy。
 *        Function makeAdder(num addBy) {
 *             return (num i) => addBy + i;
 *        }
 * 
 *        void main() {
 *           var add2 = makeAdder(2);
 *           var add4 = makeAdder(4);
 *           assert(add2(3) == 5);
 *            assert(add4(3) == 7);
 *        }
 * 
 * 测试函数是否相等：
 * 以下是测试顶级函数，静态方法和实例方法的相等性的示例：
 *        void foo() {}  //顶级函数
 *        class A {
 *           static void bar() {}  //静态方法
 *           void baz() {}  //实例方法
 *        }
 *        void main() {
 *           var x;
 *           // 比较顶级函数
 *           x = foo;
 *           assert(foo == x);
 *           // 比较静态方法
 *           x = A.bar;
 *           assert(A.bar == x);
 *           // 比较实例方法
 *           var v = A();
 *           var w = A();
 *           var y = w;
 *           x = w.baz;
 *           // 这些闭包引用相同的实例，所以它们是相同的
 *           assert(y.baz == x);
 *           // 这些闭包是指不同的实例，所以它们是不相等的  
 *           assert(v.baz != w.baz);
 *        }
 * 
 * 
 * 返回值：
 * 所有函数都返回一个值。如果未指定返回值，则将语句return null；隐式附加到函数体。
 *        foo() {}
 *        assert(foo() == null);
 * 
 * 运营商(Operators)：
 * Dart定义下表中显示的运算符。可以覆盖许多运营商，
 * 
 * 平等和关系运营商：
 * 要测试两个对象x和y是否表示相同的事物，请使用 == 运算符。（在极少数情况下，需要知道两个对象是否完全相同的对象）以下是 == 运算符的工作方式：
 * 1.如果x或y为null，则如果两者都为null则返回true;如果只有一个为null，则返回false
 * 2.返回方法调用的结果。
 * 
 * 键入测试运算符：
 * 使用as, is和is! 运算符可以方便地在运行时检查类型。
 *       if (emp is Person) {
 *          emp.firstName = 'Bob';
 *       }
 * 可以使用as运算符缩短代码：
 *      (emp as Person).firstName = 'Bob';
 * 注意：代码不相同。如果emp为null或不是Person，则第一个示例(with is)不执行任何操作; 第二个(带as) 抛出一个异常。
 * 
 * 分配运营商：
 * 可以使用 = 运算符分配值。要仅在assign-to变量为null时分配，请使用??=运算符。
 *       a = value;
 *       b ??= value;
 * 复合赋值运算符，例如 += 将操作与赋值组合在一起。 
 * 
 * 逻辑运算符：
 * 可以使用逻辑运算符反转或组合布尔表达式。
 *       !expr   反转表达式(将false更改为true)
 *       ||      逻辑或
 *       &&      逻辑与
 * 以下使用逻辑运算符的示例：
 *       if( !done && (col == 0 || col == 3)) {
 *          
 *       }
 * 
 * 按位和移位运算符：
 * 可以在Dart中操纵数字的各个位。通常，将使用这些按位和移位运算符和整数。
 * 
 * 这是使用按位和移位运算符的示例：
 * final value = 0x22;
 * final bitmask = 0x0f;
 * assert((value & bitmask) == 0x02);  //AND
 * assert((value & ~bitmask) == 0x20);  //AND NOT
 * assert((value | bitmask) == 0x2f);   //OR
 * assert((value ^ bitmask) == 0x2d);   //XOR
 * assert((value << 4) == 0x220);  //Shift left
 * assert((value >> 4) == 0x02);  //Shift right
 * 
 * 
 * 条件表达式：
 * Dart有两个运算符，可以简明地计算可能需要if-else语句的表达式:
 *        condition ? expr1 : expr2
 *        如果condition为true，则计算expr1(并返回其值);否则，计算并返回expr2的值
 *        expr1 ?? expr2
 *        如果expr1为非null，则返回其值;否则，计算并返回expr2的值
 * 
 * 当你需要根据布尔表达式分配值时，请考虑使用 ?:
 *        var  visibility = isPublic ? 'public' : 'private';
 * 如果布尔表达式测试为null,请考虑使用 ??
 *        String playerName (String name) => name ?? '来宾';
 * 前面的例子至少可以用其他两种方式编写，但不能简洁：
 *        String playerName(String name) => name != null ? name : 'Guest';
 *        String playerName(String name) {
 *            if(name != null) {
 *               return name;
 *            }else {
 *               return 'Guest';
 *            }
 * 
 *        }
 * 
 * 
 * 级联符号(..)
 * Cascades (..) 允许对同一对象进行一系列操作。除了函数调用，还可以访问同一对象上的字段。这通常可以为你节省创建临时变量的步骤，并允许编写更多流畅的代码。
 *        querySelector('#confirm')
 *           ..text = 'Confirm'
 *           ..classes.add('important')
 *           ..onClick.listen((e) => window.alert('Confirmed!'));
 * 第一个方法调用，querySelector()返回一个选择器对象。级联表示法后面的代码对此选择器对象进行操作，忽略可能返回的任何后续值。
 * 前面的例子相当于：
 *        var button = querySelector('#confirm');
 *        button.text = 'Confirm';
 *        button.classes.add('important');
 *        button.onClick.listen((e) => window.alert('Confirmed!'));
 * 也可以嵌套级联。例如：
 *        final addressBook = (AddressBookBuilder()
 *              ..name = 'jenny'
 *              ..email = 'jenny@example.com'
 *              ..phone = (PhoneNumberBuilder()
 *                  ..number = '415-555-0100'
 *                  ..label = 'home')
 *               .build())
 *         .build();
 * 
 * 在返回实际对象的函数上构造级联。例如，以下代码失败：
 *        var sb = StringBuffer();
 *        sb.write('foo')
 *           ..write('bar');  //错误：没有为'void'定义方法'write'
 * 
 * 该sb.write()调用返回无效的，并不能构造上的级联void
 * 注意：严格来说，级联的"双点"符号不是运算符。它只是Dart语法的一部分
 * 
 * 
 * 其他运营商：
 * 在其他示例中，看到了大多数剩余的运算符:
 *        操作者       名称              含义
 *        ()          功能应用           表示函数调用
 *        []          列表访问           引用列表中指定索引处的值
 *        .           会员访问权限       指表达式的属性;示例：从表达式中foo.bar选择属性barfoo
 *        ?.          有条件的成员访问权限    比如.,但最左边的操作数可以为null;示例:从表达式中foo?.bar选择属性bar, foo除非foo为null(在这种情况下,值为foo?.bar null)
 * 
 * 
 * 控制流程语句：
 * 可以使用以下任一方法控制Dart代码的流程：
 *        if 和 else
 *        for 循环
 *        while 和 do-while循环
 *        break 和 continue
 *        switch 和 case
 *        assert
 * 
 * If and else
 *        if (isRaining()) {
 *           you.bringRainCoat();
 *        } else if (isSnowing()) {
 *           you.wearJacket();
 *        } else {
 *           car.putTopDown();
 *        }
 * 与JavaScript不同，条件必须使用布尔值，没有别的。
 * 
 * For loops
 *        var message = StringBuffer('Dart is fun');
 *        for (var i=0; i<5; i++) {
 *           message.write('!');
 *        }
 * Dart for循环内部的闭包捕获了索引的值，避免了JavaScript中常见的陷阱。
 *        var callbacks = [];
 *        for (var i = 0; i< 2; i++){
 *            callbacks.add(() => print(i));
 *        }
 *        callbacks.forEach((c) => c());
 * 0然后1，正如预期的那样输出。相反，该示例将打印2吗，然后2在JavaScript中。
 * 如果要迭代的对象是Iterable，则可以使用forEach()方法。forEach()如果不需要当前的迭代计数器，则使用是一个不错的选择：
 *        candidates.forEach((candidate) => candidate.interview());
 * 像List和Set这样for-in的可迭代类也支持迭代的形式:
 *        var collection = [0, 1, 2];
 *        for(var x in collection) {
 *            print(x);
 *        }
 * 
 * While and do-while
 * 一个while循环计算循环前的状态：
 *        while (!isDone()) {
 *            doSomething();
 *        }
 * 一个do-while循环评估循环后的条件：
 *        do {
 *            printLine();
 *        } while (!atEndOfPage());
 * 
 * Break and continue
 * 使用break停止循环：
 *        while (true) {
 *            if(shutDownRequested()) break;
 *            processIncomingRequests();
 *        }
 * 使用continue跳出下一个循环迭代：
 *        for (int i = 0; i < candidated.length; i++) {
 *            var candidate = candidates[i];
 *            if(candidate.yearsExperience < 5) {
 *                continue;
 *            }
 *            candidate.interview();
 *        }
 * 如果使用Iterable(如列表或集合)，则可能会以不同的方式编写该示例：
 *        candidates
 *             .where((c) => c.yearsExperience >= 5)
 *             .forEach((c) => c.interview());
 * 
 * 
 * Switch and case
 * Dart中的switch语句使用比较整数，字符串或编译时常量==。比较对象必须都是同一个类的实例(而不是其任何子类型)，并且该类不能覆盖==。枚举类型在switch语句中运行良好。
 * 注意：Dart中的Switch语句适用于有限的情况，例如解释器或扫描仪。
 * 每个非空case子句break通常以语句介绍。其他有效的方式来结束一个非空的case条款是continue, throw或return声明。
 * default当没有case字句匹配时，使用子句执行代码：
 *        var  command = 'OPEN';
 *        switch (command) {
 *          case 'CLOSED':
 *              executeClosed();
 *              break;
 *          case  'PENDING':
 *              executePending();
 *              break;
 *          case  'APPROVED':
 *              executeApproved();
 *              break;
 *          case  'DENIED':
 *              executeDenied();
 *              break;
 *          case  'OPEN':
 *              executeOpen();
 *              break;
 *          default:
 *              executeUnknown();
 *        }
 * 以下示例省略break了case子句中语句，从而生成错误：
 *          var  command = 'OPEN';
 *          switch (command) {
 *             case  'OPEN' :
 *                executeOpen();  //报错，缺少break
 *             case  'CLOSED':
 *                executeClosed();
 *                break;
 *          }
 * 但是，Dart确实支持空case句子，允许一种形式的落空：
 *          var  command  =  'CLOSED';
 *          switch(command) {
 *              case 'CLOSED':   //空case落空
 *              case 'NOW_CLOSED':   //会运行闭环和NOW_CLOSED
 *                  executeNowClosed();
 *                  break;
 *          }
 * 如果真的想要落空，可以使用一个continue声明和一个标签：
 *         var   command = 'CLOSED';
 *         switch (command) {
 *            case  'CLOSED':
 *               executeClosed();
 *               continue  nowClosed;   //继续在nowClosed标签上执行。
 *            nowClosed:
 *            case  'NOW_CLOSED':     //会运行闭环和NOW_CLOSED。
 *               executeNowClosed();
 *               break;
 * 
 *         }
 * 一个case条款可以有局部变量，只有内部的条款的范围是可见的。
 * 
 * 
 * 断言(Assert)
 *      assert如果布尔条件为false,则使用语句来中断正常执行。
 * 
 *      //确保变量具有非null值
 *      assert(text !=  null);
 *      //确保该值小于100
 *      assert(number < 100);
 *      //确保这是一个https URL
 *      assert(urlString.startsWith('https'));
 * 
 * 注意：断言语句对生产代码没有影响;
 * 
 * 要将消息附加到断言，请添加一个字符串作为第二个参数。
 *      assert(urlString.startsWith('https'), 'URL ($urlString) should start with "https".');
 * 
 * 第一个参数assert可以是任何解析为布尔值的表达式。如果表达式的值为true，则断言成功并继续执行。如果为false，则断言失败并抛出异常。
 * 
 * 
 * 例外(Exceptions)
 *       Dart代码可以抛出并捕获异常。例外是指示发生意外事件的错误。如果未捕获异常，则会引发异常的隔离，并且通常会隔离及其程序。
 *       与Java相比，Dart的所有异常都是未经检查的异常。方法不会声明它们可能引发的异常，并且不需要捕获任何异常。
 *       Dart提供了Exception和Error类型，以及许多预定义的子类型。当然，可以定义自己的例外情况。但是，Dart程序可以抛出任何非null对象---不仅仅是Exception和Error对象--作为例外。
 * 
 * Throw
 *       以下是抛出或引发异常的示例：
 *       throw  FormatException('Expected at least 1 section');
 *       你可以抛出任意对象：
 *       throw  'Out of llamas!';
 * 
 *       因为抛出异常是一个表达式，所以可以在 => 语句中以及允许表达式的任何其他地方抛出异常：
 *       void  distanceTo(Point other) => throw  UnimplementedError();
 * 
 * Catch
 *       捕获或捕获异常会阻止异常传播(除非重新抛出异常)。捕获异常使你有机会处理它： 
 *       try {
 *          breedMoreLlamas();
 *       } on OutOfLlamasException {
 *          buyMoreLlamas();
 *       }
 * 
 *       要处理可能抛出多种类型异常的代码，可以指定多个catch子句。与抛出对象的类型匹配的第一个catch子句处理异常。如果catch子句未指定类型，则该子句可以处理任何类型的抛出对象：
 *       try {
 *          breedMoreLlamas();
 *       } on OutOfLlamasException {
 *          buyMoreLlamas();
 *       } on Exception catch (e) {
 *          print('Unknown exception: $e');
 *       }  catch (e) {
 *          print('Something really unknown: $e');
 *       }
 * 
 *       正如上面的代码所示，可以使用on或catch或两者兼而有之。使用on时需要指定异常类型。使用catch时，你的异常处理程序需要异常对象。
 *       可以指定一个或两个参数catch()。第一个是抛出的异常，第二个是堆栈跟踪(StackTrace对象)。
 *       try {
 *           // ...
 *       } on Exception catch (e) {
 *          print('Exception details:\n $e');
 *       } catch (e, s) {
 *          print('Exception details:\n $e');
 *          print('Stack trace:\n $s');
 *       }
 *       要部分处理异常，同时允许它传播，请使用rethrow关键字。
 *       void  misbehave() {
 *           try {
 *               dynamic foo = true;
 *               print(foo++);
 *           } catch (e) {
 *               print('misbehave() partially handly ${e.runtimeType}.');
 *               rethrow;
 *           }
 *       }
 * 
 *       void  main() {
 *           try {
 *              misbehave();
 *           } catch (e) {
 *              print('main() finished handling ${e.runtimeType}.');
 *           }
 *       }
 * 
 * 最后(Finally)
 *      无法是否抛出异常，要确保某些代码运行，请使用finally子句。如果没有catch子句匹配该异常，则在finally子句运行后传播异常：
 *      try {
 *          breedMoreLlamas();
 *      } finally {
 *          // 总是清理，即使抛出异常
 *          cleanLlamaStalls();
 *      }
 *      该finally子句在任何匹配的catch子句之后运行：
 *      try {
 *         breedMoreLlamas();
 *      } catch(e) {
 *         print('Error: $e');  // 首先处理异常
 *      } finally {
 *         cleanLlamasStalls();  // 然后清理
 *      }
 * 
 * 类(Classes)
 *      Dart是一种面向对象的语言，具有类和基于minxin的继承。每个对象都是一个类的实例，所有的类都来自Object。基于Mixin的继承意味着虽然每个类(除了Object)只有一个超类，但是类体可以在多个类层次结构中重用
 * 使用班级成员(Using class members)
 *      对象具有由函数和数据(分别为方法和实例变量)组成的成员。调用方法时，可以在对象上调用它：该方法可以访问该对象的函数和数据
 *      使用点(.)来引用实例变量或方法：
 *      var  p = Point(2, 2);
 *      p.y = 3;   // 设置实例变量y的值
 *      assert(p.y == 3);   // 获取y的值
 *      num  distance = p.distanceTo(Point(4, 4));  // 在p上调用distanceTo()
 * 
 *      当最左边的操作数为null时，使用?. 而不是 . 避免异常：
 *      p ?. y = 4;   // 如果p为非null，则将其y值设置为4
 * 
 * 使用构造函数(Using constructors)
 *      可以使用构造函数创建对象。构造函数名称可以是ClassName或ClassName.identifier。例如，以下代码使用和构造函数创建对象: Point.fromJson()
 *      var  p1 = Point(2,2);
 *      var  p2 = Point.fromJson({'x': 1, 'y': 2});
 *      以下代码具有相同的效果，但new在构造函数名称之前使用可选关键字：
 *      var  p1 = new Point(2,2);
 *      var  p2 = new Point.fromJson({'x': 1, 'y': 2});
 *      有些类提供常量构造函数。要使用常量构造函数创建编译时常量，请将const关键字放在构造函数名称之前：
 *      var  p = const ImmutablePoint(2, 2);
 *      构造两个相同的编译时常量会产生一个规范的实例：
 *      var  a = const ImmutablePoint(1, 1);
 *      var  b = const ImmutablePoint(1, 1);
 *      assert(identical(a, b));    // 他们是同一个实例
 * 
 *      在常量上下文中，可以省略const构造函数或文字之前的内容。例如，查看此代码，该代码创建一个const映射：
 *      const pointAndLine = const {
 *          'point': const [const ImmutablePoint(0, 0)],
 *          'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
 *      }
 *      你可以省略除const关键字的第一次使用之外的所有内容：
 *      const pointAndLine = {
 *          'point': [ImmutablePoint(0, 0)],
 *          'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
 *      }
 *      如果常量构造函数在常量上下文之外并且在没有const它的情况下调用，则会创建一个非常量对象：
 *      var  a = const ImmutablePoint(1, 1);  //创建一个常数
 *      var  b = ImmutablePoint(1, 1);   //不创建常量
 *      assert(!identical(a,b));   //不是同一个实例
 * 
 * 
 * 获取对象的类型(Getting an object's type)
 *      要在运行时获取对象的类型，可以使用Object的runtimeType属性，该属性返回Type对象
 *      print('The type of a is ${a.runtimeType}');
 * 
 * 实例变量(Instance variables)
 *      以下是声明实例变量的方法：
 *      class Point {
 *          num x;  // 声明实例变量x，最初为null
 *          num y;  // 声明y，最初为null
 *          num z = 0;  //声明z，最初为0
 *      }
 *      所有未初始化的实例变量都具有该值null。
 *      所有实例变量都生成一个隐式getter方法。非最终实例变量也会生成隐式setter方法。
 *      class Point {
 *          num x;
 *          num y;
 *      }
 *      void main() {
 *          var point = Point();
 *          point.x = 4;    // 使用x的setter方法
 *          assert(point.x == 4);   // 使用x的getter方法
 *          assert(point.y == null);  // 值默认为null
 *      }
 *      如果初始化声明它的实例变量(而不是构造函数或方法),则在创建实例时设置该值,该实例在构造函数及其初始化列表执行之前。
 * 
 * 
 * 构造函数(Constructors)
 *      通过创建与其类同名的函数来声明构造函数(另外，可选地，如命名构造函数中所述的附加标识符)。最常见的构造函数形式，即生成构造函数，创建一个类的新实例：
 *      class Point {
 *           num x,y;
 *           Point(num x, num y) {
 *              this.x = x;
 *              this.y = y;
 *           }
 *      }
 *      该this关键字是指当前实例。
 *      注意：使用this时，才会有一个名称冲突。否则，Dart风格省略了this。
 *      将构造函数参数赋值给实例变量的模式是如此常见，Dart具有语法使其变得简单：
 *      class Point {
 *          num x, y; 
 *          //  在构造函数体运行之前设置x和y的语法   
 *          Point(this.x, this.y);
 *      }
 * 
 * 默认构造函数(Default constructors)
 *      如过未声明构造函数，则会为你提供默认构造函数。默认构造函数没有参数，并在超类中调用无参数构造函数。
 * 构造函数不是继承的(Constructors aren't inherited)
 *      子类不从其超类继承构造函数。声明没有构造函数的子类只有默认(无参数，无名称)构造函数。
 * 命名构造函数(Named constructors)
 *      使用命名构造函数为类实现多个构造函数或提供额外的清晰度：
 *      class Point {
 *           num x, y;
 *           Point(this.x, this.y);
 *           // 命名构造函数
 *           Point.origin() {
 *               x = 0;
 *               y = 0;
 *           }
 *      }
 *      请记住，构造函数不是继承的，这意味着超类的命名构造函数不会被子类继承。如果希望使用超类中定义的命名构造函数创建子类，则必须在子类中实现该构造函数。
 * 调用非默认的超类构造函数(Invoking a non-default superclass constructor)
 *      默认情况下，子类中的构造函数调用超类的未命名的无参数构造函数。超类的构造函数在构造函数体的开头被调用。如果还使用初始化列表，则在调用超类之前执行。总之，执行顺序如下：
 *      1.初始化列表
 *      2.超类的无参数构造函数
 *      3.主类的无参数构造函数
 *      如果超类没有未命名的无参数构造函数，则必须手动调用超类中的一个构造函数。在冒号(:)之后，在构造函数体(如果有)之前指定超类构造函数。
 *      
 *      在下面的示例中，Employee类的构造函数为其超类Person调用命名构造函数。
 * 
 *      class Person {
 *         String firstName;
 *         Person.fromJson(Map data) {
 *            print('in Person');
 *         }
 *      }
 * 
 *      class Employee extends Person {
 *          Employee.fromJson(Map data) : super.fromJson(data) {
 *              print('in Employeee');
 *          }
 *      }
 * 
 *      main() {
 *          var emp = new Employee.fromJson({});
 *          if (emp is Person) {
 *             emp.firstName = 'Bob';
 *          }
 *          (emp as Person).firstName = 'Bob';
 *      }
 * 
 *      因为在调用构造函数之前会计算超类构造函数的参数，所以参数可以是一个表达式，例如函数调用：
 *      class Employee extends Person {
 *          Employee() :  super.fromJson(getDefaultData());
 *          // ...
 *      }
 *     警告：超类构造函数的参数无权访问this。例如，参数可以调用静态方法，但不能调用实例方法。
 * 
 * 初始化列表(Initializer list)
 *     除了调用超类构造函数之外，还可以在构造函数体运行之前初始化实例变量。用逗号分隔初始化程序。
 *     Point.fromJson(Map<String, num>json)
 *           : x = json['x'],
 *             y = json['y'] {
 *            print('In Point.fromJson(): ($x, $y)');
 *        }
 *     警告：初始化程序的右侧无权访问this。
 *     在开发期间，可以通过assert在初始化列表中使用来验证输入。
 *     Point.withAssert(this.x, this.y) : assert(x>=0) {
 *         print('In Point.withAssert() : ($x, $y)');
 *     }
 *     设置最终字段时，初始化程序列表很方便。以下示例初始化列表中的三个最终字段。
 * 
 *     import  'dart:math';
 *     class  Point {
 *         final  num  x;
 *         final  num  y;
 *         final  num  distanceFromOrigin;
 *         Point(x, y)
 *            : x = x,
 *              y = y,
 *              distanceFromOrigin = sqrt(x * x + y * y);
 *     }
 *     main() {
 *         var p = new Point(2, 3);
 *         print(p.distanceFromOrigin);
 *     }
 * 
 * 
 * 重定向构造函数(Redirecting constructors)
 *      有时构造函数的唯一目的是重定向到同一个类中的另一个构造函数。重定向构造函数的主体是空的，构造函数调用出现在冒号 (:)之后。
 *      class Point {
 *          num  x, y;
 *          Point(this.x, this.y);  // 此类的主要构造函数
 *          Point.alongXAxis(num x) : this(x, 0);  // 委托给主构造函数
 *      }
 * 
 * 常量构造函数(Constant constructors)
 *      如果你的类生成永远不会更改的对象，则可以使这些对象成为编译时常量。为此，请定义const构造函数并确保所有实例变量都是final
 *      class  ImmutablePoint  {
 *          static  final  ImmutablePoint  origin =  const  ImmutablePoint(0, 0);
 *          final  num x, y;
 *          const  ImmutablePoint(this.x, this.y);
 *      }
 *      常量构造函数并不是总是创建常量。
 * 
 * 工厂建设者(Factory constructors)
 *      factory在实现不总是创建其类的新实例的构造函数时使用关键字。例如，工厂构造函数可能从缓存中返回实例，或者它可能返回子类型的实例。
 *      以下示例演示了从缓存中返回对象的工厂构造函数：
 *      class logger {
 *          final  String  name;
 *          bool  mute = false;
 *          static final Map<String, Logger> _cache = <String, Logger> {};
 *          factory Logger(String name) {
 *              if(_cache.containsKey(name)) {
 *                  return _cache[name];
 *              } else {
 *                  final logger = Logger. _internal(name);
 *                  _cache[name] = logger;
 *                  return logger;
 *              }
 *          }
 *          Logger. _internal(this.name);
 *          void log(String msg) {
 *              if(!mute)  print(msg);
 *          }
 *      }
 *      注意：工厂函数无权访问this。
 *      像调用任何其他构造函数一样调用工厂函数：
 *      var logger = Logger('UI');
 *      logger.log('Button clicked');
 * 
 * 方法(Methods)
 *      方法是为对象提供行为的函数。
 * 实例方法(Instance methods)
 *      对象的实例方法可以访问实例变量和this。在distanceTo()下面的示例中方法是一个实例方法的一个例子：
 *      import  'dart:math';
 *      class Point {
 *          num x, y;
 *          Point(this.x, this.y);
 *          num distanceTo(Point other) {
 *             var dx = x - other.x;
 *             var dy = y - ohter.y;
 *             return sqrt(dx * dx + dy * dy);
 *          }
 *      }
 * 
 * Getters and setters
 *      getter和setter是提供对象属性的读写访问权限的特殊方法。每个实例变量都有一个隐式getter，如果合适的话还有一个setter。可以使用get和set关键字通过实现getter和setter来创建其他属性：
 *      class  Rectangle {
 *          num  left, top, width, height;
 *          Rectangle(this.left, this.top, this.width, this.height);
 *          num  get right => left + width;
 *          set  right(num value) => left = value - width;
 *          num  get bottom => top + height;
 *          set  bottom(num value) => top = value - height;
 *      }
 * 
 *      void  main() {
 *          var  rect = Rectangle(3, 4, 20, 15);
 *          assert(rect.left == 3);
 *          rect.right = 12;
 *          assert(rect.left == -8);
 *      }
 *      使用getter和setter，你可以从实例变量开始，稍后使用方法包装它们，而无需更改客户端代码。
 *      注意：无论是否明确定义了getter,增量(++)等运算符都以预期的方式工作。为避免任何意外的副作用，操作员只需调用一次getter,将其值保存在临时变量中。
 * 
 * 抽象方法(Abstract methods)
 *      实例，getter和setter方法可以是抽象的，定义一个接口，但将其实现留给其他类。抽象方法只能存在于抽象类。
 *      要使方法成为抽象，请使用分号(;)而不是方法体：
 *      abstract  class  Doer {
 *          // 定义实例变量和方法
 *          void  doSomething();  // 定义一个抽象方法
 *      }
 *      class EffectiveDoer extends Doer {
 *          void doSomething() {
 *              // 提供一个实现，所以这里的方法不是抽象的
 *          }
 *      }
 * 
 * 抽象类(Abstract classes)
 *      使用abstract修饰符定义抽象类--无法实例化的类。抽象类对于定义接口非常有用，通常还有一些实现。如果希望抽象类看起来是可实例化，请定义工厂构造函数。
 *      抽象类通常有抽象方法。这是一个声明具有抽象方法的抽象类的示例：
 *      
 *      //  此类声明为abstract,因此无法实例化
 *      abstract  class  AbstractContainer  {
 *           //  定义构造函数，字段，方法....
 *           void  updateChildren();  // 抽象方法
 *      }
 * 
 * 隐式接口(Implicit interfaces)
 *      每个类都隐式定义一个接口，该接口包含该类的所有实例成员及其实现的任何接口。如果要在不继承B实现的情况下创建支持B类API的A类，则A类应实现B接口。
 *      类通过在implements子句中声明它们然后提供接口所需的API来实现一个或多个接口。例如：
 * 
 *      class  Person  {
 *          final _name;
 *          Person(this. _name);
 *          String greet(String who) => 'Hello, $who. I am $_name.';
 *      }
 * 
 *      class  Impostor  implements  Person  {
 *          get _name => '';
 *          String  greet(String who) =>  'Hi $who. Do you know who I am?';
 *      }
 * 
 *      String  greetBob(Person person) => person.greet('Bob');
 * 
 *      void main() {
 *           print(greetBob(Person('Kathy')));
 *           print(greetBob(Impostor()));
 *      }
 * 
 *      这是一个指定类实现多个接口的示例：
 *      class Point implements Comparable, Location {...}
 * 
 * 扩展课程(Extending a class)
 *      使用extends创建一个子类，并super to refer to the superclass：
 * 
 *      class Television {
 *           void  turnOn()  {
 *              _illuminateDisplay();
 *              _activateIrSensor();
 *           }
 *      }
 *      class SmartTelevision extends  Television {
 *           void  turnOn() {
 *               super.turnOn();
 *               _bootNetworkInterface();
 *               _initializeMemory();
 *               _upgradeApps();
 *           }
 *      }
 * 
 * 
 * Overriding  members
 *      子类可以覆盖实例方法，getter和setter。你可以使用@override注释来指示你有意覆盖成员：
 *      class  SmartTelevision  extends  Television {
 *           @override
 *           void  turnOn() {...}
 *      }
 * 
 *      要在类型安全的代码中缩小方法参数或实例变量的类型，可以使用covariant关键字。
 * 
 * 可覆盖的运营商(Overridable  operators)
 *      可以覆盖下表中显示的运算符。例如，如果定义Vector类，则可以定义+ 添加两个向量的方法。
 *      <      +       |       []
 *      >      /       ^       []=
 *      <=     ~/      &       ~
 *      >=     *       <<      ==
 *      -      %       >>
 * 
 *      注意：这!=不是一个可覆盖的运算符。表达e1 != e2
 * 
 *      这是一个覆盖 + 和 - 运算符的类的示例：
 * 
 *      class  Vector  {
 *          final  int x, y;
 *          Vector(this.x, this.y);
 *          Vector  operator + (Vector v) =>  Vector(x + v.x, y + v.y);
 *          Vector  operator - (Vector v) =>  Vector(x - v.x, y - v.y);
 *      }
 * 
 *      void  main() {
 *          final  v = Vector(2, 3);
 *          final  w = Vector(2, 2);
 *          assert(v + w == Vector(4, 5));
 *          assert(v - w == Vector(0, 1));
 *      }
 * 
 *      如果覆盖 == , 则还应覆盖Object的hashCodegetter。用于覆盖的一个例子 == 和 hashCode, 请参见实施映射键。有关覆盖的更多信息，请参阅扩展类。
 * 
 * noSuchMethod()
 *      要在代码尝试使用不存在的方法或实例变量时检测或作出反应，你可以覆盖noSuchMethod():
 *      class  A  {
 *          @override
 *          void  noSuchMethod(Invocation invocation) {
 *              print('You tried to use a non-existent member: '+'${invocation.memberName}');
 *          }
 *      }
 *      你不能调用，除非未实现的方法，一个以下是真实的：
 *         1. 接收器具有静态类型dynamic
 *         2. 接收器有一个静态类型，它定义了未实现的方法，接收器的动态类型的实现与类noSuchMethod()中的实现不同Object
 * 
 * 
 * 枚举类型(Enumerated types)
 *      枚举类型(枚举)是一种特殊类，用于表示固定数量的常量值。
 *      使用枚举(Using enums):
 *          使用enum关键字声明枚举类型：
 *          enum Color { red, green, blue}
 *          枚举中的每个值都有一个indexgetter,它返回枚举声明中值的从零开始的位置。
 *          assert(Color.red.index == 0);
 *          assert(Color.green.index == 1);
 *          assert(Color.blue.index == 2);
 *          要获取枚举中所有值的列表，请使用枚举values常量。
 *          List<Color> colors = Color.values;
 *          assert(colors[2] == Color.blue);
 *          你可以在switch语句中使用枚举，如果不处理所有枚举值，将收到警告：
 *          var  aColor = Color.blue;
 *          switch (aColor) {
 *              case Color.red:
 *                 print('Red as roses!');
 *                 break;
 *              case Color.green:
 *                 print('Green as grass!');
 *                 break;
 *              default:
 *                 print(aColor);
 *          }
 * 
 *      枚举类型具有以下限制：
 *          1.不能子类化，混合或实现枚举
 *          2.无法显式实例化枚举
 * 
 * 向类添加功能：mixins
 *      Mixins是一种在多个类层次结构中重用类代码的方法。
 *      要使用mixin,请使用with关键字后跟一个或多个mixin名称。以下示例显示了两个使用mixins的类：
 *      class Musician extends Performer with Musical {
 *          // ...
 *      }
 *      class Maestro extends Person with Musical, Aggressive, Demented {
 *          Maestro(String maestroName) {
 *              name = maestroName;
 *              canConduct = true;
 *          }
 *      }
 * 
 *      要实现mixin, 请创建一个扩展Object的类, 并且不声明构造函数。除非你希望mixin可用作常规类, 否则请使用mixin关键字而不是class。例如：
 *      mixin Musical {
 *          bool canPlayPiano = false;
 *          bool canCompose = false;
 *          bool canConduct = false;
 * 
 *          void entertainMe() {
 *              if(canPlayPiano) {
 *                 print('Playing piano');
 *              } else if (canConduct) {
 *                 print('Waving hands');
 *              } else {
 *                 print('Humming to self');
 *              }
 *          }
 *      }
 * 
 *      要指定只有某些类型可以使用mixin---例如，你的mixin可以调用它没有定义的方法--用于on指定所需的超类：
 *      mixin MusicalPerformer on Musician {
 *          // ...
 *      }
 * 
 * 
 * 类变量和方法(Class variables and methods)
 *      使用static关键字实现类范围的变量和方法。
 * 静态变量(Static variables)
 *      静态变量(类变量)对于类范围的状态和常量很有用：
 *      class Queue {
 *         static const initialCapacity = 16;
 *         // ...
 *      }
 *      void main() {
 *         assert(Queue.initialCapacity == 16);
 *      }
 *      静态变量在使用之前不会初始化。
 * 静态方法(Static methods)
 *      静态方法(类方法)不对实例进行操作，因此无权访问this。例如：
 *      import 'dart:math';
 *      class Point {
 *          num x, y; 
 *          Point(this.x, this.y);
 *          static num distanceBetweeen(Point a, Point b) {
 *             var dx = a.x - b.x;
 *             var dy = a.y - b.y;
 *             return sqrt(dx * dx + dy * dy);
 *          }
 *      }
 *      void main() {
 *         var a = Point(2, 2);
 *         var b = Point(4, 4);
 *         var distance = Point.distanceBetween(a, b);
 *         assert(2.8 < distance && distance < 2.9);
 *         print(distance);
 *      }
 * 
 *      注意：对于常用或广泛使用的实用程序和功能，请考虑使用顶级函数而不是静态方法。
 *      你可以使用静态方法作为编译时常量。例如，你可以将静态方法作为参数传递给常量构造函数。
 * 泛型(Generics)
 *      如果你查看基本数组类型的API文档List, 你会看到该类型实际上是List<E>。<...>表示法将List标记为通用(或参数化)类型--具有正式类型参数的类型。按照惯例，大多数类型变量都有单字母名称，例如E,T,S,K和V
 * 为什么要使用泛型？
 *      类型安全通常需要泛型，但它们比仅允许代码运行有更多好处：
 *          1.正确指定泛型类型会产生更好的生成代码
 *          2.可以使用泛型来减少代码重复
 *      如果你希望列表只包含字符串，则可以将其声明为List<String>(字符串列表)。这样，你可以检测到将非字符串分配给列表可能是一个错误。这是一个例子：
 *      var names = List<String>();
 *      names.addAll(['Seth', 'Kathy', 'Lars']);
 *      names.add(42);  //Error  报错
 * 
 *      使用泛型的另一个原因是减少代码重复。泛型允许在多种类型之间共享单个接口和实现，同时仍然利用静态分析。例如，假设你创建了一个用于缓存对象的接口：
 *      abstract class ObjectCache {
 *          Object getByKey(String key);
 *          void setByKey(String key, Object value);
 *      }
 *      你发现需要此接口的特定于字符串的版本，因此需要创建另一个接口：
 *      abstract class StringCache {
 *          String getByKey(String key);
 *          void setByKey(String key, String value);
 *      }
 *      通用类型可以省去创建所有这些接口的麻烦。相反，你可以创建一个带有类型参数的接口：
 *      abstract class Cache<T> {
 *          T  getByKey(String key);
 *          void setByKey(String key, T value);
 *      }
 *      在此代码中，T是替身类型。它是一个占位符，可以将其视为开发人员稍后定义的类型。
 * 使用集合文字(Using collection literals)
 *      可以参数化列表，集和地图文字。参数化文字就像你已经看到的文字一样，除了在开始括号之前添加(对于列表和集合)或(对于地图)。以下是使用类型文字的示例：<type><keyType,valueType>
 *      var names = <String>['Seth', 'Kathy', 'Lars'];
 *      var uniqueNames = <String> {'Seth', 'Kathy', 'Lars'};
 *      var pages = <String, String> {
 *          'index.html' : 'Homepage',
 *          'robots.txt' : 'Hints for web robots',
 *          'humans.txt' : 'We are people, not machines'
 *      };
 * 使用带有构造函数的参数化类型(Using parameterized types with constructors)
 *      要在使用构造函数时指定一个或多个类型，请将类型放在<...>类名称后面的尖括号()中。例如：
 *      var nameSet = Set<String>.from(names);
 *      以下代码创建一个具有整数键和View类型值的映射：
 *      var views = Map <int, view> ();
 * 通用集合及其包含的类型(Generic collections and the types they contain)
 *      Dart泛型类型的具体化，这意味着他们随身携带的类型信息在运行时。例如，你可以测试集合的类型：
 *      var names = List<String>();
 *      names.addAll(['Seth', 'Kathy', 'Lars']);
 *      print(names is List<String>);   // true
 *      注意: 相反，Java中的泛型使用擦除，这意味着在运行时删除泛型类型参数。在Java中，你可以测试对象是否为List，但你无法测试对象为List，但你无法测试它是否为a List<String>。
 * 限制参数化类型(Restricting the parameterized type)
 *      实现泛型类型时，可能希望限制其参数的类型。可以使用extends。
 *      class Foo<T extends SomeBaseClass> {
 *           String toString() => "Instance of 'Foo<$T>'";
 *      }
 *      class Extender extends SomeBaseClass {...}
 *      使用SomeBaseClass或其任何子类作为通用参数是可以的：
 *      var someBaseClassFoo = Foo<SomeBaseClass>();
 *      var extenderFoo = Foo<Extender>();
 *      也可以不指定泛型参数：
 *      var foo = Foo();
 *      print(foo);  //  Foo<SomeBaseClass>的实例
 *      指定任何非SomeBaseClass类型会导致错误：
 *      var foo = Foo<Object>();
 * 使用通用方法(Using generic methods)
 *      最初，Dart的通用支持仅限课程。一种称为泛型方法的新语法允许在方法和函数上使用类型参数：
 *      T first<T>(List<T> ts) {
 *           // 做一些初始工作或错误检查，然后...
 *           T tmp = ts[0];
 *           // 做一些额外的检查或处理....
 *           return tmp;
 *      }
 *      这里on first(<T>)的泛型类型参数允许你T在几个地方使用type参数：
 *            1.在函数的返回类型(T)中。
 *            2.在参数类型(List<T>)中。
 *            3.在局部变量的类型(T tmp)。
 * 图书馆和知名度(Libraries and visibility)
 *      该import和library指令可以帮助你创建一个模块化的，可共享的代码库。库不仅提供API，还是隐私单元：以下划线(_)开头的标识符仅在库内可见。每个Dart应用程序都是一个库，即使它不使用library指令。
 *      可以使用包来分发库。有关pub（包含在SDK中的包管理器）的信息，请参阅Pub Package和Asset Manager。
 * 使用库(Using libraries)
 *      使用import指定如何从一个库中的命名空间在另一个库的范围内使用。
 *      例如，Dart Web应用程序通常使用dart:html库，它们可以像这样导入：
 *      import 'dart:html';
 *      唯一需要的参数import是指定库的URI。对于内置库，URI具有特殊dart:方案。对于其他库，可以使用文件系统路径或package:方案。该package:方案指定由包管理器(如pub工具)提供的库。例如：
 *      import 'package:test/test.dart';
 *      注意：URI代表统一资源标识符。URL(统一资源定位符)是一种常见的URI。
 * 指定库前缀(Specifying a library prefix)
 *      如果导入两个具有冲突标识符的库，则可以为一个或两个库指定前缀。例如，如果library1和library2都有一个Element类，那么你可能有这样的代码：
 *      import 'package:lib1/lib1.dart';
 *      import 'package:lib2.lib2.dart' as lib2;
 *     
 *      Element element1 = Element();
 *      lib2.Element element2 = lib2.Element();
 * 仅导入库的一部分(Importing only part of a library)
 *      如果只想使用库的一部分，则可以有选择地导入库。例如：
 *      import 'package:lib1/lib1.dart' show foo;
 *      import 'package:lib2/lib2.dart' hide foo;
 * 懒惰地加载一个库(Lazily loading a library)
 *      延迟加载(也称为延迟加载)允许应用程序根据需要加载库，如果需要的话。以下是可能使用延迟加载的一些情况：
 *          1.减少应用程序的初始启动时间
 *          2.例如，执行A/B测试---尝试算法的替代实现
 *          3.加载很少使用的功能，例如可选的屏幕和对话框
 *      要懒加载库，必须先使用它导入它 deferred as
 *      import 'package:greetings/hello.dart' deferred as hello;
 *      当你需要库时，loadLibrary()使用库的标识符进行调用。
 *      Future greet() async {
 *          await hello.loadLibrary();
 *          hello.printGreeting();
 *      }
 *      在前面的代码中，await关键字暂停执行，直到加载库。可以loadLibrary()在库上多次调用而不会出现问题，该库只加载一次。
 *      使用延迟加载时请记住以下内容：
 *          1.延迟库的常量不是导入文件中的常量。请记住，在加载延迟库之前，这些常量不存在。
 *          2.你不能在导入文件中使用延迟库中的类型。相反，请考虑将接口类型移动到由延迟库和导入文件导入的库。
 *          3.Dart隐式插入loadLibrary()使用的命名空间。该函数返回Future。 deferred as namespaceloadLibrary()
 * 实现库(Implementing libraries)
 *      有关如何实现库包的建议，请参阅创建库包，包括：
 *          1.如何组织库源代码
 *          2.如何使用该export指令
 *          3.何时使用该part指令
 *          4.何时使用该library指令
 * 异步支持(Asynchrony support)
 *      Dart库中包含许多返回Future或Stream对象的函数。这些函数是异步的：它们在设置可能耗时的操作(例如I/O)后返回，而不等待该操作完成。
 *      在async和await关键字支持异步编程，让你写异步代码看起来类似于同步代码。
 * 处理期货(Handling Futures)
 *      当你需要完成Future的结果时，有两个选择：
 *          1.使用async和await
 *          2.使用Future API
 *      使用async和await异步的代码，但它看起来很像同步代码。例如，这里有一些代码await用于等待异步函数的结果：
 *          await lookUpVersion();
 *      要使用await,代码必须在异步函数中---标记为的函数async：
 *          Future checkVersion() async {
 *              var version = await lookUpVersion();
 *          }
 *      注意：虽然异步函数可能会执行耗时的操作，但它不会等待这些操作。相反，异步函数只在遇到第一个await表达式时执行。然后它返回一个Future对象，仅在await表达式完成后才恢复执行。
 * 
 *      使用try, catch和finally处理使用await以下代码的错误和清理：
 *      try {
 *          version = await lookUpVersion();
 *      } catch (e) {
 *         // ...
 *      }
 *      你可以await在异步功能中多次使用。例如，以下代码等待三次函数结果：
 *      var entrypoint = await findEntrypoint();
 *      var exitCode = await runExecutable(entrypoint, args);
 *      await flushThenExit(exitCode);
 *      此Future对象表示返回对象的承诺。值是返回的对象。await表达式使执行暂停，直到该对象可用。
 *      如果在使用时出现编译时错误await，请确保await处于异步功能中。例如，要await在你的应用程序的main()功能中使用，main()必须将正文标记为async：
 *      Future main() async {
 *          checkVersion();
 *          print('In main: version is ${await lookUpVersion()}');
 *      }
 * 
 * 声明异步函数(Declaring async functions)
 *      一个异步函数是一个函数体标有async修改。
 *      将async关键字添加到函数使其返回Future。例如，考虑这个同步函数，它返回一个String：
 *      String lookUpVersion() => '1.0.0';
 *      如果将其更改为异步函数--例如，因为将来的实现将非常耗时--返回的值是Future:
 *      Future<String> lookUpVersion() async => '1.0.0';
 *      请注意，函数的主体不需要使用Future API。如有需要，Dart会创建Future对象。
 *      如果你的函数没有返回有用的值，请设置其返回类型Future<void>。
 * 处理流(Handling Streams)
 *      当你需要从Stream获取值时，有两个选择：
 *          1.使用async和异步for循环(await for)
 *          2.使用Stream API
 *      异步for循环具有以下形式：
 *          await for (varOrType identifier in expression) {
 *              // ...
 *          }
 *      值expression必须具有Stream类型。执行过程如下：
 *          1.等到流发出一个值
 *          2.执行for循环的主体，将变量设置为该发出的值
 *          3.重复1和2，直到关闭流
 *      要停止侦听流，可以使用break or return语句，该for语句会从for循环中断开并从流中取消。
 *      如果在实现异步for循环时遇到编译时错误，请确保await for它处于异步函数中。例如，要在应用程序的main()函数中使用异步for循环，main()必须将正文标记为async:
 *      Future main() async {
 *           // ...
 *           await for (var request in requestServer) {
 *                handleRequest(request);
 *           }
 *           // ...
 *      }
 * 发电机(Generators)
 *      当你需要懒惰地生成一系列值时，请考虑使用生成器函数。Dart内置支持两种发电机功能：
 *           1.同步生成器： 返回一个Iterable对象
 *           2.异步生成器： 返回Stream对象
 *      要实现同步生成器函数，请将函数体标记为sync* , 并使用yield语句来传递值：
 *      Iterable<int> naturalsTo(int n) sync* {
 *           int k = 0;
 *           while (k<n) yield k++
 *      }
 *      要实现异步生成器函数，请将函数体标记为async* , 并使用yield语句来传递值：
 *      Stream<int> asynchronousNaturalsTo(int n) async* {
 *           int k = 0;
 *           while (k < n)  yield k++;
 *      }
 *      如果你的生成器是递归的，可以使用yield*以下方法来提高其性能：
 *      Iterable<int> naturalsDownFrom(int n) sync* {
 *           if(n > 0) {
 *               yield n;
 *               yield * naturalsDownFrom(n - 1);
 *           }
 *      
 *      }
 * 可调用的类(Callable classes)
 *      要允许像函数一样调用Dart类，请实现call()方法。
 *      在下面的示例中，WannabeFunction该类定义了一个call()函数，它接受三个字符串并连接它们，用空格分隔每个字符串，并附加一个感叹号。
 *      class WannabeFunction {
 *           call(String a, String b, String c) => '$a $b $c!';
 *      }
 *      main() {
 *           var wf = new WannabeFunction();
 *           var out = wf("Hi","there","gang");
 *           print('$out');
 *      }
 * 分离(Isolates)
 *      Dart代码都在隔离区内运行，而不是线程。每个隔离区都有自己的内存堆，确保不会从任何其他隔离区访问隔离区的状态。
 * 类型定义(Typedefs)
 *      在Dart中，函数是对象，就像字符串一样，数字是对象。一个类型定义，或功能型的别名，给出了一个函数类型声明字段时，可以使用和返回类型的名称。当函数类型分配给变量时，typedef会保留类型信息。
 *      请考虑以下代码，它不使用typedef：
 *      class SortedCollection {
 *          Function compare;
 *          SortedCollection(int f(Object a, Object b)) {
 *              compare = f;
 *          }
 *      }
 *      int sort(Object a, Object b) => 0;
 *      void main() {
 *          SortedCollection coll = SortedCollection(sort);
 *          assert(coll.compare if Function);
 *      }
 *      当分配类型信息丢失f到compare。类型f是(Object, Object) -> int (其中，-> 表示返回)，但类型compare是功能。如果我们将代码更改为使用显示名称并保留类型信息。
 *      typedef Compare = int Function(Object a, Object b);
 *      class SortedCollection {
 *           Compare compare;
 *           SortedCollection(this.compare);
 *      }
 *      int sort(Object a, Object b) => 0;
 *      void main(){
 *           SortedCollection coll = SortedCollection(sort);
 *           assert(coll.compare is Function);
 *           assert(coll.compare is Compare);
 *      }
 *      注意：目前,typedef仅限于函数类型。
 * 
 *      因为typedef只是别名，所以它们提供了一种检查任何函数类型的方法。例如：
 *      typedef Compare<T> = int Function(T a, T b);
 *      int sort(int a, int b) => a-b;
 *      void main() {
 *          assert(sort is Compare<int>);  //True!
 *      }
 * 元数据(Metadata)
 *      使用元数据提供有关代码的其他信息。元数据注释以字符开头@, 后跟对编译时常量的引用(如deprectated)或对常量构造函数的调用。
 *      所有Dart代码都有两个注释： @deprectated和@override 有关使用的示例@override,请参阅扩展类。以下是使用@deprecated注释的示例：
 *      class Television {
 *          @deprecated
 *          void activate() {
 *              turnOn();
 *          }
 *          void turnOn() { ... }
 *      }
 *      可以定义自己的元数据注释。这是一个定义带有两个参数的@todo注释的示例：
 *      library todo;
 *      class Todo {
 *          final String who;
 *          final String what;
 *          const Todo(this.who, this.what);
 *      }
 *      以下是使用@todo注释的示例：
 *      import 'todo.dart';
 *      @Todo('seth', 'make this do something')
 *      void doSomething() {
 *         print('do something');
 *      }
 *      元数据可以出现在库，类，typedef，类型参数，构造函数，工厂，函数，字段，参数或变量声明之前以及导入或导出指令之前。可以使用反射在运行时检索元数据。
 * 评论(Comments)
 *      Dart支持单行注释，多行注释和文档注释
 * 单行评论(Single-line comments)
 *      单行注释以 // 开头
 * 多行评论(Multi-line comments)
 *      多行注释以 /* */
 * 文档评论(Documentation comments)
 *      文档注释是首先多行或单行注释 /// 或 /** 。使用/// 连续的行上有一个多行文档注释同样的效果。
 *      在文档注释中，Dart编译器忽略所有文本，除非它括在括号中。使用括号，可以引用类，方法，字段，顶级变量，函数和参数。括号中的名称在已记录的程序元素的词法范围内得到解析。
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */