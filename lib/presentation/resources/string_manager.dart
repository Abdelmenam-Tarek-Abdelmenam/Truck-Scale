class StringManger {
  static late int _theme;

  static set setLanguage(int themeIndex) {
    _theme = themeIndex;
  }

  static const empty = "";

  // application info
  static String get appName => ["Truck Scale", "ميزان بسكول"][_theme];
  static String get about => ["About App", "عن التطبيق"][_theme];
  static String get version => ["Version 1.0.0", "الإصدار 1.0.0"][_theme];
  static String get poweredBy => ["Powered By", "محول بواسطة"][_theme];
  static String get copyRights => [
        "copyright © 2022 all rights reserved",
        "حقوق النشر © 2022 جميع الحقوق محفوظة"
      ][_theme];
  static String get description => [
        "Software to manage your weight bridge in smart and easy  way.",
        "برنامج للتحكم في نظام ميزان البسكول الخاص بك."
      ][_theme];

  // drawer
  static String get home => ["Home", "الرئيسية"][_theme];
  static String get records => ["Records", "السجلات"][_theme];
  static String get vehicle => ["Trucks", "المركبة"][_theme];
  static String get materials => ["Materials", "المواد"][_theme];
  static String get clients => ["Clients", "العملاء"][_theme];
  static String get reports => ["Reports", "التقارير"][_theme];
  static String get settings => ["Settings", "الإعدادات"][_theme];

  // setting
  static String get dataBaseSector =>
      ["DataBase sector", "قطاع قاعدة البيانات"][_theme];
  static String get importDatabase => [
        "Import database | Create Backup",
        "استيراد قاعدة البيانات | إنشاء نسخة احتياطية"
      ][_theme];
  static String get exportDatabase => [
        "Export database | Get from Backup",
        "تصدير قاعدة البيانات | تحميل نسخة احتياطية"
      ][_theme];
  static String get clearDatabase => [
        "Clear database     | Delete all data",
        "مسح قاعدة البيانات | حذف كل البيانات"
      ][_theme];
  static String get unitsSector => ["Units sector", "قطاع الوحدات"][_theme];
  static String get weight => ["Weight", "الوزن"][_theme];
  static String get weightUnit => ["Weight unit", "وحدة الوزن"][_theme];
  static String get money => ["Money", "المال"][_theme];
  static String get moneyUnit => ["Money unit", "وحدة المال"][_theme];
  static String get informationSector =>
      ["Information sector", "قطاع المعلومات"][_theme];
  static String get name => ["Name", "الاسم"][_theme];
  static String get scaleName => ["Scale name", "اسم الميزان"][_theme];
  static String get phone => ["Phone", "الهاتف"][_theme];
  static String get scalePhone =>
      ["Scale Place Phone", "هاتف مكان الميزان"][_theme];
  static String get address => ["Address", "العنوان"][_theme];
  static String get scaleAddress =>
      ["Scale Address", "عنوان مكان الميزان"][_theme];
  static String get styleSector => ["Style sector", "قطاع الأسلوب"][_theme];
  static String get language => ["Language", "اللغة"][_theme];
  static String get en => ["English", "الإنجليزية"][_theme];
  static String get ar => ["Arabic", "العربية"][_theme];
  static String get system => ["System", "النظام"][_theme];
  static String get theme => ["Theme", "الأسلوب"][_theme];
  static String get light => ["Light", "الفاتح"][_theme];
  static String get dark => ["Dark", "الداكن"][_theme];

  // records
  static String get view => ["View", "عرض"][_theme];
  static String get delete => ["Delete", "حذف"][_theme];
  static String get type => ["Weight Type", "نوع الوزن"][_theme];
  static String get noRecords => ["No Records", "لا توجد سجلات"][_theme];

  // vehicle
  static String get noVehicle => ["No Trucks", "لا توجد مركبات"][_theme];
  static String get truckModel => ["Truck Model", "نوع المركبة"][_theme];

  // materials
  static String get noMaterial => ["No Material", "لا توجد مواد"][_theme];
  // clients
  static String get noClients => ["No Client", "لا توجد عملاء"][_theme];
  // home
  static String get truck => ["Truck", "المركبة"][_theme];
  static String get plateNumber => ["Plate Number", "رقم اللوحة"][_theme];
  static String get material => ["Material", "المادة"][_theme];
  static String get materialName =>
      ["Material name or code", "اسم المادة أو الكود"][_theme];
  static String get totalPrice =>
      ["Total Material Price", "إجمالي سعر المادة"][_theme];
  static String get materialPrice => ["Material price", "سعر المادة"][_theme];
  static String get prevTicket =>
      ["Previous Ticket Number", "رقم التذكرة السابقة"][_theme];
  static String get ticketNumber => ["Ticket Number", "رقم التذكرة"][_theme];
  static String get truckWeightOnly =>
      ["Truck Weight Only", "وزن المركبة فقط"][_theme];
  static String get truckWeight => ["Truck Weight", "وزن المركبة"][_theme];
  static String get materialWeight =>
      ["Material  weight", "وزن المادة"][_theme];
  static String get driverInformation =>
      ["Driver Information", "معلومات السائق"][_theme];
  static String get clientInformation =>
      ["Client Information", "معلومات العميل"][_theme];
  static String get notes => ["Notes", "ملاحظات"][_theme];
  static String get print => ["Print", "طباعة"][_theme];
  static String get edit => ["Edit", "تعديل"][_theme];
  static String get save => ["Save", "حفظ"][_theme];
  static String get add => ["Add new", "إضافة"][_theme];
  static String get date => ["Date", "التاريخ"][_theme];
  static String get search => ["Search For", "بحث عن"][_theme];

  // reports
  static String get graph1 =>
      ["Number Of weights ber day", "عدد الوزنات باليوم"][_theme];
  static String get graph2 =>
      ["Amount of weights ber day", "كميه الوزنات باليوم"][_theme];
  static String get printsSector => ["Print Reports", "طباعة التقارير"][_theme];
  static String get allRecords => ["ALL Records", "كل السجلات"][_theme];
  static String get allVehicles => ["ALL Trucks", "كل المركبات"][_theme];
  static String get allMaterials => ["ALL Materials", "كل المواد"][_theme];
  static String get allClients => ["ALL Clients", "كل العملاء"][_theme];
  static String get filterRecords =>
      ["Filter Records", "تصفية السجلات"][_theme];
  static String get filterVehicles =>
      ["Filter Trucks", "تصفية المركبات"][_theme];
  static String get filterMaterials =>
      ["Filter Materials", "تصفية المواد"][_theme];
  static String get filterClients =>
      ["Filter Clients", "تصفية العملاء"][_theme];
  static String get highRecords =>
      ["High Weight Records", "سجلات الوزن الزائد"][_theme];
  static String get lowRecords =>
      ["Low Weight Records", "سجلات الوزن المنخفض"][_theme];
  static String get highMaterials =>
      ["Highest Material", "المادة الزائدة"][_theme];
  static String get lowMaterial =>
      ["Lowest Material", "المادة المنخفضة"][_theme];
  static String get highVehicles =>
      ["Highest Trucks", "المركبات الزائدة"][_theme];
  static String get lowVehicles =>
      ["Lowest Trucks", "المركبات المنخفضة"][_theme];
  static String get highClients =>
      ["Highest Clients", "العملاء الزائدين"][_theme];
  static String get lowClients =>
      ["Lowest Clients", "العملاء المنخفضين"][_theme];
}
