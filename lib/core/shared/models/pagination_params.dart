import 'package:equatable/equatable.dart';

class PaginationParams extends Equatable {
  final int pageNumber;
  final int pageSize;

  const PaginationParams({
    required this.pageNumber,
    required this.pageSize,
  });

  factory PaginationParams.fromJson(Map<String, dynamic> json) {
    return PaginationParams(
      pageNumber: json['pageNo'],
      pageSize: json['rowCount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {"pageNo": pageNumber, "rowCount": pageSize};
  }

  @override
  List<Object> get props => [pageNumber, pageSize];
}
