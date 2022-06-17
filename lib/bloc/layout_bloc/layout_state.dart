part of 'layout_bloc.dart';

enum ActiveLayout {
  home,
  records,
  vehicles,
  materials,
  clients,
  reports,
  settings
}

extension LayoutWidget on ActiveLayout {
  Widget get getWidget {
    switch (this) {
      case ActiveLayout.home:
        return const HomeView();
      case ActiveLayout.records:
        return RecordsView();
      case ActiveLayout.vehicles:
        return const VehiclesView();
      case ActiveLayout.materials:
        return const MaterialsView();
      case ActiveLayout.clients:
        return const ClientsView();
      case ActiveLayout.reports:
        return const ReportView();
      case ActiveLayout.settings:
        return const SettingsView();
    }
  }

  String get getString {
    switch (this) {
      case ActiveLayout.home:
        return StringManger.home;
      case ActiveLayout.records:
        return StringManger.records;
      case ActiveLayout.vehicles:
        return StringManger.vehicle;
      case ActiveLayout.materials:
        return StringManger.materials;
      case ActiveLayout.clients:
        return StringManger.clients;
      case ActiveLayout.reports:
        return StringManger.reports;
      case ActiveLayout.settings:
        return StringManger.settings;
    }
  }

  IconData get getIcon {
    switch (this) {
      case ActiveLayout.home:
        return Icons.home;
      case ActiveLayout.records:
        return Icons.assignment;
      case ActiveLayout.vehicles:
        return Icons.directions_car;
      case ActiveLayout.materials:
        return Icons.dashboard_outlined;
      case ActiveLayout.clients:
        return Icons.person;
      case ActiveLayout.reports:
        return Icons.assessment;
      case ActiveLayout.settings:
        return Icons.settings;
    }
  }
}
