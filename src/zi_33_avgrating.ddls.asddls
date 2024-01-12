@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Average Rating'
define view entity ZI_33_AVGRating
  as select from zabap_rating_a
{
  movie_uuid                       as MovieUUID,

  avg(rating as abap.dec( 16, 2 )) as AVGRating

}
group by
  movie_uuid
