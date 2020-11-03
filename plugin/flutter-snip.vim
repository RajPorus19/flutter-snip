function! STL()

    let functionName = input("Stateless widget's name: ")
    let text = "class ".functionName." extends StatelessWidget {"
    let text = text."\nconst ".functionName."({ Key key }) : super(key: key);"
    let text = text."\n\n@override"
    let text = text."\nWidget build(BuildContext context) {"
    let text = text."\nreturn Container("
    let text = text."\n);"
    let text = text."\n}"
    let text = text."\n}"

    execute "normal! i" . text . "\<Esc>"
endfunction


function! STF()

    let functionName = input("Stateful widget's name: ")
    let text = "class ".functionName." extends StatefulWidget {"
    let text = text."\n\tconst ".functionName."({ Key key }) : super(key: key);"
    let text = text."\n\n@override"
    let text = text."\nWidget build(BuildContext context) {"
    let text = text. "\State createState() => ".functionName."State();}"
    let text = text."\n\nclass _".functionName."State extends State<".functionName."> {"
    let text = text."\n@override"
    let text = text."\nreturn Container("
    let text = text."\n);"
    let text = text."\n}"
    let text = text."\n}"

    execute "normal! i" . text . "\<Esc>"
endfunction

function! Build()
    let text = "@override"
    let text = text."\nWidget build(BuildContext context) {"
    let text = text."\n\treturn Container();"
    let text = text."\n}"
    execute "normal! i" . text . "\<Esc>"
endfunction

function! Paint()
    let functionName = input("your customPainter's name: ")
    let text = "class ".functionName." extends CustomPainter {"
    let text = text."\n\t@override"
    let text = text."\nvoid paint(Canvas canvas, Size size) {"
    let text = text."\n}"
    let text = text."\n\t@override"
    let text = text."\nbool shouldRepaint(".functionName." oldDelegate) => false;"
    let text = text."\n@override"
    let text = text."\nbool shouldRebuildSemantics(".functionName." oldDelegate) => false;"
    let text = text."\n}"
    execute "normal! i" . text . "\<Esc>"
endfunction

function! Clipper()
    let functionName = input("your clipper's name: ")
	let text = "\nclass ".functionName." extends CustomPainter {"
	let text = text."\n\t@override"
	let text = text."\nvoid paint(Canvas canvas, Size size) {"
	let text = text."\n\t@override"
	let text = text."\nbool shouldRepaint(".functionName." oldDelegate) => false;"
	let text = text."\n@override"
	let text = text."\nbool shouldRebuildSemantics(".functionName." oldDelegate) => false;"
	let text = text."\n}"
	let text = text."\n}"

    execute "normal! i" . text . "\<Esc>"
endfunction

function! Init()
    let text ="@override"
    let text = text."\nvoid initState() { "
    let text = text."\nsuper.initState();"
    let text = text."\n"
    let text = text."\n}" 

    execute "normal! i" . text . "\<Esc>"
endfunction


function! Dispose()
    let text ="@override"
    let text = text."\nvoid dispose() { "
    let text = text."\n"
    let text = text."\nsuper.dispose();"
    let text = text."\n}" 

    execute "normal! i" . text . "\<Esc>"
endfunction

function! Reassemble()
    let text ="@override"
    let text = text."\nvoid reassemble() { "
    let text = text."\nsuper.reassemble();"
    let text = text."\n"
    let text = text."\n}" 

    execute "normal! i" . text . "\<Esc>"
endfunction

function! DidChangeDependencies()
    let text ="@override"
    let text = text."\nvoid didChangeDependencies() { "
    let text = text."\nsuper.didChangeDependencies();"
    let text = text."\n"
    let text = text."\n}" 

    execute "normal! i" . text . "\<Esc>"
endfunction

function! DidUpdateWidget()
    let text ="@override"
    let text = text."\nvoid didUpdateWidget(/*Type oldWidget*/) { "
    let text = text."\nsuper.didChangeDependencies(/*oldWidget*/);"
    let text = text."\n"
    let text = text."\n}" 

    execute "normal! i" . text . "\<Esc>"
endfunction

function! ListViewBuilder()
	let text ="ListView.builder("
	let text = text."\nitemCount: /*item*/,"
	let text = text."\nitemBuilder: (BuildContext context, int index) {"
	let text = text."\nreturn /*returnValue*/;"
	let text = text."\n},"
	let text = text."\n)," 

    execute "normal! i" . text . "\<Esc>"
endfunction

function! ListViewSeparated()
	let text = "ListView.separated("
	let text = text."\nitemCount: ${1:1},"
	let text = text."\nseparatorBuilder: (BuildContext context, int index) {"
	let text = text."\nreturn ${2:};"
	let text = text."\n},"
	let text = text."\nitemBuilder: (BuildContext context, int index) {"
	let text = text."\nreturn ${3:};"
	let text = text."\n},"
	let text = text."\n)"

    execute "normal! i" . text . "\<Esc>"
endfunction

function! ScrollView()
let text = "CustomScrollView("
let text = text."\nslivers: <Widget>["
let text = text."\n"
let text = text."\n],"
let text = text."\n)"

    execute "normal! i" . text . "\<Esc>"
endfunction 
 
function! StreamBuilder()

let text = "StreamBuilder("
let text = text."\nstream: ${1:stream} ,"
let text = text."\ninitialData: ${2:initialData} ,"
let text = text."\nbuilder: (BuildContext context, AsyncSnapshot snapshot){"
let text = text."\nreturn Container("
let text = text."\nchild: /*child*/,"
let text = text."\n);"
let text = text."\n},"
let text = text."\n),"

    execute "normal! i" . text . "\<Esc>"
endfunction 
 

function! AnimBuilder()

let text ="AnimatedBuilder("
let text = text."\nanimation: ${1:animation},"
let text = text."\nchild: ${2:child},"
let text = text."\nbuilder: (BuildContext context, Widget child) {"
let text = text."\nreturn ${3:};"
let text = text."\n},"
let text = text."\n)"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! STFBuilder()

let text = "StatefulBuilder("
let text = text."\nbuilder: (BuildContext context, setState) {"
let text = text."\nreturn ${0:};"
let text = text."\n},"
let text = text."\n),"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! OrientationBuilder()

let text = "OrientationBuilder("
let text = text."\nbuilder: (BuildContext context, Orientation orientation) {"
let text = text."\nreturn Container("
let text = text."\nchild: ${3:child},"
let text = text."\n);"
let text = text."\n},"
let text = text."\n)"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! LayoutBuilder()

let text = "LayoutBuilder("
let text = text."\n  builder: (BuildContext context, BoxConstraints constraints) {"
let text = text."\n    return ${0:};"
let text = text."\n  },"
let text = text."\n)"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! SingleChildScroll()

let text = "SingleChildScrollView("
let text = text."\n  controller: ${1:controller,}"
let text = text."\n  child: Column("
let text = text."\n    ${0:}"
let text = text."\n  ),"
let text = text."\n)"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! FutureBuilder()

let text = "FutureBuilder("
let text = text."\n  future: ${1:Future},"
let text = text."\n  initialData: ${2:InitialData},"
let text = text."\n  builder: (BuildContext context, AsyncSnapshot snapshot) {"
let text = text."\n    return ${3:};"
let text = text."\n  },"
let text = text."\n)"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! NoSuchMethod()

let text = "@override"
let text = text."\ndynamic noSuchMethod(Invocation invocation) {"
let text = text."\n  ${1:}"
let text = text."\n}"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! InheritedWidget()
let functionName = input("Stateless widget's name: ")
" Replace class names
let text = "class ${1:Name} extends InheritedWidget {"
let text = text."\n  ${1:Name}({Key key, this.child}) : super(key: key, child: child);"
let text = text."\n"
let text = text."\n  final Widget child;"
let text = text."\n"
let text = text."\n  static ${1:Name} of(BuildContext context) {"
let text = text."\n    return context.dependOnInheritedWidgetOfExactType<${1:Name}>();"
let text = text."\n  }"
let text = text."\n"
let text = text."\n  @override"
let text = text."\n  bool updateShouldNotify(${1:Name} oldWidget) {"
let text = text."\n    return ${2:true};"
let text = text."\n  }"
let text = text."\n}"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! Mounted()

let text = "@override"
let text = text."\nbool get mounted {"
let text = text."\n  ${0:}"
let text = text."\n}"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! Sink()

let text = "Sink<${1:type}> get ${2:name} => _${2:name}Controller.sink;"
let text = text."\nfinal _${2:name}Controller = StreamController<${1:type}>();"
            
	execute "normal! i" . text . "\<Esc>"
endfunction

function! Stream()

let text ="Stream<${1:type}> get ${2:name} => _${2:name}Controller.stream;",
let text = text."\nfinal _${2:name}Controller = StreamController<${1:type}>();"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! Subject()

let text ="Stream<${1:type}> get ${2:name} => _${2:name}Subject.stream;"
let text = text."\nfinal _${2:name}Subject = BehaviorSubject<${1:type}>();"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! ToStr()

let text ="@override"
let text = text."\nString toString() {"
let text = text."\nreturn ${1:toString};"
let text = text."\n}"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! DebugPrint()

let text =  "debugPrint(${1:statement});"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! MaterialPackage()

let text = "import 'package:flutter/material.dart';"

	execute "normal! ggO" . text . "\<Esc>"
endfunction

function! CupertinoPackage()

let text = "import 'package:flutter/cupertino.dart';"

	execute "normal! ggO" . text . "\<Esc>"
endfunction

function! FlutterTestPackage()

let text = "import 'package:flutter_test/flutter_test.dart';"

	execute "normal! ggO" . text . "\<Esc>"
endfunction

function! MaterialApp()

call MaterialPackage()
let text =  "id main() => runApp(MyApp());"
let text = text."\n "
let text = text."\nclass MyApp extends StatelessWidget {"
let text = text."\n  @override"
let text = text."\n  Widget build(BuildContext context) {"
let text = text."\n    return MaterialApp("
let text = text."\n      title: 'Material App',"
let text = text."\n      home: Scaffold("
let text = text."\n        appBar: AppBar("
let text = text."\n          title: Text('Material App Bar'),"
let text = text."\n        ),"
let text = text."\n        body: Center("
let text = text."\n          child: Container("
let text = text."\n            child: Text('Hello World'),"
let text = text."\n          ),"
let text = text."\n        ),"
let text = text."\n      ),"
let text = text."\n    );"
let text = text."\n  }"
let text = text."\n}"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! CupertinoApp()

call CupertinoPackage()
let text = "void main() => runApp(MyApp());"
let text = text."\n "
let text = text."\nclass MyApp extends StatelessWidget {"
let text = text."\n  @override"
let text = text."\n  Widget build(BuildContext context) {"
let text = text."\n    return CupertinoApp("
let text = text."\n      title: 'Cupertino App',"
let text = text."\n      home: CupertinoPageScaffold("
let text = text."\n        navigationBar: CupertinoNavigationBar("
let text = text."\n          middle: Text('Cupertino App Bar'),"
let text = text."\n        ),"
let text = text."\n        child: Center("
let text = text."\n          child: Container("
let text = text."\n            child: Text('Hello World'),"
let text = text."\n          ),"
let text = text."\n        ),"
let text = text."\n      ),"
let text = text."\n    );"
let text = text."\n  }"
let text = text."\n}"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! TweenAnimBuilder()

let text = "TweenAnimationBuilder(",
let text = text."\n    duration: ${1:const Duration(),}"
let text = text."\n    tween: ${2:Tween(),}"
let text = text."\n    builder: (BuildContext context, ${3:dynamic} value, Widget child) {"
let text = text."\n       return ${4:Container();}"
let text = text."\n     },"
let text = text."\n ),"

	execute "normal! i" . text . "\<Esc>"
endfunction

function! ValueListenBuilder()

let text = "ValueListenableBuilder(",
let text = text."\n    valueListenable: ${1: null},"
let text = text."\n    builder: (BuildContext context, ${2:dynamic} value, Widget child) {"
let text = text."\n       return ${3: Container();}"
let text = text."\n    },"
let text = text."\n ),"

	execute "normal! i" . text . "\<Esc>"
endfunction

function Ftest()

let text = "test("
let text = text."\n   \"${1:test description}\","
let text = text."\n   () {},"
let text = text."\n);"

	execute "normal! i" . text . "\<Esc>"
endfunction

function TestWidget()

let text = "testWidgets("
let text = text."\n\t/*code here*/"
let text = text."\n(WidgetTester tester) async {},"
let text = text."\n);"

	execute "normal! i" . text . "\<Esc>"
endfunction


function! FlutterSnip()

let snip = expand("<cword>")
	execute "normal! bdW" . "\<Esc>"
echo snip
if snip == "stl"
    call STL() 
elseif snip == "stf"
    call STF() 
elseif snip == "build"
	call Build()
elseif snip == "paint"
	call Paint()
elseif snip == "clipper"
	call Clipper()
elseif snip == "init"
	call Init()
elseif snip == "disp"
	call Dispose()
elseif snip == "reass"
	call Reassemble()
elseif snip == "dcd"
	call DidChangeDependencies()
elseif snip == "didUpW"
	call DidUpdateWidget()
elseif snip == "listVB"
	call ListViewBuilder()
elseif snip == "listVS"
	call ListViewSeparated()
elseif snip == "scrollV"
	call ScrollView()
elseif snip == ""
	call StreamBuilder()
elseif snip == ""
	call AnimBuilder()
elseif snip == ""
	call STFBuilder()
elseif snip == ""
	call OrientationBuilder()
elseif snip == ""
	call LayoutBuilder()
elseif snip == ""
	call SingleChildScroll()
elseif snip == ""
	call FutureBuilder()
elseif snip == ""
	call NoSuchMethod()
elseif snip == ""
	call InheritedWidget()
elseif snip == ""
	call Mounted()
elseif snip == ""
	call Sink()
elseif snip == ""
	call Stream()
elseif snip == ""
	call Subject()
elseif snip == ""
	call ToStr()
elseif snip == ""
	call DebugPrint()
elseif snip == ""
	call MaterialPackage()
elseif snip == ""
	call CupertinoPackage()
elseif snip == ""
	call FlutterTestPackage()
elseif snip == ""
	call MaterialApp()
elseif snip == ""
	call CupertinoApp()
elseif snip == ""
	call TweenAnimBuilder()
elseif snip == ""
	call ValueListenBuilder()
elseif snip == ""
	call Ftest()
elseif snip == ""
	call TestWidget()
elseif snip == ""
	call FlutterSnip()
else 
    echo "Unkown snippet"
	execute "normal! i" . snip . "\<Esc>"
endif
endfunction
