@EndUserText.label: 'Ratings'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_33_Rating
  as projection on ZR_33_Rating
{
  key    RatingUuid,
         MovieUuid,
         UserName,
         Rating,
         RatingDate,
         Runtime,
         Genre,
        


         /* Associations */
         _Movie : redirected to parent ZC_33_Movie
}
