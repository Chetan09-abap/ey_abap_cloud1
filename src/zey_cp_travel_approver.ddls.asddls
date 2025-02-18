@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection layer for Travel'        // Processor Projection
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZEY_CP_TRAVEL_APPROVER
  as projection on ZEY_CP_TRAVEL
{
  key     TravelId,
          AgencyId,
          CustomerId,
          BeginDate,
          EndDate,
          BookingFee,
          TotalPrice,
          CurrencyCode,
          Description,
          OverallStatus,
          AgencyName,
          CustomerName,
          StatusText,
          Criticality,
          /* Associations */
          _Agency,
          _Booking : redirected to composition child ZEY_CP_BOOKING_APPROVER,
          _Currency,
          _Customer,
          _OverallStatus
} 
