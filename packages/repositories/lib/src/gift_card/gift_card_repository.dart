import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class GiftCardRepository {
  final GiftCardService _giftCardService;

  GiftCardRepository(this._giftCardService);

  Future<GiftCardDataModel> pushOpenGiftcard({
    String? messageId,
  }) async {
    final result = await _giftCardService.pushOpenGiftcard(
          messageId: messageId,
        ) ??
        GiftCardResponse();
    return result.toOpenGiftcard();
  }
}

extension on GiftCardResponse {
  GiftCardDataModel toOpenGiftcard() {
    return GiftCardDataModel(
      r: r ?? '',
      errorMessage: errorMessage ?? '',
    );
  }
}
