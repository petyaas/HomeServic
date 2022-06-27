import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import '../../services/settings_service.dart';

class AddressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Row(
        children: [
          Icon(Icons.place_outlined),
          SizedBox(width: 10),
          Expanded(
            child: Obx(() {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SETTINGS_ADDRESSES);
                },
                child: Text(Get.find<SettingsService>().address.value?.address ?? "Loading...".tr, style: Get.textTheme.bodyText1),
              );
            }),
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.gps_fixed),
            onPressed: () async {
              Get.toNamed(Routes.SETTINGS_ADDRESS_PICKER);
            },
          )
        ],
      ),
    );
  }
}
