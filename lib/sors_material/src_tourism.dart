
import 'package:google_maps_flutter/google_maps_flutter.dart';
class SRCM {


  static List<String> images = [
       'assets/tour_image/1.png',
       'assets/tour_image/2.jpeg',
       'assets/tour_image/3.jpeg',
       'assets/tour_image/4.jpeg',
       'assets/tour_image/5.jpeg',
       'assets/tour_image/6.jpeg',
     ];
  static int? indexU ;

  static List<String> shortDes = [
    'المسجد الأكبر والأقدم في قطاع غزة',
    'النموذج الوحيد للقصور في غزة',
    'تحفة أوربية في غزة',
    'اقدم اسواق الذهب واثمنها',
    'أول مركز ثقافي يُبنى في فلسطين',
    'هي ثالت أقدم الكنائ س بالعالم في غزة'
  ];
 static List<String> name = [
    'المسجد العمري',
    'قصر الباشا',
    'مقبرة الإنجليز',
    'سوق الذهب',
    'مركز رشاد الشوا التقافي',
    'كنيسة الروم الأرثودكس'
  ];

 static List<String> allData = [
   '''
   يقع المسجد العمري أو "الجامع الكبير" في وسط المدينة القديمة في محافظة الظاهريّة في مدينة غزة. وهو واحد من أكبر المساجد، وتبلغ
مساحته أربعة آلاف ومئة متر، ويُعد أحد المساجد الأثريّة الأكثر أهميّة في غزة. يحمل المسجد الآن اسم الخليفة عمر بن الخطاب،
والمعروف باسم محرّر فلسطين،
إلا أن الموقع شهد الكثير من حوّلات
الت إذ وجد المبني الأصلي قبل ثلاثة آلاف عام مضت أي في الوقت الذي
كان فيه انسك غزة يعبدون الأصنام 
   ''',
   '''
   يقع قصر الباشا، والذي يعتبر قلعة ،
قديمة في شارع الوحدة في مدينة غزة، ولا يُعرف متى تم بناء قصر الباشا
لأوّل مرّة، ولكن طريقة تصميم المدخل بالإضافة إلى البناء الداخلي تشيران إلى أنه تم تشييد القصر خلال فترة
الحكم المملوكي. وتنصّ إحدى الأساطير المحليّة على
ّ
أن السّلطان المملوكي بيبرس قام ببناء القصر في القرن الثالث
عشر ميلادي لإمرأة التقاها في غزة ووقع في حبّها وتزوّجها. ويوجد على جانبي القلعة بناء أكثر
حداثة يعود إلى
القرن السّابع عشر ميلادي عندما سكن الحاكم )الباشا( العثماني غزة الشيخ رضوان هناك. ومن هنا جاءت
تسمية القلعة باسم قصر الباشا، أو كما عرفُت
 أي ضا باسم قصر الرّضوان. كما ويشار إلى القصر أحيانا باسم
قلعة نابليون  لأن يعتقد بأن نابليون قض ى بضع 
ليا ل في المكان قبل القيام بغاراته العسكريّة ضد يافا وعكا .
   ''',
   '''
     تقع هذه المقبرة في حيّ التفاحّ  في مدينة غزّة، وغال با ما يُشار
      إليها باسم مقبرة الحرب البريطانيّةتحتوي المقبرة على قبور للجنود
       الإنجلي ز ذين السقطوا خلال الحربين العالميتين. تحتوي المقبرة
على قبور ما لا يقلّ عن ثلاثة آلاف ومئتين وسبعة عشر شخصا سقطوا خلال الحرب 
العالميةالأولى، منهم سبعمئة وواحد وثمانون مجهولو الهويّة. 
ويبلغ عدد قبور الجنود الذين سقطوا في الحرب العالمية
 الثانية مئتي وعشرة مقاير. وهناك أيضا ثلاثون شخصا 
 دفنوا بعد الحرب ومئتان وأربعة وثلاثون قبرا لجنود سقطوا
  في الحرب من جنسيّات أخرى .
   ''',
   '''
ّتبق مما كان يوما ما اسوق كبيراى
ّمغط ومملوءا بتجار متخصّصين في مختلف المجالات. دِّيّ
ش السّوق بالأصل عام ألف وأربعمئة ّوستة وسبعين، أي نهاية فترة الحكم
المملوكي على يديخّ الشمس الدّين الحمصي. دُمّر جزء كبير من السّوق جرّاء القصف
البريطاني خلال الحرب العالميّة الأولى
ّإلاّأن سوق هبّالذ لازال موجودا حيث تجد المتاجرالصّغيرة 
على جانبي ارعّالش وهو ىّمغط بسقف مقبُب .
   ''',
   '''
   يقع في شارع عمر المختار، الرمال، غزة ،مركز رشاد الشوا الثقافي هو مركز ثقافي تم إنشاؤه عام
1985 ، وأكتمل عام 1988 في حي الرما ل بمدينة غزة، دول ة فلسطين. يُعد أو ل مرك ز ثقافي يُبنى
في فلسطين، حيث هدف إنشاؤه محاولة إنهاء العزلة الثقافية والحضارية الت ي عانى منها
الفلسطينيون جراء الاحتلا ل الاسرائيلي الذي يمحو هويته الحضاري ة والثقافية
   ''',
   '''
   تقع ب 12 م، تمتاز هذه الكنيسة بالجدران ال لدعم الجدران باإلضاف ة إىل األكتاف
الحجرية، ولقد جددتي ضخمة المدعمة بأعمدة رخامية وجرانيتية ثبتت بوضع أفق
الكنيسة سن ة 1856 سنة رشقية منها يوجد قرب القديس برف بيوس الذي توف الزاوية
الشمالية ال ي وف 420 م
   ''',


 ];

 static List<LatLng> latlng = [
     LatLng(31.5042881793896, 34.46428905826307),
     LatLng(31.50548280534199,34.46588064829529),
     LatLng(31.512251720408887, 34.48202099079834),
     LatLng(31.503648326330353, 34.46401637262038),
     LatLng(31.52141585439749, 34.44250723446138),
     LatLng(15.60720948410676, 32.536968689496675),
 ];


 static List<Marker> getLatLng() {

 List<Marker> myMarker= [] ;

   for(int i= 0;i <latlng.length-1;i++){
     myMarker.add( Marker(
          markerId: MarkerId('${name[i]}'),
          position: latlng[i],
          infoWindow: InfoWindow( title: "${name[i]}",
          snippet: "${shortDes[i]}",)  ,
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueRed )

                )
          );

  }

 return myMarker;
 }


}