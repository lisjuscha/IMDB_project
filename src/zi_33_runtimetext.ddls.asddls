@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Runtime'

define view entity ZI_33_RuntimeText
  as select from zabap_movie_a
{
  key movie_uuid               as MovieUUID,

      case when runtime_in_min > 150 then 'Überlänge'
      when runtime_in_min < 30 then 'Kurzfilm'
      else 'Standardlänge' end as RuntimeText
}
