PGDMP                      	    {            main_bd    15.2    15.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    29655    main_bd    DATABASE     {   CREATE DATABASE main_bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE main_bd;
                postgres    false            �            1259    29931    CoefficientType    TABLE        CREATE TABLE public."CoefficientType" (
    "CoefficientTypeId" integer NOT NULL,
    "Name" character varying(30) NOT NULL
);
 %   DROP TABLE public."CoefficientType";
       public         heap    postgres    false            �            1259    29930 %   CoefficientType_CoefficientTypeId_seq    SEQUENCE     �   ALTER TABLE public."CoefficientType" ALTER COLUMN "CoefficientTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CoefficientType_CoefficientTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    253            �            1259    29849    Company    TABLE     �   CREATE TABLE public."Company" (
    "CompanyId" integer NOT NULL,
    "PhoneNumber" character varying(20),
    "Email" character varying(50),
    "Url" character varying(200),
    "CompanyTypeId" integer
);
    DROP TABLE public."Company";
       public         heap    postgres    false            �            1259    29843    CompanyType    TABLE     x   CREATE TABLE public."CompanyType" (
    "CompanyTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 !   DROP TABLE public."CompanyType";
       public         heap    postgres    false            �            1259    29842    CompanyType_CompanyTypeId_seq    SEQUENCE     �   ALTER TABLE public."CompanyType" ALTER COLUMN "CompanyTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CompanyType_CompanyTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            �            1259    29848    Company_CompanyId_seq    SEQUENCE     �   ALTER TABLE public."Company" ALTER COLUMN "CompanyId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Company_CompanyId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241            �            1259    29758    Construction    TABLE     �   CREATE TABLE public."Construction" (
    "ConstructionId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "DocumentPath" character varying
);
 "   DROP TABLE public."Construction";
       public         heap    postgres    false            �            1259    29766    ConstructionState    TABLE     �   CREATE TABLE public."ConstructionState" (
    "ConstructionStateId" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);
 '   DROP TABLE public."ConstructionState";
       public         heap    postgres    false            �            1259    29765 )   ConstructionState_ConstructionStateId_seq    SEQUENCE       ALTER TABLE public."ConstructionState" ALTER COLUMN "ConstructionStateId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionState_ConstructionStateId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    29799    ConstructionUnit    TABLE     �   CREATE TABLE public."ConstructionUnit" (
    "ConstructionUnitId" integer NOT NULL,
    "ConstructionUnitTypeId" integer,
    "Name" character varying(100) NOT NULL,
    "MeasuringUnit" character varying(30) NOT NULL
);
 &   DROP TABLE public."ConstructionUnit";
       public         heap    postgres    false            �            1259    29793    ConstructionUnitType    TABLE     �   CREATE TABLE public."ConstructionUnitType" (
    "ConstructionUnitTypeId" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);
 *   DROP TABLE public."ConstructionUnitType";
       public         heap    postgres    false            �            1259    29792 /   ConstructionUnitType_ConstructionUnitTypeId_seq    SEQUENCE       ALTER TABLE public."ConstructionUnitType" ALTER COLUMN "ConstructionUnitTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionUnitType_ConstructionUnitTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    29798 '   ConstructionUnit_ConstructionUnitId_seq    SEQUENCE       ALTER TABLE public."ConstructionUnit" ALTER COLUMN "ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionUnit_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    29757    Construction_ConstructionId_seq    SEQUENCE     �   ALTER TABLE public."Construction" ALTER COLUMN "ConstructionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Construction_ConstructionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223                       1259    30006    DeliveryRegion    TABLE     �   CREATE TABLE public."DeliveryRegion" (
    "DeliveryRegionId" integer NOT NULL,
    "TransportFleet_TransportId" integer,
    "RegionId" integer
);
 $   DROP TABLE public."DeliveryRegion";
       public         heap    postgres    false                       1259    30005 #   DeliveryRegion_DeliveryRegionId_seq    SEQUENCE     �   ALTER TABLE public."DeliveryRegion" ALTER COLUMN "DeliveryRegionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."DeliveryRegion_DeliveryRegionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    263            �            1259    29869    LogisticCompany    TABLE     �   CREATE TABLE public."LogisticCompany" (
    "LogisticCompanyId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 %   DROP TABLE public."LogisticCompany";
       public         heap    postgres    false            �            1259    29859    Manufacturer    TABLE     z   CREATE TABLE public."Manufacturer" (
    "ManufacturerId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 "   DROP TABLE public."Manufacturer";
       public         heap    postgres    false            �            1259    29810    MaterialSet    TABLE     j   CREATE TABLE public."MaterialSet" (
    "MaterialSetId" integer NOT NULL,
    "ConstructionId" integer
);
 !   DROP TABLE public."MaterialSet";
       public         heap    postgres    false            �            1259    29827    MaterialSet_ConstructionUnit    TABLE     �   CREATE TABLE public."MaterialSet_ConstructionUnit" (
    "MaterialSet_ConstructionUnitId" integer NOT NULL,
    "MaterialSetId" integer,
    "ConstructionUnitId" integer,
    "Amount" real NOT NULL
);
 2   DROP TABLE public."MaterialSet_ConstructionUnit";
       public         heap    postgres    false            �            1259    29826 ?   MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq    SEQUENCE     1  ALTER TABLE public."MaterialSet_ConstructionUnit" ALTER COLUMN "MaterialSet_ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �            1259    29809    MaterialSet_MaterialSetId_seq    SEQUENCE     �   ALTER TABLE public."MaterialSet" ALTER COLUMN "MaterialSetId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MaterialSet_MaterialSetId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    29821    MeasureUnit    TABLE     w   CREATE TABLE public."MeasureUnit" (
    "MeasureUnitId" integer NOT NULL,
    "Name" character varying(80) NOT NULL
);
 !   DROP TABLE public."MeasureUnit";
       public         heap    postgres    false            �            1259    29820    MeasureUnit_MeasureUnitId_seq    SEQUENCE     �   ALTER TABLE public."MeasureUnit" ALTER COLUMN "MeasureUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MeasureUnit_MeasureUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    29723    Mine    TABLE     �   CREATE TABLE public."Mine" (
    "MineId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Coordinates" point NOT NULL,
    "DocumentPath" character varying,
    "SubsidiaryId" integer
);
    DROP TABLE public."Mine";
       public         heap    postgres    false            �            1259    29722    Mine_MineId_seq    SEQUENCE     �   ALTER TABLE public."Mine" ALTER COLUMN "MineId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Mine_MineId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    29742    Objects    TABLE     �   CREATE TABLE public."Objects" (
    "ObjectsId" integer NOT NULL,
    "Name" character varying(100),
    "Coordinates" point NOT NULL,
    "MineId" integer,
    "RegionId" integer
);
    DROP TABLE public."Objects";
       public         heap    postgres    false            �            1259    29772    Objects_Construction    TABLE     �   CREATE TABLE public."Objects_Construction" (
    "Objects_ConstructionId" integer NOT NULL,
    "ObjectsId" integer,
    "ConstructionId" integer,
    "ConstructionLocalName" character varying(100) NOT NULL,
    "ConstructionStateId" integer
);
 *   DROP TABLE public."Objects_Construction";
       public         heap    postgres    false            �            1259    29771 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE       ALTER TABLE public."Objects_Construction" ALTER COLUMN "Objects_ConstructionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Objects_Construction_Objects_ConstructionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    29741    Objects_ObjectsId_seq    SEQUENCE     �   ALTER TABLE public."Objects" ALTER COLUMN "ObjectsId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Objects_ObjectsId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221                       1259    29990    Objects_TransportType    TABLE     �   CREATE TABLE public."Objects_TransportType" (
    "Objects_TransportTypeId" integer NOT NULL,
    "ObjectsId" integer,
    "TransportTypeId" integer
);
 +   DROP TABLE public."Objects_TransportType";
       public         heap    postgres    false                       1259    29989 1   Objects_TransportType_Objects_TransportTypeId_seq    SEQUENCE       ALTER TABLE public."Objects_TransportType" ALTER COLUMN "Objects_TransportTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Objects_TransportType_Objects_TransportTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    261            �            1259    29736    Region    TABLE     m   CREATE TABLE public."Region" (
    "RegionId" integer NOT NULL,
    "Name" character varying(80) NOT NULL
);
    DROP TABLE public."Region";
       public         heap    postgres    false            �            1259    29735    Region_RegionId_seq    SEQUENCE     �   ALTER TABLE public."Region" ALTER COLUMN "RegionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Region_RegionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    29880    Storage    TABLE     �   CREATE TABLE public."Storage" (
    "StorageId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "RegionId" integer,
    "Address" character varying(200) NOT NULL,
    "ManufacturerId" integer
);
    DROP TABLE public."Storage";
       public         heap    postgres    false            �            1259    29896    Storage_ConstructionUnit    TABLE     C  CREATE TABLE public."Storage_ConstructionUnit" (
    "Storage_ConstructionUnitId" integer NOT NULL,
    "StorageId" integer,
    "ConstructionUnitId" integer,
    "MinimumOrderQuantity" real NOT NULL,
    "PricePerQuantity" numeric(13,2) NOT NULL,
    "DocumentPath" character varying,
    "TablePath" character varying
);
 .   DROP TABLE public."Storage_ConstructionUnit";
       public         heap    postgres    false            �            1259    29895 7   Storage_ConstructionUnit_Storage_ConstructionUnitId_seq    SEQUENCE     !  ALTER TABLE public."Storage_ConstructionUnit" ALTER COLUMN "Storage_ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Storage_ConstructionUnit_Storage_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247            �            1259    29879    Storage_StorageId_seq    SEQUENCE     �   ALTER TABLE public."Storage" ALTER COLUMN "StorageId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Storage_StorageId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    245            �            1259    29717 
   Subsidiary    TABLE     m   CREATE TABLE public."Subsidiary" (
    "SubsidiaryId" integer NOT NULL,
    "Name" character varying(100)
);
     DROP TABLE public."Subsidiary";
       public         heap    postgres    false            �            1259    29716    Subsidiary_SubsidiaryId_seq    SEQUENCE     �   ALTER TABLE public."Subsidiary" ALTER COLUMN "SubsidiaryId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Subsidiary_SubsidiaryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215                       1259    29953 	   Transport    TABLE     �   CREATE TABLE public."Transport" (
    "TransportId" integer NOT NULL,
    "TransportModeId" integer,
    "Name" character varying(80) NOT NULL
);
    DROP TABLE public."Transport";
       public         heap    postgres    false            �            1259    29937    TransportFleet    TABLE     �   CREATE TABLE public."TransportFleet" (
    "TransportFleetId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Address" character varying(200) NOT NULL,
    "CompanyId" integer,
    "RegionId" integer
);
 $   DROP TABLE public."TransportFleet";
       public         heap    postgres    false                       1259    29964    TransportFleet_Transport    TABLE     &  CREATE TABLE public."TransportFleet_Transport" (
    "TransportFleet_TransportId" integer NOT NULL,
    "TransportFleetId" integer,
    "TransportId" integer,
    "AverageSpeed" integer NOT NULL,
    "CoefficientTypeId" integer,
    "CoefficientValue" real NOT NULL,
    "CompanyId" integer
);
 .   DROP TABLE public."TransportFleet_Transport";
       public         heap    postgres    false            �            1259    29936 #   TransportFleet_TransportFleetId_seq    SEQUENCE     �   ALTER TABLE public."TransportFleet" ALTER COLUMN "TransportFleetId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportFleet_TransportFleetId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    255                       1259    29963 7   TransportFleet_Transport_TransportFleet_TransportId_seq    SEQUENCE     !  ALTER TABLE public."TransportFleet_Transport" ALTER COLUMN "TransportFleet_TransportId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportFleet_Transport_TransportFleet_TransportId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    259            �            1259    29920    TransportMode    TABLE     �   CREATE TABLE public."TransportMode" (
    "TransportModeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "AvgSpeed" real NOT NULL,
    "TransportTypeId" integer
);
 #   DROP TABLE public."TransportMode";
       public         heap    postgres    false            �            1259    29919 !   TransportMode_TransportModeId_seq    SEQUENCE     �   ALTER TABLE public."TransportMode" ALTER COLUMN "TransportModeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportMode_TransportModeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251            �            1259    29914    TransportType    TABLE     |   CREATE TABLE public."TransportType" (
    "TransportTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 #   DROP TABLE public."TransportType";
       public         heap    postgres    false            �            1259    29913 !   TransportType_TransportTypeId_seq    SEQUENCE     �   ALTER TABLE public."TransportType" ALTER COLUMN "TransportTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportType_TransportTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249                        1259    29952    Transport_TransportId_seq    SEQUENCE     �   ALTER TABLE public."Transport" ALTER COLUMN "TransportId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Transport_TransportId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    257                       1259    30028    User    TABLE     �  CREATE TABLE public."User" (
    "UserId" integer NOT NULL,
    "UserTypeId" integer,
    "SubsidiaryId" integer,
    "Surname" character varying(30) NOT NULL,
    "FirstName" character varying(30) NOT NULL,
    "Patronymic" character varying(30) NOT NULL,
    "Login" character varying(100) NOT NULL,
    "Password" character varying(64) NOT NULL,
    "PhoneNumber" character varying(20) NOT NULL,
    "BirthDate" date NOT NULL,
    "PhotoPath" character varying,
    "Token" character varying(300)
);
    DROP TABLE public."User";
       public         heap    postgres    false            	           1259    30022    UserType    TABLE     h   CREATE TABLE public."UserType" (
    "UserTypeId" integer NOT NULL,
    "Name" character varying(30)
);
    DROP TABLE public."UserType";
       public         heap    postgres    false                       1259    30021    UserType_UserTypeId_seq    SEQUENCE     �   ALTER TABLE public."UserType" ALTER COLUMN "UserTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."UserType_UserTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    265            
           1259    30027    User_UserId_seq    SEQUENCE     �   ALTER TABLE public."User" ALTER COLUMN "UserId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_UserId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    267            �          0    29931    CoefficientType 
   TABLE DATA           H   COPY public."CoefficientType" ("CoefficientTypeId", "Name") FROM stdin;
    public          postgres    false    253   8�       �          0    29849    Company 
   TABLE DATA           `   COPY public."Company" ("CompanyId", "PhoneNumber", "Email", "Url", "CompanyTypeId") FROM stdin;
    public          postgres    false    241   U�       �          0    29843    CompanyType 
   TABLE DATA           @   COPY public."CompanyType" ("CompanyTypeId", "Name") FROM stdin;
    public          postgres    false    239   r�       �          0    29758    Construction 
   TABLE DATA           R   COPY public."Construction" ("ConstructionId", "Name", "DocumentPath") FROM stdin;
    public          postgres    false    223   ��       �          0    29766    ConstructionState 
   TABLE DATA           L   COPY public."ConstructionState" ("ConstructionStateId", "Name") FROM stdin;
    public          postgres    false    225   ��       �          0    29799    ConstructionUnit 
   TABLE DATA           u   COPY public."ConstructionUnit" ("ConstructionUnitId", "ConstructionUnitTypeId", "Name", "MeasuringUnit") FROM stdin;
    public          postgres    false    231   ��       �          0    29793    ConstructionUnitType 
   TABLE DATA           R   COPY public."ConstructionUnitType" ("ConstructionUnitTypeId", "Name") FROM stdin;
    public          postgres    false    229   ��       �          0    30006    DeliveryRegion 
   TABLE DATA           h   COPY public."DeliveryRegion" ("DeliveryRegionId", "TransportFleet_TransportId", "RegionId") FROM stdin;
    public          postgres    false    263   �       �          0    29869    LogisticCompany 
   TABLE DATA           H   COPY public."LogisticCompany" ("LogisticCompanyId", "Name") FROM stdin;
    public          postgres    false    243    �       �          0    29859    Manufacturer 
   TABLE DATA           B   COPY public."Manufacturer" ("ManufacturerId", "Name") FROM stdin;
    public          postgres    false    242   =�       �          0    29810    MaterialSet 
   TABLE DATA           J   COPY public."MaterialSet" ("MaterialSetId", "ConstructionId") FROM stdin;
    public          postgres    false    233   Z�       �          0    29827    MaterialSet_ConstructionUnit 
   TABLE DATA           �   COPY public."MaterialSet_ConstructionUnit" ("MaterialSet_ConstructionUnitId", "MaterialSetId", "ConstructionUnitId", "Amount") FROM stdin;
    public          postgres    false    237   w�       �          0    29821    MeasureUnit 
   TABLE DATA           @   COPY public."MeasureUnit" ("MeasureUnitId", "Name") FROM stdin;
    public          postgres    false    235   ��       �          0    29723    Mine 
   TABLE DATA           a   COPY public."Mine" ("MineId", "Name", "Coordinates", "DocumentPath", "SubsidiaryId") FROM stdin;
    public          postgres    false    217   ��       �          0    29742    Objects 
   TABLE DATA           ]   COPY public."Objects" ("ObjectsId", "Name", "Coordinates", "MineId", "RegionId") FROM stdin;
    public          postgres    false    221   ��       �          0    29772    Objects_Construction 
   TABLE DATA           �   COPY public."Objects_Construction" ("Objects_ConstructionId", "ObjectsId", "ConstructionId", "ConstructionLocalName", "ConstructionStateId") FROM stdin;
    public          postgres    false    227   ��       �          0    29990    Objects_TransportType 
   TABLE DATA           l   COPY public."Objects_TransportType" ("Objects_TransportTypeId", "ObjectsId", "TransportTypeId") FROM stdin;
    public          postgres    false    261   �       �          0    29736    Region 
   TABLE DATA           6   COPY public."Region" ("RegionId", "Name") FROM stdin;
    public          postgres    false    219   %�       �          0    29880    Storage 
   TABLE DATA           a   COPY public."Storage" ("StorageId", "Name", "RegionId", "Address", "ManufacturerId") FROM stdin;
    public          postgres    false    245   B�       �          0    29896    Storage_ConstructionUnit 
   TABLE DATA           �   COPY public."Storage_ConstructionUnit" ("Storage_ConstructionUnitId", "StorageId", "ConstructionUnitId", "MinimumOrderQuantity", "PricePerQuantity", "DocumentPath", "TablePath") FROM stdin;
    public          postgres    false    247   _�       �          0    29717 
   Subsidiary 
   TABLE DATA           >   COPY public."Subsidiary" ("SubsidiaryId", "Name") FROM stdin;
    public          postgres    false    215   |�       �          0    29953 	   Transport 
   TABLE DATA           O   COPY public."Transport" ("TransportId", "TransportModeId", "Name") FROM stdin;
    public          postgres    false    257   ��       �          0    29937    TransportFleet 
   TABLE DATA           j   COPY public."TransportFleet" ("TransportFleetId", "Name", "Address", "CompanyId", "RegionId") FROM stdin;
    public          postgres    false    255   ��       �          0    29964    TransportFleet_Transport 
   TABLE DATA           �   COPY public."TransportFleet_Transport" ("TransportFleet_TransportId", "TransportFleetId", "TransportId", "AverageSpeed", "CoefficientTypeId", "CoefficientValue", "CompanyId") FROM stdin;
    public          postgres    false    259   ��       �          0    29920    TransportMode 
   TABLE DATA           c   COPY public."TransportMode" ("TransportModeId", "Name", "AvgSpeed", "TransportTypeId") FROM stdin;
    public          postgres    false    251   ��       �          0    29914    TransportType 
   TABLE DATA           D   COPY public."TransportType" ("TransportTypeId", "Name") FROM stdin;
    public          postgres    false    249   �                 0    30028    User 
   TABLE DATA           �   COPY public."User" ("UserId", "UserTypeId", "SubsidiaryId", "Surname", "FirstName", "Patronymic", "Login", "Password", "PhoneNumber", "BirthDate", "PhotoPath", "Token") FROM stdin;
    public          postgres    false    267   *�                  0    30022    UserType 
   TABLE DATA           :   COPY public."UserType" ("UserTypeId", "Name") FROM stdin;
    public          postgres    false    265   G�       	           0    0 %   CoefficientType_CoefficientTypeId_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."CoefficientType_CoefficientTypeId_seq"', 1, false);
          public          postgres    false    252            
           0    0    CompanyType_CompanyTypeId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."CompanyType_CompanyTypeId_seq"', 1, false);
          public          postgres    false    238                       0    0    Company_CompanyId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Company_CompanyId_seq"', 1, false);
          public          postgres    false    240                       0    0 )   ConstructionState_ConstructionStateId_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."ConstructionState_ConstructionStateId_seq"', 1, false);
          public          postgres    false    224                       0    0 /   ConstructionUnitType_ConstructionUnitTypeId_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."ConstructionUnitType_ConstructionUnitTypeId_seq"', 1, false);
          public          postgres    false    228                       0    0 '   ConstructionUnit_ConstructionUnitId_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ConstructionUnit_ConstructionUnitId_seq"', 1, false);
          public          postgres    false    230                       0    0    Construction_ConstructionId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Construction_ConstructionId_seq"', 1, false);
          public          postgres    false    222                       0    0 #   DeliveryRegion_DeliveryRegionId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."DeliveryRegion_DeliveryRegionId_seq"', 1, false);
          public          postgres    false    262                       0    0 ?   MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq    SEQUENCE SET     p   SELECT pg_catalog.setval('public."MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq"', 1, false);
          public          postgres    false    236                       0    0    MaterialSet_MaterialSetId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."MaterialSet_MaterialSetId_seq"', 1, false);
          public          postgres    false    232                       0    0    MeasureUnit_MeasureUnitId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."MeasureUnit_MeasureUnitId_seq"', 1, false);
          public          postgres    false    234                       0    0    Mine_MineId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Mine_MineId_seq"', 1, false);
          public          postgres    false    216                       0    0 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."Objects_Construction_Objects_ConstructionId_seq"', 1, false);
          public          postgres    false    226                       0    0    Objects_ObjectsId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Objects_ObjectsId_seq"', 1, false);
          public          postgres    false    220                       0    0 1   Objects_TransportType_Objects_TransportTypeId_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Objects_TransportType_Objects_TransportTypeId_seq"', 1, false);
          public          postgres    false    260                       0    0    Region_RegionId_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Region_RegionId_seq"', 1, false);
          public          postgres    false    218                       0    0 7   Storage_ConstructionUnit_Storage_ConstructionUnitId_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."Storage_ConstructionUnit_Storage_ConstructionUnitId_seq"', 1, false);
          public          postgres    false    246                       0    0    Storage_StorageId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Storage_StorageId_seq"', 1, false);
          public          postgres    false    244                       0    0    Subsidiary_SubsidiaryId_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Subsidiary_SubsidiaryId_seq"', 1, false);
          public          postgres    false    214                       0    0 #   TransportFleet_TransportFleetId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."TransportFleet_TransportFleetId_seq"', 1, false);
          public          postgres    false    254                       0    0 7   TransportFleet_Transport_TransportFleet_TransportId_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."TransportFleet_Transport_TransportFleet_TransportId_seq"', 1, false);
          public          postgres    false    258                       0    0 !   TransportMode_TransportModeId_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."TransportMode_TransportModeId_seq"', 1, false);
          public          postgres    false    250                       0    0 !   TransportType_TransportTypeId_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."TransportType_TransportTypeId_seq"', 1, false);
          public          postgres    false    248                        0    0    Transport_TransportId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Transport_TransportId_seq"', 1, false);
          public          postgres    false    256            !           0    0    UserType_UserTypeId_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."UserType_UserTypeId_seq"', 1, false);
          public          postgres    false    264            "           0    0    User_UserId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."User_UserId_seq"', 1, false);
          public          postgres    false    266                       2606    29935 $   CoefficientType CoefficientType_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."CoefficientType"
    ADD CONSTRAINT "CoefficientType_pkey" PRIMARY KEY ("CoefficientTypeId");
 R   ALTER TABLE ONLY public."CoefficientType" DROP CONSTRAINT "CoefficientType_pkey";
       public            postgres    false    253                       2606    29847    CompanyType CompanyType_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."CompanyType"
    ADD CONSTRAINT "CompanyType_pkey" PRIMARY KEY ("CompanyTypeId");
 J   ALTER TABLE ONLY public."CompanyType" DROP CONSTRAINT "CompanyType_pkey";
       public            postgres    false    239                       2606    29853    Company Company_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_pkey" PRIMARY KEY ("CompanyId");
 B   ALTER TABLE ONLY public."Company" DROP CONSTRAINT "Company_pkey";
       public            postgres    false    241            �           2606    29770 (   ConstructionState ConstructionState_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."ConstructionState"
    ADD CONSTRAINT "ConstructionState_pkey" PRIMARY KEY ("ConstructionStateId");
 V   ALTER TABLE ONLY public."ConstructionState" DROP CONSTRAINT "ConstructionState_pkey";
       public            postgres    false    225            �           2606    29797 .   ConstructionUnitType ConstructionUnitType_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnitType"
    ADD CONSTRAINT "ConstructionUnitType_pkey" PRIMARY KEY ("ConstructionUnitTypeId");
 \   ALTER TABLE ONLY public."ConstructionUnitType" DROP CONSTRAINT "ConstructionUnitType_pkey";
       public            postgres    false    229            �           2606    29803 &   ConstructionUnit ConstructionUnit_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_pkey" PRIMARY KEY ("ConstructionUnitId");
 T   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_pkey";
       public            postgres    false    231            �           2606    29764    Construction Construction_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_pkey" PRIMARY KEY ("ConstructionId");
 L   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_pkey";
       public            postgres    false    223                       2606    30010 "   DeliveryRegion DeliveryRegion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."DeliveryRegion"
    ADD CONSTRAINT "DeliveryRegion_pkey" PRIMARY KEY ("DeliveryRegionId");
 P   ALTER TABLE ONLY public."DeliveryRegion" DROP CONSTRAINT "DeliveryRegion_pkey";
       public            postgres    false    263            	           2606    29873 $   LogisticCompany LogisticCompany_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."LogisticCompany"
    ADD CONSTRAINT "LogisticCompany_pkey" PRIMARY KEY ("LogisticCompanyId");
 R   ALTER TABLE ONLY public."LogisticCompany" DROP CONSTRAINT "LogisticCompany_pkey";
       public            postgres    false    243                       2606    29863    Manufacturer Manufacturer_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_pkey" PRIMARY KEY ("ManufacturerId");
 L   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "Manufacturer_pkey";
       public            postgres    false    242                       2606    29831 >   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_pkey" PRIMARY KEY ("MaterialSet_ConstructionUnitId");
 l   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_pkey";
       public            postgres    false    237            �           2606    29814    MaterialSet MaterialSet_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MaterialSet"
    ADD CONSTRAINT "MaterialSet_pkey" PRIMARY KEY ("MaterialSetId");
 J   ALTER TABLE ONLY public."MaterialSet" DROP CONSTRAINT "MaterialSet_pkey";
       public            postgres    false    233            �           2606    29825    MeasureUnit MeasureUnit_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MeasureUnit"
    ADD CONSTRAINT "MeasureUnit_pkey" PRIMARY KEY ("MeasureUnitId");
 J   ALTER TABLE ONLY public."MeasureUnit" DROP CONSTRAINT "MeasureUnit_pkey";
       public            postgres    false    235            �           2606    29729    Mine Mine_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Mine"
    ADD CONSTRAINT "Mine_pkey" PRIMARY KEY ("MineId");
 <   ALTER TABLE ONLY public."Mine" DROP CONSTRAINT "Mine_pkey";
       public            postgres    false    217            �           2606    29776 .   Objects_Construction Objects_Construction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_pkey" PRIMARY KEY ("Objects_ConstructionId");
 \   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_pkey";
       public            postgres    false    227                       2606    29994 0   Objects_TransportType Objects_TransportType_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Objects_TransportType"
    ADD CONSTRAINT "Objects_TransportType_pkey" PRIMARY KEY ("Objects_TransportTypeId");
 ^   ALTER TABLE ONLY public."Objects_TransportType" DROP CONSTRAINT "Objects_TransportType_pkey";
       public            postgres    false    261            �           2606    29746    Objects Objects_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_pkey" PRIMARY KEY ("ObjectsId");
 B   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_pkey";
       public            postgres    false    221            �           2606    29740    Region Region_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Region"
    ADD CONSTRAINT "Region_pkey" PRIMARY KEY ("RegionId");
 @   ALTER TABLE ONLY public."Region" DROP CONSTRAINT "Region_pkey";
       public            postgres    false    219                       2606    29902 6   Storage_ConstructionUnit Storage_ConstructionUnit_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_pkey" PRIMARY KEY ("Storage_ConstructionUnitId");
 d   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_pkey";
       public            postgres    false    247                       2606    29884    Storage Storage_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_pkey" PRIMARY KEY ("StorageId");
 B   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_pkey";
       public            postgres    false    245            �           2606    29721    Subsidiary Subsidiary_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Subsidiary"
    ADD CONSTRAINT "Subsidiary_pkey" PRIMARY KEY ("SubsidiaryId");
 H   ALTER TABLE ONLY public."Subsidiary" DROP CONSTRAINT "Subsidiary_pkey";
       public            postgres    false    215                       2606    29968 6   TransportFleet_Transport TransportFleet_Transport_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_pkey" PRIMARY KEY ("TransportFleet_TransportId");
 d   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_pkey";
       public            postgres    false    259                       2606    29941 "   TransportFleet TransportFleet_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."TransportFleet"
    ADD CONSTRAINT "TransportFleet_pkey" PRIMARY KEY ("TransportFleetId");
 P   ALTER TABLE ONLY public."TransportFleet" DROP CONSTRAINT "TransportFleet_pkey";
       public            postgres    false    255                       2606    29924     TransportMode TransportMode_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TransportMode"
    ADD CONSTRAINT "TransportMode_pkey" PRIMARY KEY ("TransportModeId");
 N   ALTER TABLE ONLY public."TransportMode" DROP CONSTRAINT "TransportMode_pkey";
       public            postgres    false    251                       2606    29918     TransportType TransportType_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TransportType"
    ADD CONSTRAINT "TransportType_pkey" PRIMARY KEY ("TransportTypeId");
 N   ALTER TABLE ONLY public."TransportType" DROP CONSTRAINT "TransportType_pkey";
       public            postgres    false    249                       2606    29957    Transport Transport_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Transport"
    ADD CONSTRAINT "Transport_pkey" PRIMARY KEY ("TransportId");
 F   ALTER TABLE ONLY public."Transport" DROP CONSTRAINT "Transport_pkey";
       public            postgres    false    257                       2606    30026    UserType UserType_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserType"
    ADD CONSTRAINT "UserType_pkey" PRIMARY KEY ("UserTypeId");
 D   ALTER TABLE ONLY public."UserType" DROP CONSTRAINT "UserType_pkey";
       public            postgres    false    265            *           2606    29854 "   Company Company_CompanyTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_CompanyTypeId_fkey" FOREIGN KEY ("CompanyTypeId") REFERENCES public."CompanyType"("CompanyTypeId");
 P   ALTER TABLE ONLY public."Company" DROP CONSTRAINT "Company_CompanyTypeId_fkey";
       public          postgres    false    241    3331    239            &           2606    29804 =   ConstructionUnit ConstructionUnit_ConstructionUnitTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey" FOREIGN KEY ("ConstructionUnitTypeId") REFERENCES public."ConstructionUnitType"("ConstructionUnitTypeId");
 k   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey";
       public          postgres    false    229    231    3321            ;           2606    30016 +   DeliveryRegion DeliveryRegion_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryRegion"
    ADD CONSTRAINT "DeliveryRegion_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 Y   ALTER TABLE ONLY public."DeliveryRegion" DROP CONSTRAINT "DeliveryRegion_RegionId_fkey";
       public          postgres    false    3311    263    219            <           2606    30011 =   DeliveryRegion DeliveryRegion_TransportFleet_TransportId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryRegion"
    ADD CONSTRAINT "DeliveryRegion_TransportFleet_TransportId_fkey" FOREIGN KEY ("TransportFleet_TransportId") REFERENCES public."TransportFleet_Transport"("TransportFleet_TransportId");
 k   ALTER TABLE ONLY public."DeliveryRegion" DROP CONSTRAINT "DeliveryRegion_TransportFleet_TransportId_fkey";
       public          postgres    false    259    263    3353            ,           2606    29874 6   LogisticCompany LogisticCompany_LogisticCompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."LogisticCompany"
    ADD CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey" FOREIGN KEY ("LogisticCompanyId") REFERENCES public."Company"("CompanyId");
 d   ALTER TABLE ONLY public."LogisticCompany" DROP CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey";
       public          postgres    false    241    243    3333            +           2606    29864 -   Manufacturer Manufacturer_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Company"("CompanyId");
 [   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "Manufacturer_ManufacturerId_fkey";
       public          postgres    false    3333    241    242            '           2606    29815 +   MaterialSet MaterialSet_ConstructionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet"
    ADD CONSTRAINT "MaterialSet_ConstructionId_fkey" FOREIGN KEY ("ConstructionId") REFERENCES public."Construction"("ConstructionId");
 Y   ALTER TABLE ONLY public."MaterialSet" DROP CONSTRAINT "MaterialSet_ConstructionId_fkey";
       public          postgres    false    233    3315    223            (           2606    29837 Q   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
    ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    231    237    3323            )           2606    29832 L   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_MaterialSetId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey" FOREIGN KEY ("MaterialSetId") REFERENCES public."MaterialSet"("MaterialSetId");
 z   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey";
       public          postgres    false    233    3325    237                        2606    29730    Mine Mine_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mine"
    ADD CONSTRAINT "Mine_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."Mine" DROP CONSTRAINT "Mine_SubsidiaryId_fkey";
       public          postgres    false    215    217    3307            #           2606    29782 =   Objects_Construction Objects_Construction_ConstructionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ConstructionId_fkey" FOREIGN KEY ("ConstructionId") REFERENCES public."Construction"("ConstructionId");
 k   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ConstructionId_fkey";
       public          postgres    false    3315    227    223            $           2606    29787 B   Objects_Construction Objects_Construction_ConstructionStateId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ConstructionStateId_fkey" FOREIGN KEY ("ConstructionStateId") REFERENCES public."ConstructionState"("ConstructionStateId");
 p   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ConstructionStateId_fkey";
       public          postgres    false    227    3317    225            %           2606    29777 8   Objects_Construction Objects_Construction_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 f   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ObjectsId_fkey";
       public          postgres    false    221    3313    227            !           2606    29747    Objects Objects_MineId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_MineId_fkey" FOREIGN KEY ("MineId") REFERENCES public."Mine"("MineId");
 I   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_MineId_fkey";
       public          postgres    false    217    3309    221            "           2606    29752    Objects Objects_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 K   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_RegionId_fkey";
       public          postgres    false    221    3311    219            9           2606    29995 :   Objects_TransportType Objects_TransportType_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_TransportType"
    ADD CONSTRAINT "Objects_TransportType_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 h   ALTER TABLE ONLY public."Objects_TransportType" DROP CONSTRAINT "Objects_TransportType_ObjectsId_fkey";
       public          postgres    false    261    221    3313            :           2606    30000 @   Objects_TransportType Objects_TransportType_TransportTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_TransportType"
    ADD CONSTRAINT "Objects_TransportType_TransportTypeId_fkey" FOREIGN KEY ("TransportTypeId") REFERENCES public."TransportType"("TransportTypeId");
 n   ALTER TABLE ONLY public."Objects_TransportType" DROP CONSTRAINT "Objects_TransportType_TransportTypeId_fkey";
       public          postgres    false    249    261    3343            /           2606    29908 I   Storage_ConstructionUnit Storage_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
 w   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    247    3323    231            0           2606    29903 @   Storage_ConstructionUnit Storage_ConstructionUnit_StorageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey" FOREIGN KEY ("StorageId") REFERENCES public."Storage"("StorageId");
 n   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey";
       public          postgres    false    245    3339    247            -           2606    29890 #   Storage Storage_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Manufacturer"("ManufacturerId");
 Q   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_ManufacturerId_fkey";
       public          postgres    false    242    245    3335            .           2606    29885    Storage Storage_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 K   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_RegionId_fkey";
       public          postgres    false    3311    245    219            2           2606    29942 ,   TransportFleet TransportFleet_CompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet"
    ADD CONSTRAINT "TransportFleet_CompanyId_fkey" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");
 Z   ALTER TABLE ONLY public."TransportFleet" DROP CONSTRAINT "TransportFleet_CompanyId_fkey";
       public          postgres    false    241    3333    255            3           2606    29947 +   TransportFleet TransportFleet_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet"
    ADD CONSTRAINT "TransportFleet_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 Y   ALTER TABLE ONLY public."TransportFleet" DROP CONSTRAINT "TransportFleet_RegionId_fkey";
       public          postgres    false    219    255    3311            5           2606    29979 H   TransportFleet_Transport TransportFleet_Transport_CoefficientTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_CoefficientTypeId_fkey" FOREIGN KEY ("CoefficientTypeId") REFERENCES public."CoefficientType"("CoefficientTypeId");
 v   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_CoefficientTypeId_fkey";
       public          postgres    false    259    3347    253            6           2606    29984 @   TransportFleet_Transport TransportFleet_Transport_CompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_CompanyId_fkey" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");
 n   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_CompanyId_fkey";
       public          postgres    false    3333    241    259            7           2606    29969 G   TransportFleet_Transport TransportFleet_Transport_TransportFleetId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_TransportFleetId_fkey" FOREIGN KEY ("TransportFleetId") REFERENCES public."TransportFleet"("TransportFleetId");
 u   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_TransportFleetId_fkey";
       public          postgres    false    259    3349    255            8           2606    29974 B   TransportFleet_Transport TransportFleet_Transport_TransportId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_TransportId_fkey" FOREIGN KEY ("TransportId") REFERENCES public."Transport"("TransportId");
 p   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_TransportId_fkey";
       public          postgres    false    259    3351    257            1           2606    29925 0   TransportMode TransportMode_TransportTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportMode"
    ADD CONSTRAINT "TransportMode_TransportTypeId_fkey" FOREIGN KEY ("TransportTypeId") REFERENCES public."TransportType"("TransportTypeId");
 ^   ALTER TABLE ONLY public."TransportMode" DROP CONSTRAINT "TransportMode_TransportTypeId_fkey";
       public          postgres    false    251    249    3343            4           2606    29958 (   Transport Transport_TransportModeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transport"
    ADD CONSTRAINT "Transport_TransportModeId_fkey" FOREIGN KEY ("TransportModeId") REFERENCES public."TransportMode"("TransportModeId");
 V   ALTER TABLE ONLY public."Transport" DROP CONSTRAINT "Transport_TransportModeId_fkey";
       public          postgres    false    3345    251    257            =           2606    30038    User User_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_SubsidiaryId_fkey";
       public          postgres    false    3307    267    215            >           2606    30033    User User_UserTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_UserTypeId_fkey" FOREIGN KEY ("UserTypeId") REFERENCES public."UserType"("UserTypeId");
 G   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_UserTypeId_fkey";
       public          postgres    false    3359    265    267            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �             x������ � �     