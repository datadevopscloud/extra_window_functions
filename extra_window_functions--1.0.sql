-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION absinthe" to load this file. \quit

/* LAG */

CREATE OR REPLACE FUNCTION public.lag_ignore_nulls(anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_lag_ignore_nulls$function$;

CREATE OR REPLACE FUNCTION public.lag_ignore_nulls(anyelement, integer)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_lag_ignore_nulls_with_offset$function$;

CREATE OR REPLACE FUNCTION public.lag_ignore_nulls(anyelement, integer, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_lag_ignore_nulls_with_offset_with_default$function$;

/* LEAD */

CREATE OR REPLACE FUNCTION public.lead_ignore_nulls(anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_lead_ignore_nulls$function$;

CREATE OR REPLACE FUNCTION public.lead_ignore_nulls(anyelement, integer)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_lead_ignore_nulls_with_offset$function$;

CREATE OR REPLACE FUNCTION public.lead_ignore_nulls(anyelement, integer, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_lead_ignore_nulls_with_offset_with_default$function$;

/* FIRST_VALUE */

CREATE OR REPLACE FUNCTION public.first_value_ignore_nulls(anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_first_value_ignore_nulls$function$;

CREATE OR REPLACE FUNCTION public.first_value_ignore_nulls(anyelement, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_first_value_ignore_nulls_with_default$function$;

/* LAST_VALUE */

CREATE OR REPLACE FUNCTION public.last_value_ignore_nulls(anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_last_value_ignore_nulls$function$;

CREATE OR REPLACE FUNCTION public.last_value_ignore_nulls(anyelement, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_last_value_ignore_nulls_with_default$function$;

/* NTH_VALUE */

CREATE OR REPLACE FUNCTION public.nth_value(anyelement, integer, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_nth_value_with_default$function$;

CREATE OR REPLACE FUNCTION public.nth_value_from_last(anyelement, integer)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_nth_value_from_last$function$;

CREATE OR REPLACE FUNCTION public.nth_value_from_last_ignore_nulls(anyelement, integer)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_nth_value_from_last_ignore_nulls$function$;

CREATE OR REPLACE FUNCTION public.nth_value_from_last_ignore_nulls(anyelement, integer, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_nth_value_from_last_ignore_nulls_with_default$function$;

CREATE OR REPLACE FUNCTION public.nth_value_from_last(anyelement, integer, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_nth_value_from_last_with_default$function$;

CREATE OR REPLACE FUNCTION public.nth_value_ignore_nulls(anyelement, integer)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_nth_value_ignore_nulls$function$;

CREATE OR REPLACE FUNCTION public.nth_value_ignore_nulls(anyelement, integer, anyelement)
 RETURNS anyelement
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_nth_value_ignore_nulls_with_default$function$;

/* FLIP_FLOP */

CREATE OR REPLACE FUNCTION public.flip_flop(boolean)
 RETURNS boolean
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_flip_flop_1$function$;

CREATE OR REPLACE FUNCTION public.flip_flop(boolean, boolean)
 RETURNS boolean
 LANGUAGE c
 WINDOW IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$window_flip_flop_2$function$;
