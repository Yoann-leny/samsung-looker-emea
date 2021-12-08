include: "/Google_Analytics/*.lkml"
view: channel {
# extends: [traffic_source_config]
  extension: required


  dimension: channel {
    type: string
    sql:     CASE
    WHEN

      ${TABLE}.trafficsource.medium = 'affiliate'
    OR LOWER(${hits.page_path}) LIKE '%cid=.*affiliate%'
    OR LOWER(${TABLE}.trafficsource.source) LIKE '%track.webgains.com%'
    OR LOWER(${TABLE}.trafficsource.source) LIKE '%myunidays.com%'
OR LOWER(${TABLE}.trafficsource.source) LIKE '%studentbeans.com%'
OR REGEXP_CONTAINS(${hits.page_path},'cid=uk_paid_affiliate')--<---MOST IMPORTANT ONE
OR REGEXP_CONTAINS(${hits.page_path},'cid\\=.*affiliate')
OR REGEXP_CONTAINS(${TABLE}.trafficsource.source,'^(track\\.webgains\\.com)$')
OR REGEXP_CONTAINS(${TABLE}.trafficsource.source,'myunidays\\.com')

AND LOWER(${hits.page_path}) NOT LIKE '%support%'
AND LOWER(${hits.page_path}) NOT LIKE '%social%'


        THEN 'Affiliates'

    # -- --======================================--
    # -- --=================APP=================--
    # -- --======================================--

       WHEN

       REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*(\\_app\\_)')
     AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')

         THEN 'App'

    # -- --======================================--
    # -- --=================Push=================--
    # -- --======================================--

     WHEN

       (
       REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*push')
       OR ${hits.page_path} LIKE '%cid\\=.*push%'
       )
       AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
       AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*(\\_app\\_)')

         THEN 'Push'

    # -- --======================================--
    # -- --=================EMAIL=================--
    # -- --======================================--

     WHEN
     (
       ${TABLE}.trafficsource.medium = 'email'
       OR REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
     )
     AND LOWER(${hits.page_path}) NOT LIKE '%social%'
         THEN 'Email'

    # --======================================--
    # -- --=================Organic==============--
    # -- --======================================--

     WHEN
       ${TABLE}.trafficsource.medium = 'organic'
       AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
       AND LOWER(${hits.page_path}) NOT LIKE '%support%'
       AND LOWER(${hits.page_path}) NOT LIKE '%/res/samsung_mid_prod1/0cf69b3a1a01b270a1a5cbdbaae12c12.html%'
         THEN 'Organic Search'

    # -- --======================================--
    # -- --=================Social===============--
    # -- --======================================--

     WHEN
       (
           ${hits.has_social_source_referral} = 'Yes'
           OR ${TABLE}.trafficsource.medium='Social'
           OR LOWER(${TABLE}.trafficsource.medium) LIKE '%social%'
           OR LOWER(${TABLE}.trafficsource.medium) LIKE '%social-network%'
           OR LOWER(${TABLE}.trafficsource.medium) LIKE '%social-media%'
           OR LOWER(${TABLE}.trafficsource.medium) LIKE '%sm%'
           OR LOWER(${TABLE}.trafficsource.medium) LIKE '%social network%'
           OR LOWER(${TABLE}.trafficsource.medium) LIKE '%social media%'
           OR LOWER(${hits.page_path}) LIKE '%social%'
           OR LOWER(${hits.page_path}) LIKE '%social-network%'
           OR LOWER(${hits.page_path}) LIKE '%social-media%'
           OR LOWER(${hits.page_path}) LIKE '%social network%'
           OR LOWER(${hits.page_path}) LIKE '%Facebook%'
           OR LOWER(${hits.page_path}) LIKE '%Instagram%'
           OR LOWER(${hits.page_path}) LIKE '%Snapchat%'
           OR LOWER(${hits.page_path}) LIKE '%pinterest%'
           OR LOWER(${hits.page_path}) LIKE '%reddit%'
       )
     --AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
         THEN 'Social'



    # -- --======================================--
    # -- --=================Referral===============--
    # -- --======================================--

     WHEN
       ${TABLE}.trafficsource.medium LIKE '%referral%'
       AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
       AND LOWER(${hits.page_path}) NOT LIKE '%/res/samsung_mid_prod1/0cf69b3a1a01b270a1a5cbdbaae12c12.html'
       AND LOWER(${hits.page_path}) NOT LIKE '%support%'
         THEN 'Referral'

    # -- --=====================================--
    # -- --==============Paid Search============--
    # -- --=====================================--

     WHEN
       (
       ${TABLE}.trafficsource.medium = 'paid search'
       OR REGEXP_CONTAINS(${TABLE}.trafficsource.medium, '^(cpc|ppc|paidsearch|paid)$')
       )
       AND LOWER(${hits.page_path}) NOT LIKE '%/res/samsung_mid_prod1/0cf69b3a1a01b270a1a5cbdbaae12c12.html%'
       --INCLUDE /uk/web/cart/ | /uk/ | /uk/search/ ? Not included by GA

           THEN 'Paid Search'



    # -- --======================================--
    # -- --=================Other===============--
    # -- --======================================--

     WHEN
       channelgrouping LIKE'Other Advertising'
       OR REGEXP_CONTAINS(${TABLE}.trafficsource.medium, '^(cpv|cpa|cpp|content-text)$')
       AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
         THEN 'Other Advertising'

    # -- --======================================--
    # -- --=================Display===============--
    # -- --======================================--

     WHEN
       (
           REGEXP_CONTAINS(${TABLE}.trafficsource.medium, '^(display|cpm|banner)$')
           OR ${TABLE}.trafficsource.adwordsclickinfo.adnetworktype = 'Content'
           OR ${hits.page_path} LIKE '%gb_paid_display%'
           OR lower(${TABLE}.trafficsource.medium) LIKE 'video'
       )
       AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
       AND NOT REGEXP_CONTAINS(${hits.page_path}, 'social')
       AND LOWER(${hits.page_path}) NOT  LIKE '%/res/samsung_mid_prod1/0cf69b3a1a01b270a1a5cbdbaae12c12.html'
       AND LOWER(${hits.page_path}) LIKE '%cid=gb_paid_display%'
         THEN 'Display'


    # -- --======================================--
    # -- --=================Direct===============--
    # -- --======================================--

     WHEN
     (
       (
         ${TABLE}.trafficsource.source = '(direct)'
         AND
         (
           ${TABLE}.trafficsource.medium = '(not set)'
           OR ${TABLE}.trafficsource.medium = '(none)'
         )
       )
       AND
       channelgrouping = 'Direct'
     )
     AND NOT REGEXP_CONTAINS(${hits.page_path}, 'cid\\=.*email')
     AND LOWER(${hits.page_path}) NOT  LIKE '%/res/samsung_mid_prod1/0cf69b3a1a01b270a1a5cbdbaae12c12.html'
     AND
     (
       lower(${hits.page_path}) NOT LIKE '%email%'
       AND NOT REGEXP_CONTAINS(lower(${hits.page_path}), 'cid\\=.*email')
       AND NOT REGEXP_CONTAINS(lower(${hits.page_path}), 'cid\\=.*(\\_app\\_)')
       AND NOT REGEXP_CONTAINS(${TABLE}.trafficsource.medium, '^(cpc|ppc|paidsearch|paid)$')
       AND NOT REGEXP_CONTAINS(${hits.page_path},'cid\\=.*affiliate')
       AND lower(${hits.page_path}) NOT LIKE '%support%'
     )
       THEN 'Direct'

    END ;;
  }
}
