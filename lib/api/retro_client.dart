import 'package:dio/dio.dart' hide Headers;
import 'package:karna/api/base_api.dart';
import 'package:karna/models/create_user_response.dart';
import 'package:karna/models/get_user_response.dart';
import 'package:karna/models/single_user_result.dart';
import 'package:retrofit/retrofit.dart';

part 'retro_client.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET(ApiBase.getuser)
  Future<GetUserResponse> getuser(
    @Path('c_number') int number,
  );

  @POST(ApiBase.createuser)
  Future<CreateUserResponse> createuser(@Body() Map<String, dynamic> body);

  @POST(ApiBase.insertresult)
  Future<CreateUserResponse> insertuserresult(
      @Body() Map<String, dynamic> body);

  @GET(ApiBase.getsingleuserresult)
  Future<SingleUserTestResult> getsingleuserresult(
    @Path('c_number') String number,
    @Path('c_name') String name,
  );
}
