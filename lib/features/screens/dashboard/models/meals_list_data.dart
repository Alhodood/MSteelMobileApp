class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/icons/settings.png',
      titleTxt: 'Machine Status',
      kacl: 0,
      meals: <String>['Active:', '3 Units', 'Under Maintenance: 1'],
      startColor: '#4CAF50',
      endColor: '#81C784',
    ),
    MealsListData(
      imagePath: 'assets/icons/checklist.png',
      titleTxt: 'Work Orders',
      kacl: 0,
      meals: <String>['Pending: 5', 'Completed: 12'],
      startColor: '#2196F3',
      endColor: '#64B5F6',
    ),
    MealsListData(
      imagePath: 'assets/icons/maintenance.png',
      titleTxt: 'Spare Parts',
      kacl: 0,
      meals: <String>['Low Stock: 4', 'Critical: 1'],
      startColor: '#FF9800',
      endColor: '#FFB74D',
    ),
    MealsListData(
      imagePath: 'assets/icons/inventory.png',
      titleTxt: 'Energy Usage',
      kacl: 0,
      meals: <String>['Today:', '172 kWh'],
      startColor: '#9C27B0',
      endColor: '#BA68C8',
    ),
  ];
}
