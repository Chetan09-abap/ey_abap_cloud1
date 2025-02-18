@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection layer for Booking Supplement'   // Processor Projection
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_CP_BOOKSUPPL_APPROVER as projection on ZEY_CP_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
     _Booking: redirected to parent ZEY_CP_BOOKING_APPROVER,
   _Product,
   _SupplementText,
   _Travel: redirected to ZEY_CP_TRAVEL_APPROVER
}
