include: "/Google_Analytics/*.lkml"
view: category {
# extends: [traffic_source_config]
extension: required


dimension: category {
  type: string
  sql:


      CASE

        # --=================================--
        # --============Smartphones==========--
        # --=================================--

        WHEN
        (
            LOWER(${hits.page_path}) LIKE '%smartphone%'
        OR LOWER(${hits.page_path}) LIKE '%mobile%'--also includes tablets URLs with  .../mobile/tablet...
        OR LOWER(${hits.page_title}) LIKE '%.sm5g%'
        OR LOWER(${hits.page_title}) LIKE '%.sm-a%'
        OR LOWER(${hits.page_title}) LIKE '%.sm-f%'
        OR LOWER(${hits.page_title}) LIKE '%.sm-g%'
        OR LOWER(${hits.page_title}) LIKE '%.sm-j%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-m%'
        OR LOWER(${hits.page_title}) LIKE '%.sm-n%'
            OR LOWER(${hits.page_path}) LIKE '%galaxy%'
            OR REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.SM|\.VO|\.VR|\.GE|\.GT|\.RB|\.RF)')
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%accessories%'
            AND LOWER(${hits.page_path}) NOT LIKE '%support%'
            AND LOWER(${hits.page_path}) NOT LIKE '%tablet%'--to take into account contains(mobile, galaxy)
            AND LOWER(${hits.page_path}) NOT LIKE 'www.samsung.com/uk/smartphones/galaxy-a-series/?cid=gb_paid_social_tiktok_a-series_no-phase_a-series_other_tt-uk-aseriestiktok-topview-ttfv-1x1-2020-07-27_mass-other'
            AND LOWER(${hits.page_path})  NOT  LIKE '%support%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%buds%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%/akg-headphones/%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-sound%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio sound%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-n2%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-n7%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y1%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y4%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y5%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y6%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r17%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r18%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r19%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%watches%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r2%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r3%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r5%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r7%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r8%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%uk/mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-f%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-g%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-n9%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-t%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-u%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.e%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mb%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mu%'
            AND  LOWER(${hits.page_title}) NOT  LIKE '%.mz%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory-storage%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
            AND LOWER(${hits.page_title}) NOT  LIKE'%television%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%video%'
            --AND LOWER(${hits.page_title}) NOT  LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            --AND LOWER(${hits.page_title}) NOT  LIKE '%av%'--CANNOT BE USED microwAVe
            AND LOWER(${hits.page_title}) NOT  LIKE '%au:tvs%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%serif%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%projectors%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%the-premiere%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%terrace%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.ue%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.hw%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.qe%'
            --AND LOWER(${hits.page_path}) NOT  LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            AND LOWER(${hits.page_path}) NOT  LIKE '%qled-tv%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%frame%'
        )
            THEN 'Smartphones'


        # --=================================--
        # --==============Tablets============--
        # --=================================--

        WHEN
        (
            LOWER(${hits.page_path}) LIKE '%tablets%'
            OR LOWER(${hits.page_title}) LIKE '%mobile:tablets:finder%'
            OR LOWER(${hits.page_title}) LIKE '%mobile:tablets:galaxy tab%'
            OR REGEXP_CONTAINS(LOWER(${hits.page_title}),'.sm5t')
            OR LOWER(${hits.page_title}) LIKE '%.gt-n%'
            OR LOWER(${hits.page_title}) LIKE '%.gt-p%'
            OR LOWER(${hits.page_title}) LIKE '%.sm5p%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-p%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-5T%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-t%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-w62%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-w70%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-w72%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-72%'
            OR LOWER(${hits.page_path}) LIKE  '%.sm-t87%'
            OR LOWER(${hits.page_path}) LIKE  '%galaxy-tab-s7%'
        )
        AND
        (
            LOWER(${hits.page_title}) NOT LIKE '%support%'
            AND LOWER(${hits.page_path}) NOT LIKE '%pc:pc%'
            AND LOWER(${hits.page_path}) NOT LIKE '%accessories%'
            AND LOWER(${hits.page_path}) NOT LIKE '%galaxy-book-s%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%buds%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%/akg-headphones/%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-sound%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio sound%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-n2%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-n7%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y1%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y4%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y5%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y6%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r17%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r18%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r19%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%watches%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r2%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r3%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r5%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r7%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r8%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%uk/mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-f%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-g%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-n9%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-t%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-u%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.e%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.e%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mb%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mu%'
            AND  LOWER(${hits.page_title}) NOT  LIKE '%.mz%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory-storage%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
            AND LOWER(${hits.page_title}) NOT  LIKE'%television%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%video%'
            --AND LOWER(${hits.page_title}) NOT  LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            --AND LOWER(${hits.page_title}) NOT  LIKE '%av%'--CANNOT BE USED microwAVe
            AND LOWER(${hits.page_title}) NOT  LIKE '%au:tvs%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%serif%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%projectors%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%the-premiere%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%terrace%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.ue%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.hw%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.qe%'
            --AND LOWER(${hits.page_path}) NOT  LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            AND LOWER(${hits.page_path}) NOT  LIKE '%qled-tv%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%frame%'

        )
            THEN 'Tablets'


        # --=======================================--
        # --==============New Computing============--
        # --=======================================--

        WHEN
        (
            LOWER(${hits.page_title}) LIKE '%uk:pc:pc:finder%'
            OR LOWER(${hits.page_title}) LIKE '%uk:pc:pc:%'--Repeat of previous line
            OR LOWER(${hits.page_path}) LIKE '%.np76%'
            OR LOWER(${hits.page_path}) LIKE '%.np93%'
            OR LOWER(${hits.page_path}) LIKE '%.np95%'
            OR LOWER(${hits.page_path}) LIKE '%.sm-w76%'
            OR LOWER(${hits.page_path}) LIKE '%.xe31%'
            OR LOWER(${hits.page_path}) LIKE '%.xe35%'
            OR LOWER(${hits.page_path}) LIKE '%galaxy-book-s%'
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%support%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%buds%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%/akg-headphones/%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-sound%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio sound%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-n2%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-n7%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y1%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y4%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y5%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.gp-y6%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r17%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r18%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.sm-r19%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%watches%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r2%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r3%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r5%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r7%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r8%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%uk/mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-f%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-g%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-n9%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-t%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-u%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.e%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mb%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mu%'
            AND  LOWER(${hits.page_title}) NOT  LIKE '%.mz%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory-storage%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
            AND LOWER(${hits.page_title}) NOT  LIKE'%television%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%video%'
            --AND LOWER(${hits.page_title}) NOT  LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            --AND LOWER(${hits.page_title}) NOT  LIKE '%av%'--CANNOT BE USED microwAVe
            AND LOWER(${hits.page_title}) NOT  LIKE '%au:tvs%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%serif%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%projectors%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%the-premiere%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%terrace%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.ue%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.hw%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.qe%'
            --AND LOWER(${hits.page_path}) NOT  LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            AND LOWER(${hits.page_path}) NOT  LIKE '%qled-tv%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%frame%'
        )
            THEN 'New_Comp'

      # --=======================================--
      #   --==============True Wireless============--
      #   --=======================================--

        WHEN
        (
            LOWER(${hits.page_title}) LIKE '%buds%'
            OR LOWER(${hits.page_title}) LIKE '%/akg-headphones/%'
            OR LOWER(${hits.page_title}) LIKE '%audio-sound%'
            OR LOWER(${hits.page_title}) LIKE '%audio sound%'
            OR LOWER(${hits.page_title}) LIKE '%.gp-n2%'
            OR LOWER(${hits.page_title}) LIKE '%.gp-n7%'
            OR LOWER(${hits.page_title}) LIKE '%.gp-y1%'
            OR LOWER(${hits.page_title}) LIKE '%.gp-y4%'
            OR LOWER(${hits.page_title}) LIKE '%.gp-y5%'
            OR LOWER(${hits.page_title}) LIKE '%.gp-y6%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-r17%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-r18%'
            OR LOWER(${hits.page_title}) LIKE '%.sm-r19%'
        )
        AND
        (
            LOWER(${hits.page_title}) NOT LIKE '%support%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%watches%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r2%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r3%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r5%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r7%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.sm-r8%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%uk/mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-f%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-g%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-n9%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-t%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-u%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.e%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mb%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mu%'
            AND  LOWER(${hits.page_title}) NOT  LIKE '%.mz%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory-storage%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
            AND LOWER(${hits.page_title}) NOT  LIKE'%television%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%video%'
            --AND LOWER(${hits.page_title}) NOT  LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            --AND LOWER(${hits.page_title}) NOT  LIKE '%av%'--CANNOT BE USED microwAVe
            AND LOWER(${hits.page_title}) NOT  LIKE '%au:tvs%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%serif%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%projectors%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%the-premiere%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%terrace%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.ue%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.hw%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.qe%'
            --AND LOWER(${hits.page_path}) NOT  LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            AND LOWER(${hits.page_path}) NOT  LIKE '%qled-tv%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%frame%'
        )
            THEN 'True_Wireless'


        # --======================================--
        # --===============Watch==================--
        # --======================================--

        WHEN
        (
           LOWER(${hits.page_title}) LIKE '%watches%'
           OR LOWER(${hits.page_path}) LIKE '%.sm-r2%'
           OR LOWER(${hits.page_path}) LIKE '%.sm-r3%'
           OR LOWER(${hits.page_path}) LIKE '%.sm-r5%'
           OR LOWER(${hits.page_path}) LIKE '%.sm-r6%'
           OR LOWER(${hits.page_path}) LIKE '%.sm-r7%'
           OR LOWER(${hits.page_path}) LIKE '%.sm-r8%'
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%support%'
            AND LOWER(${hits.page_path}) NOT LIKE '%buds%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%uk/mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.mobile-accessories%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-f%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-g%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-n9%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-r6%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-t%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%.gp-u%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.e%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mb%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mu%'
            AND  LOWER(${hits.page_title}) NOT  LIKE '%.mz%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory-storage%'
            AND  LOWER(${hits.page_path}) NOT LIKE '%memory%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
            AND LOWER(${hits.page_title}) NOT  LIKE'%television%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%video%'
            --AND LOWER(${hits.page_title}) NOT  LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            --AND LOWER(${hits.page_title}) NOT  LIKE '%av%'--CANNOT BE USED microwAVe
            AND LOWER(${hits.page_title}) NOT  LIKE '%au:tvs%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%serif%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%projectors%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%the-premiere%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%terrace%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.ue%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.hw%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.qe%'
            --AND LOWER(${hits.page_path}) NOT  LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            AND LOWER(${hits.page_path}) NOT  LIKE '%qled-tv%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%frame%'
        )
            THEN 'Watch'


        # --======================================--
        # --============Accessories===============--
        # --======================================--

        WHEN
        (
            LOWER(${hits.page_path}) LIKE '%uk/mobile-accessories%'
            OR LOWER(${hits.page_path}) LIKE '%finder.mobile-accessories%'
            OR LOWER(${hits.page_path}) LIKE '%.gp-f%'
            OR LOWER(${hits.page_path}) LIKE '%.gp-g%'
            OR LOWER(${hits.page_path}) LIKE '%.gp-n9%'
            OR LOWER(${hits.page_path}) LIKE '%.gp-r6%'
            OR LOWER(${hits.page_path}) LIKE '%.gp-t%'
            OR LOWER(${hits.page_path}) LIKE '%.gp-u%'
            OR LOWER(${hits.page_path}) LIKE '%buy.e%'
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%support%'
            AND LOWER(${hits.page_path}) NOT LIKE '%.GP-U999S%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mb%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.mu%'
            AND  LOWER(${hits.page_title}) NOT  LIKE '%.mz%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory-storage%'
            AND  LOWER(${hits.page_path}) NOT  LIKE '%memory%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
            AND LOWER(${hits.page_title}) NOT  LIKE'%television%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%video%'
            --AND LOWER(${hits.page_title}) NOT  LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            --AND LOWER(${hits.page_title}) NOT  LIKE '%av%'--CANNOT BE USED microwAVe
            AND LOWER(${hits.page_title}) NOT  LIKE '%au:tvs%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%serif%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%projectors%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%the-premiere%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%terrace%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.ue%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.hw%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.qe%'
            --AND LOWER(${hits.page_path}) NOT  LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            AND LOWER(${hits.page_path}) NOT  LIKE '%qled-tv%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%frame%'
        )

            THEN 'Accessories'


        # --======================================--
        # --================Memory================--
        # --======================================--

        WHEN
        (
            LOWER(${hits.page_title}) LIKE '%.mb%'
            OR LOWER(${hits.page_title}) LIKE '%.mu%'
            OR LOWER(${hits.page_title}) LIKE '%.mz%'
            OR LOWER(${hits.page_path}) LIKE '%memory-storage%'
            OR LOWER(${hits.page_path}) LIKE '%memory%'
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%support%'
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%accessories%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
            AND LOWER(${hits.page_title}) NOT  LIKE'%television%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio v%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio-device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%audio device%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%video%'
            --AND LOWER(${hits.page_title}) NOT  LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            --AND LOWER(${hits.page_title}) NOT  LIKE '%av%'--CANNOT BE USED microwAVe
            AND LOWER(${hits.page_title}) NOT  LIKE '%au:tvs%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%serif%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%projectors%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%the-premiere%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%terrace%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.ue%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.hw%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.qe%'
            --AND LOWER(${hits.page_path}) NOT  LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            AND LOWER(${hits.page_path}) NOT  LIKE '%qled-tv%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%frame%'
        )
            THEN 'Memory'


        # --======================================--
        # --================TV/AV=================--
        # --======================================--

        WHEN
        (
            LOWER(${hits.page_title}) LIKE '%television%'
            OR LOWER(${hits.page_title}) LIKE '%audio-v%'
            OR LOWER(${hits.page_title}) LIKE '%audio v%'
            OR LOWER(${hits.page_title}) LIKE '%audio-device%'
            OR LOWER(${hits.page_title}) LIKE '%audio device%'
            OR LOWER(${hits.page_title}) LIKE '%video%'
            OR LOWER(${hits.page_title}) LIKE '%tvs%' --CANNOT BE USED EF-PG996TVEGWW SKU for a case
            OR LOWER(${hits.page_title}) LIKE '%av%'--CANNOT BE USED microwAVe
            OR LOWER(${hits.page_title}) LIKE '%au:tvs%'
            OR LOWER(${hits.page_title}) LIKE '%serif%'
            OR LOWER(${hits.page_title}) LIKE '%projectors%'
            OR LOWER(${hits.page_title}) LIKE '%the-premiere%'
            OR LOWER(${hits.page_title}) LIKE '%terrace%'
            OR LOWER(${hits.page_title}) LIKE '%.ue%'
            OR LOWER(${hits.page_title}) LIKE '%.hw%'
            OR LOWER(${hits.page_title}) LIKE '%.qe%'
            --OR LOWER(${hits.page_path}) LIKE '%8k%'--CANNOT BE USED 8Kg washing machine
            OR LOWER(${hits.page_path}) LIKE '%qled-tv%'
            OR LOWER(${hits.page_path}) LIKE '%frame%'
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%support%'
            AND LOWER(${hits.page_path}) NOT LIKE '%microwave%'--FOR contains av
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%accessories%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%uk:familyhub%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%rs8000%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%built-in%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home appliance%'
            AND LOWER(${hits.page_title})  NOT  LIKE  '%home-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%laundry%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washers-and-dryers%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%washing-machine%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%refrigerators%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%vacuum-cleaner%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%cooking-appliance%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%microwave%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%airdresser%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%tumble-dryer%'
            AND LOWER(${hits.page_path})  NOT  LIKE  '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')

        )
            THEN 'TV/AV'

        # --======================================--
        # --================DA=================--
        # --======================================--

        WHEN
        (
            LOWER(${hits.page_path}) LIKE '%quickdrive%'
            OR LOWER(${hits.page_path}) LIKE '%uk:familyhub%'
            OR LOWER(${hits.page_path}) LIKE '%rs8000%'
            OR LOWER(${hits.page_path}) LIKE '%built-in%'
            OR LOWER(${hits.page_title}) LIKE '%home appliance%'
            OR LOWER(${hits.page_title}) LIKE '%home-appliance%'
            OR LOWER(${hits.page_path}) LIKE '%appliance%'
            OR LOWER(${hits.page_path}) LIKE '%laundry%'
            OR LOWER(${hits.page_path}) LIKE '%washers-and-dryers%'
            OR LOWER(${hits.page_path}) LIKE '%washing-machine%'
            OR LOWER(${hits.page_path}) LIKE '%refrigerators%'
            OR LOWER(${hits.page_path}) LIKE '%vacuum-cleaner%'
            OR LOWER(${hits.page_path}) LIKE '%cooking-appliance%'
            OR LOWER(${hits.page_path}) LIKE '%microwave%'
            OR LOWER(${hits.page_path}) LIKE '%airdresser%'
            OR LOWER(${hits.page_path}) LIKE '%tumble-dryer%'
            OR LOWER(${hits.page_path}) LIKE '%quickdrive%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.BQ|\.BR|\.C6|\.DF|\.DV|\.DW|\.HA|\.MA|\.MC|\.ME|\.MG|\.MS|\.NA|\.NK|\.NL|\.NQ|\.NV|\.NZ|\.RB|\.RF|\.RH|\.RL|\.RR|\.RS|\.RT|\.RW|\.RZ|\.SK|\.VC|\.VR|\.VS|\.VU|\.WD|\.WF|\.WW.)')
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%support%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%monitor%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%finder.monitors%'
            AND LOWER(${hits.page_path}) NOT  LIKE '%buy.LS%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LH%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LF%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LC%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LT%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%.LU%'
            AND LOWER(${hits.page_title}) NOT  LIKE '%monitor%'
        )
            THEN 'DA'

        # --=========================================--
        # --================Monitors=================--
        # --=========================================--

        WHEN
        (
            LOWER(${hits.page_title}) LIKE '%monitor%'
            OR LOWER(${hits.page_path}) LIKE '%monitor%'
            OR LOWER(${hits.page_path}) LIKE '%finder.monitors%'
            OR LOWER(${hits.page_path}) LIKE '%buy.LS%'
            OR LOWER(${hits.page_title}) LIKE '%.LH%'
            OR LOWER(${hits.page_title}) LIKE '%.LF%'
            OR LOWER(${hits.page_title}) LIKE '%.LC%'
            OR LOWER(${hits.page_title}) LIKE '%.LT%'
            OR LOWER(${hits.page_title}) LIKE '%.LU%'
            OR LOWER(${hits.page_title}) LIKE '%monitor%'
        )
        AND
        (
            LOWER(${hits.page_path}) NOT LIKE '%support%'
        )
            THEN 'Monitors'
    ELSE
        '(Other)'
    END;;
}
}
