import 'package:get/get.dart';

import '../services/http_services.dart';

class productcontrol extends GetxController
{

  //obs change monitor aakunne sanam

  var isLoading = true.obs;

  var productlist = [].obs;

  @override
  void onInit()
  {
    fetchproduct();
    super.onInit();
  }

  void fetchproduct() async
  {
   try{
     var products = await HttpServices.fetchdataProduct();
     if(products != null)
       {
         productlist.value = products;
       }
   }
   finally
       {
         isLoading(false);
       }
  }

}