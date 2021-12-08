include: "/Google_Analytics/*.lkml"
view: division {
# extends: [traffic_source_config]
extension: required


dimension: division {
  type: string
  sql:
  CASE
        WHEN
        (
            lower(${hits.page_path}) LIKE '%smartphone%'
            OR lower(${hits.page_path}) LIKE '%mobile%'
            OR lower(${hits.page_path}) LIKE '%akg-headphones%'
            OR lower(${hits.page_path}) LIKE '%buds%'
            OR lower(${hits.page_path}) LIKE '%tablet%'
            OR lower(${hits.page_path}) LIKE '%accessories%'
            OR lower(${hits.page_path}) LIKE '%wearables%'
            OR lower(${hits.page_path}) LIKE '%watches%'
            OR lower(${hits.page_path}) LIKE '%audio-sound%'
            OR lower(${hits.page_path}) LIKE '%/pc%' -- COUNTS cid=.PPC cannot be included OVER Estimation
            --OR lower(${hits.page_path}) LIKE '%storage%'
            --OR lower(${hits.page_path}) LIKE '%memory%'
            OR REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.GP|\.NP|\.SM-|\.E|\.XE)') -- the . is a function in REGEX so we must precede it with a \ this also means we must begin the regex with an r
            OR REGEXP_CONTAINS(UPPER(${hits.page_title}), '(P:GP|P:NP|P:SM-|P:E|P:XE|P:SM5)') -- the | denotes OR allowing for multiple conditions to be included in a single line
        )
        AND
        (
            NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.SP|\.SWA|\.SKK)')
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_title}), '(P:SP|P:SWA|P:SKK)')
            AND lower(${hits.page_path}) NOT LIKE '%support%'
            AND lower(${hits.page_path}) NOT LIKE '%tv%'
        )
        AND
        (
            -- TV
            lower(${hits.page_title}) NOT LIKE '%television%'
            AND lower(${hits.page_title}) NOT LIKE '%audio-v%'
            AND lower(${hits.page_title}) NOT LIKE '%audio v%'
            AND lower(${hits.page_title}) NOT LIKE '%audio-device%'
            AND lower(${hits.page_title}) NOT LIKE '%audio device%'
            AND lower(${hits.page_title}) NOT LIKE '%/video%'
            AND lower(${hits.page_title}) NOT LIKE '%/tv%'
            AND lower(${hits.page_title}) NOT LIKE '%/av%'--Microwave picked up, but part of CE so no problem
            AND lower(${hits.page_title}) NOT LIKE '%au:tvs%'
            AND lower(${hits.page_title}) NOT LIKE '%serif%'
            AND lower(${hits.page_title}) NOT LIKE '%projectors%'
            AND lower(${hits.page_path}) NOT LIKE '%the-premiere%'
            AND lower(${hits.page_path}) NOT LIKE '%terrace%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_title}),r'\.UE|\.HW|\.QE|P:QE|P:HW|P:UE')
            -- DA
            AND NOT REGEXP_CONTAINS(lower(${hits.page_path}), r'appliance.*|kitchen.*|laundry.*|quickdrive.*|addwash.*|bubble.*|washing.*|wm.*|wd46800.*|add-wash.*|dry.*|grande.*|wash.*|vacuum.*|powerbot.*|powerstick.*|anti-tangle.*|jetwallmountpreorder.*|jetfamilyline.*|jet_station.*|refridgerat.*|rs8000.*|familyhub.*|family-hub.*|spacemax.*|rs5000.*|french-door.*|twin-cooling.*|side-by-side.*|twincooling.*|sidebyside.*|bespoke.*|cooking.*|chef-collection.*|dualcookflex.*|dual-cook-flex.*|induction.*|hood.*|electric-oven.*|cooktop.*|oven.*|microwave.*|mwo.*|interior-mwo.*|ranges.*|air-con.*|aircon.*|windfree.*|wind-free.*|purifier.*|aircleaners.*|air_con.*|air-care.*|dishwasher.*|airdresser.*|df60r8600cg.*|air-dresser.*|built-in.*|builtin')
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_title}), 'P:BQ|P:BR|P:C6|P:DF|P:DV|P:DW|P:HA|P:MA|P:MC|P:ME|P:MG|P:MS|P:NA|P:NK|P:NL|P:NQ|P:NV|P:NZ|P:RB|P:RF|P:RH|P:RL|P:RR|P:RS|P:RT|P:RW|P:RZ|P:SK|P:VC|P:VR|P:VS|P:VU|P:WD|P:WF|P:WW')
            AND NOT REGEXP_CONTAINS(UPPER(${product.product_sku}), '^BQ|^BR|^C6|^DF|^DV|^DW|^HA|^MA|^MC|^ME|^MG|^MS|^NA|^NK|^NL|^NQ|^NV|^NZ|^RB|^RF|^RH|^RL|^RR|^RS|^RT|^RW|^RZ|^SK|^VC|^VR|^VS|^VU|^WD|^WF|^WW')
            -- MON
            AND lower(${hits.page_title}) NOT LIKE '%monitor%'
            AND lower(${hits.page_path}) NOT LIKE '%monitors%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_title}),r'\.LS|\.LH|\.LF|\.LC|\.LU|\.LT|P:LT|P:LS|P:LH|P:LF|P:LC|P:LU')
        )
            THEN 'IM'
    --======================================--
    --=================CE===================--
    --======================================--
        WHEN
        (
            -- TV
            lower(${hits.page_title}) LIKE '%television%'
            OR lower(${hits.page_title}) LIKE '%audio-v%'
            OR lower(${hits.page_title}) LIKE '%audio v%'
            OR lower(${hits.page_title}) LIKE '%audio-device%'
            OR lower(${hits.page_title}) LIKE '%audio device%'
            OR lower(${hits.page_title}) LIKE '%video%'
            OR lower(${hits.page_title}) LIKE '%tv%'
            OR lower(${hits.page_title}) LIKE '%av%'--Microwave picked up, but part of CE so no problem
            OR lower(${hits.page_title}) LIKE '%au:tvs%'
            OR lower(${hits.page_title}) LIKE '%serif%'
            OR lower(${hits.page_title}) LIKE '%projectors%'
            OR lower(${hits.page_path}) LIKE '%the-premiere%'
            OR lower(${hits.page_path}) LIKE '%terrace%'
            OR REGEXP_CONTAINS(UPPER(${hits.page_title}),r'\.UE|\.HW|\.QE|P:QE|P:HW|P:UE')
            -- DA
            OR REGEXP_CONTAINS(lower(${hits.page_path}), r'appliance.*|kitchen.*|laundry.*|quickdrive.*|addwash.*|bubble.*|washing.*|wm.*|wd46800.*|add-wash.*|dry.*|grande.*|wash.*|vacuum.*|powerbot.*|powerstick.*|anti-tangle.*|jetwallmountpreorder.*|jetfamilyline.*|jet_station.*|refridgerat.*|rs8000.*|familyhub.*|family-hub.*|spacemax.*|rs5000.*|french-door.*|twin-cooling.*|side-by-side.*|twincooling.*|sidebyside.*|bespoke.*|cooking.*|chef-collection.*|dualcookflex.*|dual-cook-flex.*|induction.*|hood.*|electric-oven.*|cooktop.*|oven.*|microwave.*|mwo.*|interior-mwo.*|ranges.*|air-con.*|aircon.*|windfree.*|wind-free.*|purifier.*|aircleaners.*|air_con.*|air-care.*|dishwasher.*|airdresser.*|df60r8600cg.*|air-dresser.*|built-in.*|builtin')
            OR REGEXP_CONTAINS(UPPER(${hits.page_title}), 'P:BQ|P:BR|P:C6|P:DF|P:DV|P:DW|P:HA|P:MA|P:MC|P:ME|P:MG|P:MS|P:NA|P:NK|P:NL|P:NQ|P:NV|P:NZ|P:RB|P:RF|P:RH|P:RL|P:RR|P:RS|P:RT|P:RW|P:RZ|P:SK|P:VC|P:VR|P:VS|P:VU|P:WD|P:WF|P:WW')
            OR REGEXP_CONTAINS(UPPER(${product.product_sku}), '^BQ|^BR|^C6|^DF|^DV|^DW|^HA|^MA|^MC|^ME|^MG|^MS|^NA|^NK|^NL|^NQ|^NV|^NZ|^RB|^RF|^RH|^RL|^RR|^RS|^RT|^RW|^RZ|^SK|^VC|^VR|^VS|^VU|^WD|^WF|^WW')
            -- MON
            OR lower(${hits.page_title}) LIKE '%monitor%'
            OR lower(${hits.page_path}) LIKE '%monitors%'
            OR REGEXP_CONTAINS(UPPER(${hits.page_title}),r'\.LS|\.LH|\.LF|\.LC|\.LU|\.LT|P:LT|P:LS|P:LH|P:LF|P:LC|P:LU')
        )
        AND
        (
            lower(${hits.page_path}) NOT LIKE '%smartphone%'
            AND lower(${hits.page_path}) NOT LIKE '%mobile%'
            AND lower(${hits.page_path}) NOT LIKE '%akg-headphones%'
            AND lower(${hits.page_path}) NOT LIKE '%buds%'
            AND lower(${hits.page_path}) NOT LIKE '%tablet%'
            AND lower(${hits.page_path}) NOT LIKE '%accessories%'
            AND lower(${hits.page_path}) NOT LIKE '%wearables%'
            AND lower(${hits.page_path}) NOT LIKE '%watches%'
            AND lower(${hits.page_path}) NOT LIKE '%audio-sound%'
            AND lower(${hits.page_path}) NOT LIKE '%pc%' -- COUNTS cid=.PPC cannot be included OVER Estimation
            --AND lower(${hits.page_path}) NOT LIKE '%storage%'
            --AND lower(${hits.page_path}) NOT LIKE '%memory%'
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_path}), r'(\.GP|\.NP|\.SM-|\.E|\.XE)') -- the . is a function in REGEX so we must precede it with a \ this also means we must begin the regex with an r
            AND NOT REGEXP_CONTAINS(UPPER(${hits.page_title}), '(P:GP|P:NP|P:SM-|P:E|P:XE|P:SM5)') -- the | denotes OR allowing for multiple conditions to be included in a single line
        )
            THEN 'CE'
    END;;
    }
  }
