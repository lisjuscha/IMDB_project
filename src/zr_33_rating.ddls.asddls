@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ratings'

define view entity ZR_33_Rating
  as select from zabap_rating_a
  association        to parent ZR_33_Movie as _Movie       on $projection.MovieUuid = _Movie.MovieUUID

  association [1..1] to ZI_33_GenreText    as _GenreText   on $projection.MovieUuid = _GenreText.MovieUUID
  association [1..1] to ZI_33_RuntimeText  as _RuntimeText on $projection.MovieUuid = _RuntimeText.MovieUUID

{

  key      rating_uuid              as RatingUuid,
           movie_uuid               as MovieUuid,
           user_name                as UserName,
           rating                   as Rating,
           rating_date              as RatingDate,

           _Movie,
           _GenreText.Genre         as Genre,
           _RuntimeText.RuntimeText as Runtime

}
