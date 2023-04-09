String flutter_temel =''' 



Flutter; mobil, web ve masaüstü uygulamaları geliştirmek için kullanılan açık kaynak kodlu bir uygulama arayüzü araç takımıdır.
2017 yılında Google tarafından geliştirilmiştir. 
Mobil uygulamaları pratik bir şekilde geliştiren yazılım geliştirme kiti ve yazılım geliştirme aşamasında kullanılan kullanıcı ara yüzü (UI) bileşenlerini barındıran framework’den oluşur.
Flutter üzerinden bir uygulama geliştirmek için Dart programlama dili kullanılır. 
Dart programlama dili de 2011 yılında Google tarafından geliştirilmiştir.


Flutter, birden fazla platformda (iOS, Android, web ve masaüstü) çalışabilen tek bir kod tabanı kullanarak uygulama geliştirmeyi mümkün kılar. 
Bu, uygulama geliştirme sürecini daha verimli hale getirir ve farklı platformlar için ayrı kod yazma ihtiyacını azaltır.
Temel olarak baktığımızda mobil uygulamalar widgetlar’dan oluşur, bu widgetlar bir ekran tuvaline işlenir ve oluşan olaylar tekrardan bu widgetlar’a geri gönderilir. 
Diğer yandan cihazın kamera, ses ve diğer kısımlarına erişmek için platform ile konuşulur. 


Anlattığımız bu basit mimaride İOS ve Android tarafında widgetlar farklı olduğu için yazılım dili belli olmadığından ayrı ayrı uygulama geliştirmemiz gerekir.


Flutter’ın mimarisi ise diğer mimarilere göre farklılık göstermektedir. Flutter, widgetlar ve renderlama olayını doğrudan uygulama içerisinden platforma aktarıyor. Flutter’ın platform tarafında tüm ihtiyacı olan kısımlar cihazın ekranında oluşup sonradan sonradan platform içinde kamera, lokasyon gibi cihaz donanımlarına erişim sağlıyor.


Flutter ile uygulama geliştirirken diğer dillere göre yazılımcıların işini kolaylaştıran bazı özellikleri mevcuttur.

•	Flutter, esnek bir SDK’dır ve Windows, Linux ya da Mac ortamlarında rahatlıkla çalıştırılabilir.
•	Flutter, esnek bir SDK’dır ve Windows, Linux ya da Mac ortamlarında rahatlıkla çalıştırılabilir.
•	Flutter, yapısında Material Design ve Cupertino (iOS tarzı) widget’ler, temalar yardımıyla her iki platform için de efektif uygulamalar geliştirmeye olanak sağlar.
•	Flutter birçok geliştirme ortamında bulunmayan Hot reload adında bir gerçek zamanlı düzenleme özelliğine sahiptir. Hot Reload ile geliştiriciler uygulamalarını hazırlar veya düzenlerken, gerçek zamanlı olarak yaptıkları değişikliklerin uygulama üzerindeki yansımalarını anında görebilir.


Bir sonraki modülde Flutter’da uygulama geliştirirken kullanacağımız dart diline giriş yapacağız.
''';

String flutterDegislenler = '''



Dart Dilinde Değişkenler

Değişkenler bir programlama dilinde verilerin depolanma alanlarını temsil eder.
Tanımlanan her değişkene bellek bölgesinden bir alan ayrılır. Bu bellek bölgesine okuma ve yazma işlemleri ise değişken ismi üzerinden sağlanır. Genel olarak değişkenler aşağıdaki şekilde tanımlanır.

<veri tipi><değişken adı>;

Değişken İsimlendirme Kuralları

1.	Değişkenlerin isimleri alfabede bulunan karakterlerle veya _(alt çizgi) ile başlamalıdır. Ama ilk harf hariç diğer karakterler sayı olabilir.

2.	Bazı programlama dilleri büyük ve küçük harf duyarlıdır. Yani Sayi, sayi ve SAYI hepsi ayrı değişken olarak algılanır (Case Sentitive).

3.	Değişken isimleri birden fazla kelime olduğu zaman; kelimelerin arasına boşluk konmaz. Bu tür değişkenleri ya kelimeleri birleştirerek veya
kelimeler arasına _(alt çizgi) karakteri koyararak isimlendiririz.

4.	Değişkenlerin isimleri !, ?, {, ] gibi karakterler içeremez.

5.	Programlama dili için tanımlanmış anahtar kelimelerini de değişken isimleri olarak kullanamayız (Örneğin String null=”Boş”;).


Değişken isimlendirirken genel olarak kullanılan iki notasyon bulunmaktadır. Bunlardan ilki camelNotasyonu diğeri ise PascalNotasyonudur.


Değişkenler hakkında bilgileri aldıktan sonra gelin dart dilindeki değişkenlere bakalım.

Dart dilinde, değişkenleri tanımlarken kullandığımız dört farklı anahtar kelime mevcut. Bunlar sırasıyla;

•	var
•	const
•	final
•	dynamic
anahtar kelimeleridir.


var : Bu anahtar kelimemizi kullanarak oluşturduğumuz değişkenlerin veri tiplerini belirtmek zorunda değiliz. Dart, bunu kendisi otomatik olarak algılayacak ve atadığımız veri tipinde bir nesne oluşturarak ona referans gösterecektir.


var anahtar kelimesiyle tanımlanan değişkenlerin veri tipleri daha sonradan değiştirilemez. Aynı veri tipinde yeni bir değer ataması ise yapabilirsiniz.

const : Bu anahtar kelimemiz de, var anahtar kelimesi gibi otomatik tip belirleme özelliğine sahip. Fakat const anahtar kelimesinin değeri, değişken tanımlanırken atanmak zorunda. var gibi önce değişkeni tanımlayıp sonradan değerini atayamıyoruz. Aynı zamanda const ile tanımlanan değişkenlerin değerleri de sonradan değiştirilemiyor. Bu nedenle const anahtar kelimesini biz, değeri sonradan değişmeyecek sabit olan değişkenler için kullanıyoruz. Bu aynı zamanda kod okuyan kişiye de kolaylık sağlar. Kod ekranına baktığınızda const anahtar kelimesini görüyorsanız bilmelisiniz ki, bu değişkenin değeri programın ilerleyen satırların hiçbirinde değişmiyor.

Son özellik olarak const anahtar kelimesi ile tanımlanan değişkenler compiler-time dediğimiz derleme zamanında değer ataması yapıldığı, devreye girdiği için performans açısından önemlidir. Derleme zamanında çalıştığı için mevcut değeri başka bir değişkene atanamaz. Derleme zamanı dediğimiz kavram da, kodumuzun çalıştırılabilir duruma dönüştürüldüğü andır. Çalışma zamanı dediğimiz run-time ise, programımızın çalışıyorkenki halidir.

final : Bu anahtar kelimemiz de const anahtar kelimesi gibi sabit değerler için kullanılır ve aynı const gibi ilk tanımladığı zaman değeri atanmalıdır. Veri tipi yine otomatik olarak belirlenir. Aralarındaki fark ise const derleme zamanında değeri atanırken final ise kodu yazdığımız esnada değeri atanıyor. Bu sebeple const ile yapamadığımız bir şeyi artık yapabiliyoruz. Başka bir değişkenin değerini final ile tanımlanan sabite değer olarak atayabiliyoruz.


dynamic : Bu anahtar kelimemiz ile tanımlanan değişkenler, var anahtar kelimesi ile tanımlanan değişkenlerle aynı özelliklere sahiptir. Veri tipi otomatik olarak belirlenir. İlk başta değişkeni tanımlayıp daha sonradan değer ataması yapabilirsiniz. Peki özellikleri bu kadar benzerlik gösteriyorsa var yerine neden dynamic anahtar kelimesini kullanıyoruz? Çünkü var ile yapamadığımız sonradan atanan değerin veri tipi değişikliğini bu anahtar kelime ile gerçekleştirebiliyoruz. 


Hatırlarsanız var değişkenlerine atanan değerlerin veri tiplerini daha sonradan tekrar atama yöntemiyle değiştiremiyorduk. Fakat dynamic değişkenlerinin değerleri ve veri tipleri sonradan atama yöntemiyle değiştirilebiliyor. Fakat, bu yöntemin kullanılması pek sağlıklı değildir. Dışarıdan bakınca bize bir esneklik sunuyor fakat programlamada her şey katı, kesin ve net olarak ilerlemelidir. Aksi halde hata almak kolay, hata ayıklamak çok daha zor bir hal alacaktır.



Değişkenleri tanımlarken kullanılan anahtar kelimeler hakkında bilgileri aldıktan sonra gelin dart dilindeki veri tiplerine bakalım.

1.	Number
Number ana tipi numerik değişkenleri hafızada tutmak içindir. İstersek num ifadesi ile kullanabiliriz ancak çalışacağımız tipe göre en başından int veya double gibi tanımlamak tavsiye edilmektedir.
Number ikiye ayrılır:

1.1 Integer
Tam sayılar için kullanılan tiptir. int terimi ile kullanılır.
int sayi = 10;

1.2	Double
Küsuratlı sayılar için kullanılan tiptir. double terimi ile kullanılır.
double sayi = 5.21;

2.	String
String tipi metinsel ifadeleri hafızada tutmak için kullanılır. String terimi ile kullanılır.
String metin = “Merhaba”;

3.	Boolean
Boolean veri tipi mantıksal ifadeyi hafızada tutmak için kullanılır. bool terimi ile kullanılır.
bool online = true;


''';

String flutter_fonksiyonlar = '''



Flutter Fonskiyonlar:

Dart programlama dilinde de diğer dillerde olduğu gibi fonksiyon yapılarını kullanabiliriz. Fonksiyonları ihtiyacı olan ham maddeleri sağladıktan sonra maddelerimizi belirlediğimiz kurallar çerçevesinde işlemlerden geçiren ve sonucunda bize ürün veren bir fabrika yapısına benzetebiliriz. Fonksiyonları kullanma amacımız kod tekrarını önleyerek programlamayı daha pratik bir hale getirmektir.

Temel Fonksiyon Yapısı :

Dönüş türü fonksiyonun ismi (parametre) {
// çalıştırılacak kodlar
return dönüş değeri
}

Tüyo ! 
Dönüş türü olmayan fonksiyonlar "void" Anahtar kelimesi ile tanımlanır.


Fonksiyon Türleri


Fonksiyon giriş yaptık şimdi bu kavramı daha derin hale getirip fonksiyonların türlerine ve özelliklerine bakalım.
Geri dönüş değeri olmayan fonksiyonlar:
Bu tarz fonksiyonlarda sadece yazdığımız kodlar çalıştırılır ve istediğimiz işlem yapıldıktan sonra fonksiyon çalışmayı durdurur bize herhangi bir veri döndürmez. Geri dönüş değeri olmayan fonksiyonlara da parametreler tanımlayabiliriz.


Örnek verelim
 Void main(){
    Void tanıtmaFonksiyonu(){
      String metin = “Ben kodlama öğreniyorum”;
        print(metin);
      }  tanitmaFonksiyonu();
}

Çıktı: 
Ben kodlama öğreniyorum


Geri dönüş değeri olan fonksiyonlar:  
Bu tarz fonksiyonlarda ise işlemi yaptıktan sonra bize belirli bir sonuç döndürür. Fonksiyonlardan dönen değeri bir değişkene tanımlayıp ihtiyacımız olan yerlerde kullanabiliriz. Geri dönüş değeri olan fonksiyonları da tür belirleyerek tanımlayabiliriz.

Örnek bir fonksiyon  tanımlayalım

Void main(){
String UygulamaAdimiSoyle (){
  String isim = “Google Oyun ve Uygulama Akademisi”;
   Return isim;
    }
    String FonksiyonSonuc =
   UygulamaAdimiSoyle();
}

 Çıktımız:
Google Oyun ve Uygulama Akademisi

Şimdi de fonksiyonların parametrelerinden bahsedelim.
 
Fonksiyonların içerisine kendilerine ait parametreler tanımlayabiliriz, bu parametreler fonksiyonların dışarıdan hangi değerleri alacağını söyler.
 
Parametre tanımlaması değişken tanımlamanın aynısıdır parametrenin türü ve değeri olarak tanımlanır, bir fonksiyonun birden fazla parametresi olabilir.


Fonksiyonlarda Kısa Gösterim : Fat Arrow

Temel fonksiyon yapılarını öğrendik şimdi fonksiyonların kısa gösterim yöntemi olan fat arrow yöntemine bir göz atalım Arrow fonksiyonlar, normal fonksiyonlara alternatiftir.Arrow fonksiyon yapısı return anahtar kelimesi kullanılmadam da geriye değer döndürebilir.

Bunun için kodun yalnızca bir satırdan oluşması ve süslü parantez içine alınmaması gerekir.

Arrow Fonksiyonlarımızda kodumuz birden fazla satırdan oluşuyorsa süslü parantezler içerisine yazılmalı ve return anahtar kelimesi kullanılmalıdır.
Dönüş tipi Fonksiyon adı(Parametreler…) => Yapılcak işlem; 


Örnek üzerinde inceleyelim
 Void main(){
 print(“Sayıların Çarpımı : “+ sayılariCarp(7,5).toString());
} int sayılariCarp (int sati1, int sayi2) => sayi1*sayi2;

  Çıktımız
  Sayıların Çarpımı : 35

Constructor Kavramı :

Yapılandırıcı anlamına gelen construcklar nesne yönelimli bir dil olan dart dilinde bir sınıftan nesne oluşturulması için gerekli olan yapılardır.
 
Bir sınıf oluşturduğumuzda kendisi otomatik olarak oluşur.
This anahtar kelimesi ile sınıfımız içerisindeki değişkenlere referans vererek dolu constructor oluşturabiliriz.

TÜYO
Bir sınıfta hem dolu hem boş constructor olamaz.

Hadi bir örnekle durumu özetleyelim

Bir öğrenci sınıfı oluşturalım ve this ile değişkenlerimizi seçelim
Class öğrenci{
  String ad;
  String soyad;
  İnt numara ;
  Int not; 
  ogrenci(this.ad,this.soyad,this.numara,this.not);
}
void main() { 
      var ogrenci1 = Ogrenci("Nisa", "Ceylan", 2545, 75); 
   print(ogrenci1.ad); // Nisa 
   print(ogrenci1.soyad); //Ceylan 
   print(ogrenci1.numara) ; //2545 
   prin(ogrenci1.not); // 75 
   var ogrenci2= Ogrenci(ad, soyad, numara, not) 
 }

TÜYO
Gördüğümüz gibi constructor oluşturduğumuz değişkenler sınıftan bir nesne oluşturduğumuzda doldurmamız için beklemektedir.

Kalıtım Nedir :

Kalıtım bildiğimiz anlamıyla genlerimizin zaman içerisinde gelişerek bir sonraki nesle aktarılmasıdır.
 
Dart dilinde kalıtım da buna benzer bir şekilde üst sınıfta (superclass) tanımlanmış değişkenlerin ve/ veya metotların yeniden tamamlanmasına gerek kalmadan bir alt sınıfa (subclass) taşınabilmesidir.

TÜYO
Super class extend anahtar kelimesi kullanılarak subclass’a eklenir
Kalıtım özellileri sayesinde kod tekrarı azaltılır ve daha anlaşılır kod yazmamız kolaylaşır.


Şimdi bir kuş sınıfı örneği ile öğrendiklerimizi pekiştirelim

//Kuş Sınıfı oluşturalım 
 class Kus { 
  void uc() { 
    print("Kuşlar uçabilir"); 
  } 
 }

//Papağan sınıfı oluşturalım ve extend metodu ile kuş sınıfından kalıtalım. 
 //Böylece papağan sınıfı kuş sınıfının özelliklerine erişebilir. 
 import 'package:nesne_tabanli_programlama/Kus.dart'; 
 class Papagan extends Kus { 
   void konus ()  { 
     print("Papağanlar konuşabilir"); 
   } 
 }

import 'package:nesne_tabanli_programlama/papagan.dart'; 
 void main() { 
   Papagan papaganKusu = new Papagan(); 
   papaganKusu.konus(); 
   papaganKusu.uc(); 
 }
 
 Çıktımız ---> Papagan papaganKusu = new Papagan();   papaganKusu.konus();   papaganKusu.uc(); }  
 
 Çıktımız --->  Papağanlar konuşabilir Kuşlar uçabilir

class Hosgeldiniz{  
       void selamla(){  
     print(“Uygulama akademisi Dart derslerine hoşgeldiniz.");  
   }  
 }    
 class selamiAl extends Hosgeldiniz{  
     } 
 void main() {  
   var oku = new SelamiAl();  
   oku.output();  
 }

Overriding :

Daha önceki derslerimizde kalıtım ilişkilerini öğrendik, üst sınıftaki metotları alt sınıflarda kullanabileceğimizi biliyoruz.
 
Bir alt sınıfta üst sınıftaki metotla aynı isimde bir metot oluşturarsak alt sınıftaki metodu üst sınıftaki metodun üstüne yazmış oluruz.
Alt sınıftan bir nesne oluşturup bu yöntem çalıştırılırsa üzerinde yazmış olduğumuz yöntemi çalıştırmış oluruz

TÜYO
Kısaca overriding işlemi üst sınıfın metodlarının alt sınıflarda tekrar tanımlanıp kullanılabilmesidir.


Şimdi bir örnek ile duruma göz atalım
class  UstSinif{  
	 void show(){ 
 	print("Ben en üst sınıfın print metoduyum."); 
    } 
 }

class UstSinif extends AltSinif { 
 	void show(){ 
 	print("Ben alt sınıfın print metoduyum."); 
    } 
 }

void main() { 
 UstSinif durum1= new UstSinif ();  
 AltSinif durum2 = new AltSinif (); 	
 durum1.show();  
 durum2.show();  
 } 
 
Çıktımız---> 
 Ben en üst sınıfın print metoduyum. 
 Ben alt sınıfın print metoduyum.
''';