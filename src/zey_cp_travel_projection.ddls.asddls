@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection layer for Travel'        // Processor Projection
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZEY_CP_TRAVEL_PROJECTION
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
          CreatedBy,
          CreatedAt,
          LastChangedBy,
          LastChangedAt,
          AgencyName,
          CustomerName,
          StatusText,
          Criticality,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_EY_CP_VE_CALC'
          @EndUserText.label: 'CO2 Tax'
          virtual CO2Tax         : abap.int4,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_EY_CP_VE_CALC'
          @EndUserText.label: 'Week Day'
          virtual dayOfTheFlight : abap.char( 9 ),
          /* Associations */
          _Agency,
          _Booking : redirected to composition child ZEY_CP_BOOKING_PROJECTION,
          _Currency,
          _Customer,
          _OverallStatus
} 
