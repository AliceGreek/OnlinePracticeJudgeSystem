create database UserInfo
drop database UserInfo
go

Use UserInfo
go

create table AdminInfo(
AdminNum char(10) primary key,
AdminName char(10) ,
Password char(10)
)

drop table Student
create table Batch(
BatchNum char(10) primary key,
TeacherName char(10),
 StartDate date ,
EndDate date
)
drop table Java01
create table Student(
RegisterNum varchar(100),
BatchNum varchar(10),
EnName varchar(10),
ChName varchar(10),
Password varchar(10)
)

insert  into Student values
('201240708976','J01','Micky','ÁõËÄ','12345'),
('201340704052','J01','Linda','·¶ÏþÙ»','123');



create table Practice(
PracticeName char(10),
AdminName char(10)
)
/*the PracticeName and the table like Java ,html .... is corresponding*/
create table Java01(
Question varchar(500),
Options varchar(500),
Keys varchar(10)
)
drop table Performance


create table Performance(
RegisterNum varchar(100) not null,
PracticeName varchar(10) not null,
Score int,
CONSTRAINT uc_PersonID UNIQUE (RegisterNum,PracticeName)
)



insert into  Performance values
('201340708955','Java01','80');

select * from AdminInfo
select * from Batch
select * from Performance
select * from Practice
select * from Student
select * from Java01
select * from Html5



insert  into AdminInfo values
('001','Ravi','123'),
('002','Shaan','123'),
('003','Gaurav','123'),
('004','Anna','123'),
('005','Mark','123'),
('006','Lily','123')

insert  into Batch values
('J01','Ravi','',''),
('J02','Shaan','',''),
('M01','Gaurav','',''),
('M02','Anna','',''),
('O01','Mark','',''),
('O02','Lily','','')

insert  into Performance values
('','null',null)


insert into Practice values
('Html5','Ravi'),
('Java01','Ravi');

create table Html5(
Question varchar(500),
Options varchar(500),
Keys varchar(10)
)
insert into  Html5 values
('Which statements are false','Array is an object~Array belongs to a native class~int number=[]={31,23,33,43,35,63}~The size of the array can be changed arbitrarily','A'),
('Which statements are true','Call by value will not change the value of actual parameters~Call by reference will change the reference address of the actual parameters~Call by reference will not change the reference address of the actual parameters~Call by reference will change the contents of the actual parameters','B'),
('Which of the following can not modify the interface','Private~Public~Protected~Static','C'),
('Which statements are false','We can use this to invoke the class method in the class method~We can invoke the class method directly in the class method~Class methods that can only be invoked in this class~An instance method can not be invoked in a class method','D'),
('Which statements are false','Java for object language allows the existance of a separate process and function~Java for the object language allows the existence of a separate method~The method in the Java language is a member of the class~The method in Java language must be attached to a class object~and is the same as the process or function','C'),

('Which statements are false','The class java.exe file that can be successfully run by Java must have a main method~J2SDK is Java API~Appletviewer.exe can use the jar option to run the.Jar file~The class Appletviewer file that can be successfully run by Java must have a main method','C');


/*('Java01','2','ACD','Ravi'),
('Java01','3','ACD','Ravi'),
('Java01','4','ACD','Ravi'),
('Java01','5','BCD','Ravi')
('Java02','1','ACD','Ravi')
('Java02','2','ACD','Ravi')
('Java02','3','ABC','Ravi')
('Java02','4','BCD','Ravi')
('Java02','5','BC','Ravi')
('html01','1','ABCD','Shaan')
('html01','2','ABCD','Shaan')
('html01','3','BC','Shaan')
('html01','4','AB','Shaan')
('html01','5','ABCD','Shaan')
('html02','1','ABC','Shaan')
('html02','2','ABC','Shaan')
('html02','3','ABD','Shaan')
('html02','4','AB','Shaan')
('html02','5','ABCD','Shaan')
('jsp01','1','BD','Anna')
('jsp01','2','BD','Anna')
('jsp01','3','CD','Anna')
('jsp01','4','ACD','Anna')
('jsp01','5','BD','Anna')
('jsp02','1','CD','Anna')
('jsp02','2','ABD','Anna')
('jsp02','3','ACD','Anna')
('jsp02','4','BC','Anna')
('jsp02','5','AD','Anna')
('web01','1','BCD','Gaurav')
('web01','2','ACD','Gaurav')
('web01','3','ACD','Gaurav')
('web01','4','ACD','Gaurav')
('web01','5','BCD','Gaurav')
('web02','1','ACD','Gaurav')
('web02','2','ACD','Gaurav')
('web02','3','ABC','Gaurav')
('web02','4','BCD','Gaurav')
('web02','5','BC','Gaurav')
('hiber01','1','ABCD','Mark')
('hiber01','2','ABCD','Mark')
('hiber01','3','BC','Mark')
('hiber01','4','AB','Mark')
('hiber01','5','ABCD','Mark')
('hiber02','1','ABC','Mark')
('hiber02','2','ABC','Mark')
('hiber02','3','ABD','Mark')
('hiber02','4','AB','Mark')
('hiber02','5','ABCD','Mark')*/

insert into Java01 values
('Which of the following are the types of java program','Class~Applet~Application~Servlet','B'),
('Which statements are true','Environment variable can be specified when compiling source code~When compling program,class path is not included in specified environment program~Javac can compile many source files at meantime~Javac.exe can appoint which directory the compiled result is put in','A'),
('Which identifier are invalid','new~Usdollars~1234~car.taxi','B');
/*
('10','Which statements are true about char','Used 2 bytes in memory space','Used 8 bytes in the machine','Can be used as an integer in arithmetic expressions','Can only be forced into a plastic surgery to participate in the expression')
('11','The object that can be inserted in the table cell','Text','Image','Flash','Java plug-in')
('12','In the following options, which can be put in the middle of the layer','Text','Image','Plug-in','Laryer')
('13','In the production site, which of the following is not in the work category of the Dreamweaver','Collection and collation of content information','Production of art images','Combine all useful content into web pages','Art design of web page')
('14','In Dreamweaver, view the site map can be','View link relations','View navigation relationship','Check file is redundant','All above')
('15','Which of the following example can be achieved through the application of the layer','Create animation on the web','Production of various dynamic navigation effect','Generate rich dynamic buttons','Interactive game')
('16','The following picture format that can be used in a web page','JPG/JPEG','GIF','PNG','PICT')
('17','Which of the following statement about creating a framework is correct','Create a new HTML document, the system can be directly inserted into the framework of the default framework','Open the file menu, select the save all command, the system will automatically call you save','If you want to save the frame, you can see a circle of dotted lines around the editing area','Can not create the structure type of the thirteen other frameworks')
('18','Which of the following is the production of other sub page is correct','It is important to keep the style of the page','We can use templates to keep the same style in the same','In Dreamweaver, there is no template function, need to install the plug-in','Using a template to create a web page that has a consistent style')
('19','Website upload can pass','Dreamweaver site window','FTP software','FLASH software','Fireworks software')
('20','Which can be executed in the site menu operation','Increase link','Delete link','Modified link','Find a link to the web page')
('21','Which are true about the jsp:useBean standard action','The name atrribute is mandory','The scope attribute defaults to the page scope','The type and class attribute must not beused together','The jsp:useBean standard action may be used to declare a scripting variable that may be used in scriptlets,such as <% myBean.method(); %>')
('22','Given a session object sess with an attribute named myAttr and an HttpSessionBindingEvent object bind bound to sess. Which will retrive myAttr?','Long myAttr = sess.getAttribute("myAttr")','Object o = sess.getAttribute("myAttr")','Object o = bind.getAttribute("myAttr")','Object o = bind.getSession().getAttribute("myAttr")')
('23','Which about JSP Doucuments (XML-based documents) are true?','A JSP Document must have <jsp:root> as its top element','Both the standard <%! %> syntax as well as <jsp:declaration> may be used to declare varialbes in a JSP document','In a JSP document,page directives are defined using <jsp:directive.page> instead of <%@ %>','The <c:forEach> tag cant be used unless the c prefix has been introduced through a name space attribute')
('24','Which statements about EL implicit objects are true','${param.name} produces the value of the parameter name','${init.foo} produces the value of the context initialization named foo','The implicit object param is a map that maps parameter names to single string parameter values','PageContext,param,header and cookie are all implicit objects available to EL expressions in JSP pages')
('25','Which are true about the tag libraries in web application','A TLD file must exist in the WEB-INF/tlds directory','A TLD file may exist in the direcory of WEB-INF','A TLD file may exist in the WEB-INF directory in a .JAR file','A TLD file may exist in the META-INF directory in a .JAR file')
('26','You store the sql source file for web-database work in a web applications top-level sql directory, but you do NOT want to make this directory accessibleto HTTP requests. How do you configure the web application to forbid requests to this directory?','Protect the server with a firewall','Specify the directory with a <security-role> element in deployment descriptor','Move the directory beneath WEB-INF, the contents of which are NOT accessible to application users','Create a <security-constraint> element in the DD to prevent access to the sql directory')
('27','Which statements concerning welcome files are true','They can be declared in the DD','They can be used to respond to partial requests','If multiple welcome files are declared for a web app, their ordering in the DD is NOT meaningful','J2EE 1.4 compliant containers are required to match partial requests to URLs in the welcome file list using a specified algorithm')
('28','Which statements about the taglib directive are true','A taglib directive always identifies a tag prefix that will distinguish usage of actions in the library','Every taglib directive must specify a value for the uri attribute','Every taglib directive must specify a non-empty value for the prefix attribute','There are three attributes defined for the taglib directive: uri, tagdir, and prefix')
('29','Which statements about making a servlet¡¯s doGet() method synchronized are true','It will make access to ServletRequest attributes thread-safe','It will NOT make access to HttpSession attributes thread-safe','It may have a negative performance impact because the servlet will only be able to process one request at a time','It is necessary if the method will be using HttpSession.getAttribute() or HttpSession.setAttribute()')
('30','Which are true about EL operators','The logical operators treat a null value as false','The arithmetic operators treat a null value as Double. NaN (not a number)','Divide by zero, ${x div 0}, throws a runtime exception','Strings in EL expressions are automatically converted into the appropriate numeric or boolean values')
('31','Which of the following are the types of java program','Class','Applet','Application','Servlet')
('32','Which statements are true','Environment variable can be specified when compiling source code','.When compling program,class path is not included in specified environment program','Javac can compile many source files at meantime','Javac.exe can appoint which directory the compiled result is put in'),
('33','Which identifier are invalid','new','$Usdollars','1234','car.taxi'),
('34','Which statements are false','Array is an object','Array belongs to a native class','int number=[]={31,23,33,43,35,63}','The size of the array can be changed arbitrarily'),
('35','Which statements are true','Call by value will not change the value of actual parameters','Call by reference will change the reference address of the actual parameters','Call by reference will not change the reference address of the actual parameters','Call by reference will change the contents of the actual parameters')
('36','Which of the following can not modify the interface','Private','Public','Protected','Static')
('37','Which statements are false','We can use this to invoke the class method in the class method','We can invoke the class method directly in the class method','Class methods that can only be invoked in this class','An instance method can not be invoked in a class method')
('38','Which statements are false','Java for object language allows the existance of a separate process and function','Java for the object language allows the existence of a separate method','The method in the Java language is a member of the class','The method in Java language must be attached to a class object, and is the same as the process or function')
('39','Which statements are false','The class java.exe file that can be successfully run by Java must have a main method','J2SDK is Java API','Appletviewer.exe can use the jar option to run the.Jar file','The class Appletviewer file that can be successfully run by Java must have a main method')
('40','Which statements are true about char','Used 2 bytes in memory space','Used 8 bytes in the machine','Can be used as an integer in arithmetic expressions','Can only be forced into a plastic surgery to participate in the expression')
('41','The object that can be inserted in the table cell','Text','Image','Flash','Java plug-in')
('42','In the following options, which can be put in the middle of the layer','Text','Image','Plug-in','Laryer')
('43','In the production site, which of the following is not in the work category of the Dreamweaver','Collection and collation of content information','Production of art images','Combine all useful content into web pages','Art design of web page')
('44','In Dreamweaver, view the site map can be','View link relations','View navigation relationship','Check file is redundant','All above')
('45','Which of the following example can be achieved through the application of the layer','Create animation on the web','Production of various dynamic navigation effect','Generate rich dynamic buttons','Interactive game')
('46','The following picture format that can be used in a web page','JPG/JPEG','GIF','PNG','PICT')
('47','Which of the following statement about creating a framework is correct','Create a new HTML document, the system can be directly inserted into the framework of the default framework','Open the file menu, select the save all command, the system will automatically call you save','If you want to save the frame, you can see a circle of dotted lines around the editing area','Can not create the structure type of the thirteen other frameworks')
('48','Which of the following is the production of other sub page is correct','It is important to keep the style of the page','We can use templates to keep the same style in the same','In Dreamweaver, there is no template function, need to install the plug-in','Using a template to create a web page that has a consistent style')
('49','Website upload can pass','Dreamweaver site window','FTP software','FLASH software','Fireworks software')
('50','Which can be executed in the site menu operation','Increase link','Delete link','Modified link','Find a link to the web page')
*/

