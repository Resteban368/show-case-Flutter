class ListData {
  final String name;
  final String time;
  final String description;

  ListData({
    required this.name,
    required this.time,
    required this.description,
  });
}

List<ListData> listData = [
  ListData(name: 'Alice', time: '03:22pm', description: 'Flutter Developer'),
  ListData(name: 'Bob', time: '11:12am', description: 'UI Designer'),
  ListData(name: 'Charles', time: '07:10pm', description: 'React Developer'),
  ListData(name: 'Danny', time: '02:01pm', description: 'Node JS Developer'),
  ListData(name: 'Elisa', time: '08:40am', description: 'Dart Developer'),
  ListData(name: 'Frankline', time: '02:52pm', description: 'Designer'),
  ListData(name: 'George', time: '06:07pm', description: 'Swift Developer'),
  ListData(name: 'Harry', time: '12:11pm', description: 'Java Developer'),
  ListData(name: 'Irish', time: '01:12pm', description: 'Android Developer'),
  ListData(name: 'Jack', time: '04:30pm', description: 'Flutter Developer'),
];
