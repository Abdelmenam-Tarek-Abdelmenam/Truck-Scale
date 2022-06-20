class StringManger {
  static late int langIndex;

  static set setLanguage(int themeIndex) {
    langIndex = themeIndex;
  }

  static const empty = "";

  // application info
  static String get appName => ["Truck Scale", "ميزان بسكول"][langIndex];
  static String get about => ["About App", "عن التطبيق"][langIndex];
  static String get version => ["Version 1.0.0", "الإصدار 1.0.0"][langIndex];
  static String get poweredBy => ["Powered By", "محول بواسطة"][langIndex];
  static String get copyRights => [
        "copyright © 2022 all rights reserved",
        "حقوق النشر © 2022 جميع الحقوق محفوظة"
      ][langIndex];
  static String get description => [
        "Software to manage your weight bridge in smart and easy  way.",
        "برنامج للتحكم في نظام ميزان البسكول الخاص بك."
      ][langIndex];

  // drawer
  static String get home => ["Home", "الرئيسية"][langIndex];
  static String get records => ["Records", "السجلات"][langIndex];
  static String get vehicle => ["Trucks", "المركبة"][langIndex];
  static String get materials => ["Materials", "المواد"][langIndex];
  static String get clients => ["Clients", "العملاء"][langIndex];
  static String get reports => ["Reports", "التقارير"][langIndex];
  static String get settings => ["Settings", "الإعدادات"][langIndex];

  // setting
  static String get dataBaseSector =>
      ["DataBase sector", "قطاع قاعدة البيانات"][langIndex];
  static String get importDatabase => [
        "Import database | Create Backup",
        "استيراد قاعدة البيانات | إنشاء نسخة احتياطية"
      ][langIndex];
  static String get exportDatabase => [
        "Export database | Get from Backup",
        "تصدير قاعدة البيانات | تحميل نسخة احتياطية"
      ][langIndex];
  static String get clearDatabase => [
        "Clear database     | Delete all data",
        "مسح قاعدة البيانات | حذف كل البيانات"
      ][langIndex];
  static String get unitsSector => ["Units sector", "قطاع الوحدات"][langIndex];
  static String get weight => ["Weight", "الوزن"][langIndex];
  static String get weightUnit => ["Weight unit", "وحدة الوزن"][langIndex];
  static String get money => ["Money", "المال"][langIndex];
  static String get moneyUnit => ["Money unit", "وحدة المال"][langIndex];
  static String get informationSector =>
      ["Information sector", "قطاع المعلومات"][langIndex];
  static String get name => ["Name", "الاسم"][langIndex];
  static String get scaleName => ["Scale name", "اسم الميزان"][langIndex];
  static String get phone => ["Phone", "الهاتف"][langIndex];
  static String get scalePhone =>
      ["Scale Place Phone", "هاتف مكان الميزان"][langIndex];
  static String get address => ["Address", "العنوان"][langIndex];
  static String get scaleAddress =>
      ["Scale Address", "عنوان مكان الميزان"][langIndex];
  static String get styleSector => ["Style sector", "قطاع الأسلوب"][langIndex];
  static String get language => ["Language", "اللغة"][langIndex];
  static String get en => ["English", "الإنجليزية"][langIndex];
  static String get ar => ["Arabic", "العربية"][langIndex];
  static String get system => ["System", "النظام"][langIndex];
  static String get theme => ["Theme", "الأسلوب"][langIndex];
  static String get light => ["Light", "الفاتح"][langIndex];
  static String get dark => ["Dark", "الداكن"][langIndex];

  // records
  static String get view => ["View", "عرض"][langIndex];
  static String get delete => ["Delete", "حذف"][langIndex];
  static String get type => ["Weight Type", "نوع الوزن"][langIndex];
  static String get noRecords => ["No Records", "لا توجد سجلات"][langIndex];

  // vehicle
  static String get noVehicle => ["No Trucks", "لا توجد مركبات"][langIndex];
  static String get truckModel => ["Truck Model", "نوع المركبة"][langIndex];

  // materials
  static String get noMaterial => ["No Material", "لا توجد مواد"][langIndex];
  // clients
  static String get noClients => ["No Client", "لا توجد عملاء"][langIndex];
  // home
  static String get truck => ["Truck", "المركبة"][langIndex];
  static String get plateNumber => ["Plate Number", "رقم اللوحة"][langIndex];
  static String get material => ["Material", "المادة"][langIndex];
  static String get materialName =>
      ["Material name or code", "اسم المادة أو الكود"][langIndex];
  static String get totalPrice =>
      ["Total Material Price", "إجمالي سعر المادة"][langIndex];
  static String get materialPrice =>
      ["Material price", "سعر المادة"][langIndex];
  static String get prevTicket =>
      ["Previous Ticket Number", "رقم التذكرة السابقة"][langIndex];
  static String get ticketNumber => ["Ticket Number", "رقم التذكرة"][langIndex];
  static String get truckWeightOnly =>
      ["Truck Weight Only", "وزن المركبة فقط"][langIndex];
  static String get truckWeight => ["Truck Weight", "وزن المركبة"][langIndex];
  static String get materialWeight =>
      ["Material  weight", "وزن المادة"][langIndex];
  static String get driverInformation =>
      ["Driver Information", "معلومات السائق"][langIndex];
  static String get clientInformation =>
      ["Client Information", "معلومات العميل"][langIndex];
  static String get notes => ["Notes", "ملاحظات"][langIndex];
  static String get print => ["Print", "طباعة"][langIndex];
  static String get edit => ["Edit", "تعديل"][langIndex];
  static String get save => ["Save", "حفظ"][langIndex];
  static String get add => ["Add new", "إضافة"][langIndex];
  static String get date => ["Date", "التاريخ"][langIndex];
  static String get search => ["Search For", "بحث عن"][langIndex];

  // reports
  static String get graph1 =>
      ["Number Of weights ber day", "عدد الوزنات باليوم"][langIndex];
  static String get graph2 =>
      ["Amount of weights ber day", "كميه الوزنات باليوم"][langIndex];
  static String get printsSector =>
      ["Print Reports", "طباعة التقارير"][langIndex];
  static String get allRecords => ["ALL Records", "كل السجلات"][langIndex];
  static String get allVehicles => ["ALL Trucks", "كل المركبات"][langIndex];
  static String get allMaterials => ["ALL Materials", "كل المواد"][langIndex];
  static String get allClients => ["ALL Clients", "كل العملاء"][langIndex];
  static String get filterRecords =>
      ["Filter Records", "تصفية السجلات"][langIndex];
  static String get filterVehicles =>
      ["Filter Trucks", "تصفية المركبات"][langIndex];
  static String get filterMaterials =>
      ["Filter Materials", "تصفية المواد"][langIndex];
  static String get filterClients =>
      ["Filter Clients", "تصفية العملاء"][langIndex];
  static String get highRecords =>
      ["High Weight Records", "سجلات الوزن الزائد"][langIndex];
  static String get lowRecords =>
      ["Low Weight Records", "سجلات الوزن المنخفض"][langIndex];
  static String get highMaterials =>
      ["Highest Material", "المادة الزائدة"][langIndex];
  static String get lowMaterial =>
      ["Lowest Material", "المادة المنخفضة"][langIndex];
  static String get highVehicles =>
      ["Highest Trucks", "المركبات الزائدة"][langIndex];
  static String get lowVehicles =>
      ["Lowest Trucks", "المركبات المنخفضة"][langIndex];
  static String get highClients =>
      ["Highest Clients", "العملاء الزائدين"][langIndex];
  static String get lowClients =>
      ["Lowest Clients", "العملاء المنخفضين"][langIndex];
}
