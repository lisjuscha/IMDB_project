@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movie'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define root view entity ZR_33_Movie
  as select from zabap_movie_a
{
  key movie_uuid      as MovieUUID,
      title           as Title,
      genre           as Genre,
      publishing_year as PublishingYear,
      runtime_in_min  as RuntimeInMin,
      image_url       as ImageURL,
      created_at      as CreatedAt,
      created_by      as CreatedBy,
      last_changed_at as LastChangedAt,
      last_changed_by as LastChangedBy
}
