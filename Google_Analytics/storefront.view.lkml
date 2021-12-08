include: "/Google_Analytics/*.lkml"
view: storefront {
# extends: [traffic_source_config]
extension: required


dimension: storefront {
  type: string
  sql:
 CASE
        --======================================--
        --=================EPP==================--
        --======================================--
        WHEN
        (
            ${hits.page_path} LIKE '%/network%'
            OR ${hits.page_path} LIKE '%/retailer%'
            OR ${hits.page_path} LIKE '%/partner%'
            OR ${hits.page_path} LIKE '%/royal%'
            OR ${hits.page_path} LIKE '%/exclusive-offer%'
            OR ${hits.page_path} LIKE '%/smallbusiness%'
            OR ${hits.page_path} LIKE '%/bulb%'
  OR lower(${hits.page_path}) LIKE '%/nhs%'
    OR lower(${hits.page_path}) LIKE '%/multistore%'
    OR lower(${hits.page_path}) LIKE '%/ukepp%'
    OR lower(${hits.page_path}) LIKE '%/uswitch%'
    OR lower(${hits.page_path}) LIKE '%/decision-tech%'
        )
        AND
        (
            ${hits.page_path} NOT LIKE '%support%'
            AND ${hits.page_path} NOT LIKE '%tvs%'
            AND ${hits.page_path} NOT LIKE '%student%'
            AND ${hits.page_path} NOT LIKE '%www.samsung.com/uk/smartphones/galaxy-a-series/?cid=gb_paid_social_tiktok_a-series_no-phase_a-series_other_tt-uk-aseriestiktok-topview-ttfv-1x1-2020-07-27_mass-other%'
        )
        AND
        (
            ${hits.page_path} IN (SELECT DISTINCT URL_for_cd3 FROM `@{PROJECT_NAME}.024_tr_seuk_ga360.024_tr_seuk_lu_custom_dimension_3` WHERE cd3 IN('product detail','epp shop detail', 'epp shop category', 'epp shop product finder','epp shop product detail', 'flagship pdp','vd marketing page','product finder','multistore shop detail','multistore shop category','multistore shop product search'))
 )
            THEN 'EPP'


        --=======================================--
        --=================Student===============--
        --=======================================--
        WHEN
        (
            ${hits.page_path} LIKE '%student%'
        )
        AND
        (
            ${hits.page_path} NOT LIKE '%support%'
            AND ${hits.page_path} NOT LIKE '%tv%'
            AND ${hits.page_path} NOT LIKE '%www.samsung.com/uk/smartphones/galaxy-a-series/?cid=gb_paid_social_tiktok_a-series_no-phase_a-series_other_tt-uk-aseriestiktok-topview-ttfv-1x1-2020-07-27_mass-other%'
            AND ${hits.page_path} NOT LIKE '%/network%'
            AND ${hits.page_path} NOT LIKE '%/retailer%'
            AND ${hits.page_path} NOT LIKE '%/partner%'
            AND ${hits.page_path} NOT LIKE '%/staff%'
            AND ${hits.page_path} NOT LIKE '%/royal%'
            AND ${hits.page_path} NOT LIKE '%/exclusive-offer%'
            AND ${hits.page_path} NOT LIKE '%/smallbusiness%'
            AND ${hits.page_path} NOT LIKE '%/bulb%'
              AND lower(${hits.page_path}) NOT LIKE '%/nhs%'
    AND lower(${hits.page_path}) NOT LIKE '%/multistore%'
    AND lower(${hits.page_path}) NOT LIKE '%/ukepp%'
    AND lower(${hits.page_path}) NOT LIKE '%/uswitch%'
    AND lower(${hits.page_path}) NOT LIKE '%/decision-tech%'
        )
        AND
        (
            ${hits.page_path} IN (SELECT DISTINCT URL_for_cd3 FROM `@{PROJECT_NAME}.024_tr_seuk_ga360.024_tr_seuk_lu_custom_dimension_3` WHERE cd3 IN('product detail','epp shop detail', 'epp shop category', 'epp shop product finder','epp shop product detail', 'flagship pdp','vd marketing page','product finder','multistore shop detail','multistore shop category','multistore shop product search'))
 )
            THEN 'Student'

        --======================================--
        --=================SHOP=================--
        --======================================--
        WHEN
        (
            ${hits.page_path} NOT LIKE '%support%'
            AND ${hits.page_path} NOT LIKE '%store%'
            AND ${hits.page_path} NOT LIKE '%tvs%'
            AND ${hits.page_path} NOT LIKE '%www.samsung.com/uk/smartphones/galaxy-a-series/?cid=gb_paid_social_tiktok_a-series_no-phase_a-series_other_tt-uk-aseriestiktok-topview-ttfv-1x1-2020-07-27_mass-other%'
            AND ${hits.page_path} NOT LIKE '%/student%'
            AND ${hits.page_path} NOT LIKE '%/network%'
            AND ${hits.page_path} NOT LIKE '%/retailer%'
            AND ${hits.page_path} NOT LIKE '%/partner%'
            AND ${hits.page_path} NOT LIKE '%/staff%'
            AND ${hits.page_path} NOT LIKE '%/royal%'
            AND ${hits.page_path} NOT LIKE '%/exclusive-offer%'
            AND ${hits.page_path} NOT LIKE '%/smallbusiness%'
            AND ${hits.page_path} NOT LIKE '%/bulb%'

        )
        AND
        (
           ${hits.page_path} IN (SELECT DISTINCT URL_for_cd3 FROM `@{PROJECT_NAME}.024_tr_seuk_ga360.024_tr_seuk_lu_custom_dimension_3` WHERE cd3 IN('product detail', 'flagship pdp','vd marketing page','product finder','multistore shop detail','multistore shop category','multistore shop product search'))

        )
            THEN 'Shop'
          --ELSE 'SHOP'
    END;;
    }
  }
