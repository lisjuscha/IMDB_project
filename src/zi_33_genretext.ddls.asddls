@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Genre'

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity ZI_33_GenreText
  as select from zabap_movie_a

{
  movie_uuid as MovieUUID,
  genre      as Genre
}
