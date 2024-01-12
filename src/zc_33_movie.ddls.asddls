@EndUserText.label: 'Movie'
@AccessControl.authorizationCheck: #NOT_REQUIRED
//@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_33_Movie
  as projection on ZR_33_Movie
{
  key MovieUUID,
      @Search.fuzzinessThreshold: 0.7
      Title,
      Genre,
      PublishingYear,
      RuntimeInMin,
      ImageURL,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy,
      AVGRating,
      AVGRatingCriticality,

      _Ratings : redirected to composition child ZC_33_Rating
}
