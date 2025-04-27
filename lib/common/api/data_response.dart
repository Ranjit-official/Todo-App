class DataResponse<Type> {
  final String? message;
  final bool status;
  final Type? data;

  DataResponse({required this.message, required this.status, this.data});

  factory DataResponse.error(String message){
    return DataResponse(message: message, status: false);
  }
  factory DataResponse.success(Type data){
    return DataResponse(data: data, status: true,message: "");
  }

}