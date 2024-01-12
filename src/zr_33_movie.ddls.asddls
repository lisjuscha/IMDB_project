@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movie'
define root view entity ZR_33_Movie
  as select from zabap_movie_a
  composition [0..*] of ZR_33_Rating    as _Ratings
  association [1..1] to ZI_33_AVGRating as _AVGRating on $projection.MovieUUID = _AVGRating.MovieUUID
{
  key movie_uuid           as MovieUUID,
      title                as Title,
      genre                as Genre,
      publishing_year      as PublishingYear,
      runtime_in_min       as RuntimeInMin,
      image_url            as ImageURL,
      created_at           as CreatedAt,
      created_by           as CreatedBy,
      last_changed_at      as LastChangedAt,
      last_changed_by      as LastChangedBy,

      _Ratings,
      _AVGRating.AVGRating as AVGRating,

      case when _AVGRating.AVGRating >= 6.7 then 3
      when _AVGRating.AVGRating >= 3.4 then 2
      when _AVGRating.AVGRating >= 0 then 1
      else 0
      end                  as AVGRatingCriticality

}
