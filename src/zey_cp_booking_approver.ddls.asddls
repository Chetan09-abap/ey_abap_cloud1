@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection layer for Booking'      // Processor Projection
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_CP_BOOKING_APPROVER as projection on ZEY_CP_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _BookingStatus,
    _BookingSupplement: redirected to composition child ZEY_CP_BOOKSUPPL_APPROVER,
    _Carrier,
    _Connection,
    _Customer,
    _Travel: redirected to parent ZEY_CP_TRAVEL_APPROVER
    
}
