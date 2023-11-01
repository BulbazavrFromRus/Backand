PGDMP                     
    {            main_bd    15.2    15.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
            public          postgres    false    241            �            1259    29772    Construction    TABLE     �   CREATE TABLE public."Construction" (
    "ConstructionId" integer NOT NULL,
    "ObjectsId" integer,
    "ConstructionTypeId" integer,
    "ConstructionName" character varying(100) NOT NULL,
    "ConstructionStateId" integer
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
            public          postgres    false    225            �            1259    29758    ConstructionType    TABLE     �   CREATE TABLE public."ConstructionType" (
    "ConstructionTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "DocumentPath" character varying
);
 &   DROP TABLE public."ConstructionType";
       public         heap    postgres    false            �            1259    29799    ConstructionUnit    TABLE     �   CREATE TABLE public."ConstructionUnit" (
    "ConstructionUnitId" integer NOT NULL,
    "ConstructionUnitTypeId" integer,
    "Name" character varying(100) NOT NULL,
    "MeasureUnitId" integer
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
            public          postgres    false    231            �            1259    29757    Construction_ConstructionId_seq    SEQUENCE     �   ALTER TABLE public."ConstructionType" ALTER COLUMN "ConstructionTypeId" ADD GENERATED ALWAYS AS IDENTITY (
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
       public         heap    postgres    false            �            1259    29810    MaterialSet    TABLE     n   CREATE TABLE public."MaterialSet" (
    "MaterialSetId" integer NOT NULL,
    "ConstructionTypeId" integer
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
       public         heap    postgres    false            �            1259    29771 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE       ALTER TABLE public."Construction" ALTER COLUMN "ConstructionId" ADD GENERATED ALWAYS AS IDENTITY (
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
       public         heap    postgres    false            �            1259    29896    Storage_ConstructionUnit    TABLE       CREATE TABLE public."Storage_ConstructionUnit" (
    "Storage_ConstructionUnitId" integer NOT NULL,
    "StorageId" integer,
    "ConstructionUnitId" integer,
    "PricePerUnit" numeric(13,2) NOT NULL,
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
       public         heap    postgres    false                       1259    29964    TransportFleet_Transport    TABLE       CREATE TABLE public."TransportFleet_Transport" (
    "TransportFleet_TransportId" integer NOT NULL,
    "TransportFleetId" integer,
    "TransportId" integer,
    "AverageSpeed" integer NOT NULL,
    "CoefficientTypeId" integer,
    "CoefficientValue" real NOT NULL
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
    public          postgres    false    253   ��       �          0    29849    Company 
   TABLE DATA           `   COPY public."Company" ("CompanyId", "PhoneNumber", "Email", "Url", "CompanyTypeId") FROM stdin;
    public          postgres    false    241   �       �          0    29843    CompanyType 
   TABLE DATA           @   COPY public."CompanyType" ("CompanyTypeId", "Name") FROM stdin;
    public          postgres    false    239   ��       �          0    29772    Construction 
   TABLE DATA           �   COPY public."Construction" ("ConstructionId", "ObjectsId", "ConstructionTypeId", "ConstructionName", "ConstructionStateId") FROM stdin;
    public          postgres    false    227   ��       �          0    29766    ConstructionState 
   TABLE DATA           L   COPY public."ConstructionState" ("ConstructionStateId", "Name") FROM stdin;
    public          postgres    false    225   B�       �          0    29758    ConstructionType 
   TABLE DATA           Z   COPY public."ConstructionType" ("ConstructionTypeId", "Name", "DocumentPath") FROM stdin;
    public          postgres    false    223   ��       �          0    29799    ConstructionUnit 
   TABLE DATA           u   COPY public."ConstructionUnit" ("ConstructionUnitId", "ConstructionUnitTypeId", "Name", "MeasureUnitId") FROM stdin;
    public          postgres    false    231   c�       �          0    29793    ConstructionUnitType 
   TABLE DATA           R   COPY public."ConstructionUnitType" ("ConstructionUnitTypeId", "Name") FROM stdin;
    public          postgres    false    229   ��       �          0    30006    DeliveryRegion 
   TABLE DATA           h   COPY public."DeliveryRegion" ("DeliveryRegionId", "TransportFleet_TransportId", "RegionId") FROM stdin;
    public          postgres    false    263   O�       �          0    29869    LogisticCompany 
   TABLE DATA           H   COPY public."LogisticCompany" ("LogisticCompanyId", "Name") FROM stdin;
    public          postgres    false    243   ��       �          0    29859    Manufacturer 
   TABLE DATA           B   COPY public."Manufacturer" ("ManufacturerId", "Name") FROM stdin;
    public          postgres    false    242   d�       �          0    29810    MaterialSet 
   TABLE DATA           N   COPY public."MaterialSet" ("MaterialSetId", "ConstructionTypeId") FROM stdin;
    public          postgres    false    233   ��       �          0    29827    MaterialSet_ConstructionUnit 
   TABLE DATA           �   COPY public."MaterialSet_ConstructionUnit" ("MaterialSet_ConstructionUnitId", "MaterialSetId", "ConstructionUnitId", "Amount") FROM stdin;
    public          postgres    false    237   �       �          0    29821    MeasureUnit 
   TABLE DATA           @   COPY public."MeasureUnit" ("MeasureUnitId", "Name") FROM stdin;
    public          postgres    false    235   �       �          0    29723    Mine 
   TABLE DATA           a   COPY public."Mine" ("MineId", "Name", "Coordinates", "DocumentPath", "SubsidiaryId") FROM stdin;
    public          postgres    false    217   G�       �          0    29742    Objects 
   TABLE DATA           ]   COPY public."Objects" ("ObjectsId", "Name", "Coordinates", "MineId", "RegionId") FROM stdin;
    public          postgres    false    221   ��       �          0    29990    Objects_TransportType 
   TABLE DATA           l   COPY public."Objects_TransportType" ("Objects_TransportTypeId", "ObjectsId", "TransportTypeId") FROM stdin;
    public          postgres    false    261   ��       �          0    29736    Region 
   TABLE DATA           6   COPY public."Region" ("RegionId", "Name") FROM stdin;
    public          postgres    false    219   ��       �          0    29880    Storage 
   TABLE DATA           a   COPY public."Storage" ("StorageId", "Name", "RegionId", "Address", "ManufacturerId") FROM stdin;
    public          postgres    false    245   =�       �          0    29896    Storage_ConstructionUnit 
   TABLE DATA           �   COPY public."Storage_ConstructionUnit" ("Storage_ConstructionUnitId", "StorageId", "ConstructionUnitId", "PricePerUnit", "DocumentPath", "TablePath") FROM stdin;
    public          postgres    false    247   ��       �          0    29717 
   Subsidiary 
   TABLE DATA           >   COPY public."Subsidiary" ("SubsidiaryId", "Name") FROM stdin;
    public          postgres    false    215   A�       �          0    29953 	   Transport 
   TABLE DATA           O   COPY public."Transport" ("TransportId", "TransportModeId", "Name") FROM stdin;
    public          postgres    false    257   ��       �          0    29937    TransportFleet 
   TABLE DATA           j   COPY public."TransportFleet" ("TransportFleetId", "Name", "Address", "CompanyId", "RegionId") FROM stdin;
    public          postgres    false    255   ��       �          0    29964    TransportFleet_Transport 
   TABLE DATA           �   COPY public."TransportFleet_Transport" ("TransportFleet_TransportId", "TransportFleetId", "TransportId", "AverageSpeed", "CoefficientTypeId", "CoefficientValue") FROM stdin;
    public          postgres    false    259   ��       �          0    29920    TransportMode 
   TABLE DATA           W   COPY public."TransportMode" ("TransportModeId", "Name", "TransportTypeId") FROM stdin;
    public          postgres    false    251   ��       �          0    29914    TransportType 
   TABLE DATA           D   COPY public."TransportType" ("TransportTypeId", "Name") FROM stdin;
    public          postgres    false    249   r�                 0    30028    User 
   TABLE DATA           �   COPY public."User" ("UserId", "UserTypeId", "SubsidiaryId", "Surname", "FirstName", "Patronymic", "Login", "Password", "PhoneNumber", "BirthDate", "PhotoPath", "Token") FROM stdin;
    public          postgres    false    267   ��                  0    30022    UserType 
   TABLE DATA           :   COPY public."UserType" ("UserTypeId", "Name") FROM stdin;
    public          postgres    false    265   ��       	           0    0 %   CoefficientType_CoefficientTypeId_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."CoefficientType_CoefficientTypeId_seq"', 3, true);
          public          postgres    false    252            
           0    0    CompanyType_CompanyTypeId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."CompanyType_CompanyTypeId_seq"', 2, true);
          public          postgres    false    238                       0    0    Company_CompanyId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Company_CompanyId_seq"', 16, true);
          public          postgres    false    240                       0    0 )   ConstructionState_ConstructionStateId_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."ConstructionState_ConstructionStateId_seq"', 4, true);
          public          postgres    false    224                       0    0 /   ConstructionUnitType_ConstructionUnitTypeId_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."ConstructionUnitType_ConstructionUnitTypeId_seq"', 2, true);
          public          postgres    false    228                       0    0 '   ConstructionUnit_ConstructionUnitId_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ConstructionUnit_ConstructionUnitId_seq"', 22, true);
          public          postgres    false    230                       0    0    Construction_ConstructionId_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Construction_ConstructionId_seq"', 8, true);
          public          postgres    false    222                       0    0 #   DeliveryRegion_DeliveryRegionId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."DeliveryRegion_DeliveryRegionId_seq"', 48, true);
          public          postgres    false    262                       0    0 ?   MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq    SEQUENCE SET     p   SELECT pg_catalog.setval('public."MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq"', 48, true);
          public          postgres    false    236                       0    0    MaterialSet_MaterialSetId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."MaterialSet_MaterialSetId_seq"', 11, true);
          public          postgres    false    232                       0    0    MeasureUnit_MeasureUnitId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."MeasureUnit_MeasureUnitId_seq"', 4, true);
          public          postgres    false    234                       0    0    Mine_MineId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Mine_MineId_seq"', 5, true);
          public          postgres    false    216                       0    0 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."Objects_Construction_Objects_ConstructionId_seq"', 20, true);
          public          postgres    false    226                       0    0    Objects_ObjectsId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Objects_ObjectsId_seq"', 10, true);
          public          postgres    false    220                       0    0 1   Objects_TransportType_Objects_TransportTypeId_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."Objects_TransportType_Objects_TransportTypeId_seq"', 20, true);
          public          postgres    false    260                       0    0    Region_RegionId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Region_RegionId_seq"', 5, true);
          public          postgres    false    218                       0    0 7   Storage_ConstructionUnit_Storage_ConstructionUnitId_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."Storage_ConstructionUnit_Storage_ConstructionUnitId_seq"', 59, true);
          public          postgres    false    246                       0    0    Storage_StorageId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Storage_StorageId_seq"', 10, true);
          public          postgres    false    244                       0    0    Subsidiary_SubsidiaryId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Subsidiary_SubsidiaryId_seq"', 1, true);
          public          postgres    false    214                       0    0 #   TransportFleet_TransportFleetId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."TransportFleet_TransportFleetId_seq"', 16, true);
          public          postgres    false    254                       0    0 7   TransportFleet_Transport_TransportFleet_TransportId_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."TransportFleet_Transport_TransportFleet_TransportId_seq"', 48, true);
          public          postgres    false    258                       0    0 !   TransportMode_TransportModeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TransportMode_TransportModeId_seq"', 7, true);
          public          postgres    false    250                       0    0 !   TransportType_TransportTypeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TransportType_TransportTypeId_seq"', 3, true);
          public          postgres    false    248                        0    0    Transport_TransportId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Transport_TransportId_seq"', 14, true);
          public          postgres    false    256            !           0    0    UserType_UserTypeId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."UserType_UserTypeId_seq"', 4, true);
          public          postgres    false    264            "           0    0    User_UserId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."User_UserId_seq"', 4, true);
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
       public            postgres    false    225            �           2606    29764 &   ConstructionType ConstructionType_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ConstructionType"
    ADD CONSTRAINT "ConstructionType_pkey" PRIMARY KEY ("ConstructionTypeId");
 T   ALTER TABLE ONLY public."ConstructionType" DROP CONSTRAINT "ConstructionType_pkey";
       public            postgres    false    223            �           2606    29797 .   ConstructionUnitType ConstructionUnitType_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnitType"
    ADD CONSTRAINT "ConstructionUnitType_pkey" PRIMARY KEY ("ConstructionUnitTypeId");
 \   ALTER TABLE ONLY public."ConstructionUnitType" DROP CONSTRAINT "ConstructionUnitType_pkey";
       public            postgres    false    229            �           2606    29803 &   ConstructionUnit ConstructionUnit_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_pkey" PRIMARY KEY ("ConstructionUnitId");
 T   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_pkey";
       public            postgres    false    231            �           2606    29776    Construction Construction_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_pkey" PRIMARY KEY ("ConstructionId");
 L   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_pkey";
       public            postgres    false    227                       2606    30010 "   DeliveryRegion DeliveryRegion_pkey 
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
       public            postgres    false    217                       2606    29994 0   Objects_TransportType Objects_TransportType_pkey 
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
       public            postgres    false    265            +           2606    29854 "   Company Company_CompanyTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_CompanyTypeId_fkey" FOREIGN KEY ("CompanyTypeId") REFERENCES public."CompanyType"("CompanyTypeId");
 P   ALTER TABLE ONLY public."Company" DROP CONSTRAINT "Company_CompanyTypeId_fkey";
       public          postgres    false    241    3331    239            &           2606    29804 =   ConstructionUnit ConstructionUnit_ConstructionUnitTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey" FOREIGN KEY ("ConstructionUnitTypeId") REFERENCES public."ConstructionUnitType"("ConstructionUnitTypeId");
 k   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey";
       public          postgres    false    229    3321    231            '           2606    30378 4   ConstructionUnit ConstructionUnit_MeasureUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_MeasureUnitId_fkey" FOREIGN KEY ("MeasureUnitId") REFERENCES public."MeasureUnit"("MeasureUnitId") NOT VALID;
 b   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_MeasureUnitId_fkey";
       public          postgres    false    231    235    3327            #           2606    29787 2   Construction Construction_ConstructionStateId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_ConstructionStateId_fkey" FOREIGN KEY ("ConstructionStateId") REFERENCES public."ConstructionState"("ConstructionStateId");
 `   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_ConstructionStateId_fkey";
       public          postgres    false    227    225    3317            $           2606    29782 1   Construction Construction_ConstructionTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_ConstructionTypeId_fkey" FOREIGN KEY ("ConstructionTypeId") REFERENCES public."ConstructionType"("ConstructionTypeId");
 _   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_ConstructionTypeId_fkey";
       public          postgres    false    3315    223    227            %           2606    29777 (   Construction Construction_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 V   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_ObjectsId_fkey";
       public          postgres    false    3313    221    227            ;           2606    30016 +   DeliveryRegion DeliveryRegion_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryRegion"
    ADD CONSTRAINT "DeliveryRegion_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 Y   ALTER TABLE ONLY public."DeliveryRegion" DROP CONSTRAINT "DeliveryRegion_RegionId_fkey";
       public          postgres    false    3311    219    263            <           2606    30011 =   DeliveryRegion DeliveryRegion_TransportFleet_TransportId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryRegion"
    ADD CONSTRAINT "DeliveryRegion_TransportFleet_TransportId_fkey" FOREIGN KEY ("TransportFleet_TransportId") REFERENCES public."TransportFleet_Transport"("TransportFleet_TransportId");
 k   ALTER TABLE ONLY public."DeliveryRegion" DROP CONSTRAINT "DeliveryRegion_TransportFleet_TransportId_fkey";
       public          postgres    false    259    263    3353            -           2606    29874 6   LogisticCompany LogisticCompany_LogisticCompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."LogisticCompany"
    ADD CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey" FOREIGN KEY ("LogisticCompanyId") REFERENCES public."Company"("CompanyId");
 d   ALTER TABLE ONLY public."LogisticCompany" DROP CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey";
       public          postgres    false    243    241    3333            ,           2606    29864 -   Manufacturer Manufacturer_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Company"("CompanyId");
 [   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "Manufacturer_ManufacturerId_fkey";
       public          postgres    false    241    242    3333            (           2606    29815 /   MaterialSet MaterialSet_ConstructionTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet"
    ADD CONSTRAINT "MaterialSet_ConstructionTypeId_fkey" FOREIGN KEY ("ConstructionTypeId") REFERENCES public."ConstructionType"("ConstructionTypeId");
 ]   ALTER TABLE ONLY public."MaterialSet" DROP CONSTRAINT "MaterialSet_ConstructionTypeId_fkey";
       public          postgres    false    223    233    3315            )           2606    29837 Q   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
    ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    231    237    3323            *           2606    29832 L   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_MaterialSetId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey" FOREIGN KEY ("MaterialSetId") REFERENCES public."MaterialSet"("MaterialSetId");
 z   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey";
       public          postgres    false    237    3325    233                        2606    29730    Mine Mine_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mine"
    ADD CONSTRAINT "Mine_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."Mine" DROP CONSTRAINT "Mine_SubsidiaryId_fkey";
       public          postgres    false    217    215    3307            !           2606    29747    Objects Objects_MineId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_MineId_fkey" FOREIGN KEY ("MineId") REFERENCES public."Mine"("MineId");
 I   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_MineId_fkey";
       public          postgres    false    217    3309    221            "           2606    29752    Objects Objects_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 K   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_RegionId_fkey";
       public          postgres    false    219    221    3311            9           2606    29995 :   Objects_TransportType Objects_TransportType_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_TransportType"
    ADD CONSTRAINT "Objects_TransportType_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 h   ALTER TABLE ONLY public."Objects_TransportType" DROP CONSTRAINT "Objects_TransportType_ObjectsId_fkey";
       public          postgres    false    3313    261    221            :           2606    30000 @   Objects_TransportType Objects_TransportType_TransportTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_TransportType"
    ADD CONSTRAINT "Objects_TransportType_TransportTypeId_fkey" FOREIGN KEY ("TransportTypeId") REFERENCES public."TransportType"("TransportTypeId");
 n   ALTER TABLE ONLY public."Objects_TransportType" DROP CONSTRAINT "Objects_TransportType_TransportTypeId_fkey";
       public          postgres    false    261    3343    249            0           2606    29908 I   Storage_ConstructionUnit Storage_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
 w   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    247    3323    231            1           2606    29903 @   Storage_ConstructionUnit Storage_ConstructionUnit_StorageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey" FOREIGN KEY ("StorageId") REFERENCES public."Storage"("StorageId");
 n   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey";
       public          postgres    false    247    245    3339            .           2606    29890 #   Storage Storage_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Manufacturer"("ManufacturerId");
 Q   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_ManufacturerId_fkey";
       public          postgres    false    245    242    3335            /           2606    29885    Storage Storage_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 K   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_RegionId_fkey";
       public          postgres    false    3311    219    245            3           2606    29942 ,   TransportFleet TransportFleet_CompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet"
    ADD CONSTRAINT "TransportFleet_CompanyId_fkey" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");
 Z   ALTER TABLE ONLY public."TransportFleet" DROP CONSTRAINT "TransportFleet_CompanyId_fkey";
       public          postgres    false    3333    255    241            4           2606    29947 +   TransportFleet TransportFleet_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet"
    ADD CONSTRAINT "TransportFleet_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Region"("RegionId");
 Y   ALTER TABLE ONLY public."TransportFleet" DROP CONSTRAINT "TransportFleet_RegionId_fkey";
       public          postgres    false    219    255    3311            6           2606    29979 H   TransportFleet_Transport TransportFleet_Transport_CoefficientTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_CoefficientTypeId_fkey" FOREIGN KEY ("CoefficientTypeId") REFERENCES public."CoefficientType"("CoefficientTypeId");
 v   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_CoefficientTypeId_fkey";
       public          postgres    false    3347    259    253            7           2606    29969 G   TransportFleet_Transport TransportFleet_Transport_TransportFleetId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_TransportFleetId_fkey" FOREIGN KEY ("TransportFleetId") REFERENCES public."TransportFleet"("TransportFleetId");
 u   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_TransportFleetId_fkey";
       public          postgres    false    255    259    3349            8           2606    29974 B   TransportFleet_Transport TransportFleet_Transport_TransportId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportFleet_Transport"
    ADD CONSTRAINT "TransportFleet_Transport_TransportId_fkey" FOREIGN KEY ("TransportId") REFERENCES public."Transport"("TransportId");
 p   ALTER TABLE ONLY public."TransportFleet_Transport" DROP CONSTRAINT "TransportFleet_Transport_TransportId_fkey";
       public          postgres    false    3351    259    257            2           2606    29925 0   TransportMode TransportMode_TransportTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportMode"
    ADD CONSTRAINT "TransportMode_TransportTypeId_fkey" FOREIGN KEY ("TransportTypeId") REFERENCES public."TransportType"("TransportTypeId");
 ^   ALTER TABLE ONLY public."TransportMode" DROP CONSTRAINT "TransportMode_TransportTypeId_fkey";
       public          postgres    false    249    251    3343            5           2606    29958 (   Transport Transport_TransportModeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transport"
    ADD CONSTRAINT "Transport_TransportModeId_fkey" FOREIGN KEY ("TransportModeId") REFERENCES public."TransportMode"("TransportModeId");
 V   ALTER TABLE ONLY public."Transport" DROP CONSTRAINT "Transport_TransportModeId_fkey";
       public          postgres    false    3345    257    251            =           2606    30038    User User_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_SubsidiaryId_fkey";
       public          postgres    false    3307    267    215            >           2606    30033    User User_UserTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_UserTypeId_fkey" FOREIGN KEY ("UserTypeId") REFERENCES public."UserType"("UserTypeId");
 G   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_UserTypeId_fkey";
       public          postgres    false    3359    267    265            �   ,   x�3��p���F��.��2��.6q�� )��M�\1z\\\ �X�      �   r  x����n� �3>�&[GD��>H/��.)�A�ݷ/t0�4i�5���3 yt��B�h�;Af��7��o��F]F��{����z�%���Vipq~&Mՠ�С��-#j�������+��L1� ��!�����Z��������+Y����6��ʲ���Hq�9�]�mP���0<32B�>qk�˾���ˌ�e�Nդp�X5�Yy�WY��'9��+�7U��rR2����c���j�5�դvR<��g<y�ò5B,�C�85ދ��� ���u�	�;���㧅��O�7U�t���ݳ�˺iW�H����ٷ��=^��fsf�٭��O��g�Fߔ�I���tp�ax�KrBi�Pg��RU���x      �   T   x���	�0 �s�
+��1^�)��-�h0��-�v��t�MG*��d=(:��u�ޱ�Fް�LV�E��X*��V���t�3}      �   >  x��S[N�0�^�" um��I��ah����w�ZA�+�ވـ��6�T���;�;3V����E"���k]j%Rk��BZYK-/�������Z�򉯫~���R�z�["�(�����ڙg��H Ct�S��t|1v�BRt)E
�B�ME9C{G��O�{��	�ލV�]��L��L
��m��7����J%��t���̢�Z�h12��2#g�ה2�uDt���G8 H��u��)��ʄS�c��5�Pg�(ۻ�˩���ЍM)@� ͧ���~�Ǹ�^�~f�`�S���.ϝs_����      �   T   x�3�0��/��{/��pa߅M`�>.#��.l
����mh�Ɯ^l� ҍ��L8/̿�Ȅo������ Y�B      �   �   x�e���0D�v� �?UPA�����r6��ia�#vq�lͼ��N�e#�Tx�I�H�W84�L���C��dJ��M���x.WȞYr���=���Gg���ӥ>78J�];��+�������� o/��Z&��������r����HG��$��v      �   �  x��S�Q�0���pL� �PL^�@2t"'8/�����=ٌ���x�{����.s�Nt*^�"'�.��U��3��/+��
dk� ���,�׼nQ�k��)��}�%�K D�#üױ�����c\	z{��T�M��X�Z��]w�<���Q726\V૑���|�I�9B���:3�蓱��Qh�a8iX爿��Y�余E_�@�D�o���Hc�A�$[��o������fîRl�8j=���D��+q���
�N��
,�vX�E;s�s�E@$q	��(�g	|�o���©�qO�C�=�,���B���Ǉ���9>��?���6��S�k\�@�+}Fv+����<�ҿ��J^�bً���$�|�m+��/f;^�C������<�)�L      �   @   x�3估�¾��@�}a��.#�/�
�_�{a��~�L�ņ��v��6p��qqq �!�      �   �   x��ɍD1�3��k�K���u�S��R��fG�.-vk�G�����c�W�<N����1.�ra�t\��=u�炥V.X�`�-l�`����'n��>,]�r��l�`�;Z�W�s��炥V.X�`�-l�Gco����_D���2�      �   W   x�3�0�¾�/��x�	H�_�z��®.�+ �}�\�aÅ�@�~C.#��q��ޘ˄$�&\�$�7�2#I�W� F��      �   a   x��л�0C�O�(�?�0�fv@ "!1��Fd�G�[��i��-�J����;��U.y�6YE4�� u@��:]$��"�A�?�����      �   2   x���  ���s$���A��e�S����&���íw��k^>��W      �   �   x�5��u�0Ϣ�<	Я��_Gv��|�H���6xz7�����tKQMѤ����ܢ]���\x�S8zCtHs���p��!ΏS|�O:��aq8�a�[���=�+L5G��5	�b\%E�S-)�x���$M���H�n��؏�K��m����q�
')�$I��B[��xR]�K	O��f�%$��o�����J�?��7�eP�߿L�i甉�1,+��V�]+�L����� ��L�      �   $   x�3��q��ˈ�®���9��	��\1z\\\ �	
�      �   �   x�}α1F�:���Ȓ�߉o	&�a�9� ng#RWf�O�q�~����7�˛����ᬠ,Z�X��^G�)J���#C-��3��*�dAh��]a�0T��,	BV��ҙҡ�D0GӎÕb�?C�x�      �   �   x�]л1�ڙ���N�ٱ{��dv��a��F	��?���x�o�9^��ଂ��.��dP�x)���'���`����bh�y.��,F6�M�Yi��^�wt��A�ZZf�Ǧr��g�CulDьѺ�b��b�-�yf̐Y�E�}w*h����c����,�| wb��      �   R   x��� 1�ji�Cl��%��q`�PA�B�T�R�����pi�����wb�#)Q��N�1�th��B�P9�������k      �   3   x�3估����/츰��^C.#T#.cTc.T.STS�=... ,�1-      �   u  x����N�@��w�b ��]|�I 1�+E���X�b�R^a��<S$���^4���̶F�W�p�m�Q|Ǳmq�s��Ah�4^f��m۱���WN3�B��m/ �m�C�C���pU��)��i���黼�(0#{�EnP�%W��3g
.��'�;xZB�v}��M�Ř�|�"[�Z�JQM
\l�;�n)��?$�����8�8eJTu�U������۷���,=�a��L����[�tYC5�Y��m���죪'�0�5�5ܔ��z������KJ��k~��7p�e/��*�:�v�6>��B���E��_��P�E5��")'[���No��Vɔ�?D)yl�8D1��Y��3"���      �   o  x�e�ɱ�0C�t1���&~鿎 ���X��q��t<�Z{�&�?�GAL�0�K�`��ؒ(l��F��&jE�H�*7��*����uG2�`�������ӱˬ4H�r�[��㚨��5���'܄𘗇6l�?Y+{��q�E��<��9�K"^X�[w��0�8���b�}>ڎ��7�ٽS#���:���b�8'����0�����dm[7k�6ѳ%zE�@�5��s�H��xc�Q`=a��v�A�]�r#���:ÂG�
��u����0��61����`�v�Mx��W�����R՚�$�ʍ�)�s��~_���4��?���nR�"X9�}�=���!����:����<��      �   9   x�. ��1	Дочернее общество №1
\.


��      �   �   x�]�Mj�0����)�.��/봍!��
R(�L���� ;)��@W9�|�3
l�;z�U��a�Ӂ��c��e�3[/������<K<Z�8���
+���-ӻ.s�����#����I�0���L�Td�!�Ԡ�y���w�En$��)��_�q�c���Y͒>��ߨ<)�!���OzQg�Jʵ���=}�m��H�7I�|[7S�[Te�v�uA���mV�:�\PU7�9eV�,�>������b�      �   �  x����N1��ۧ� B�����D/�$�Ѩ��w�V���o��鲀�4t�tf��N�_%hL�n���]�$��m)�mݥ�S��5���ѡ�(�x�Gk�=RJ-�`O	|����61Z�n�),)|����y�?�K��hcΰ�DV��1pdl�[`�"���o���" 9t�CKQ���ʖ4�%�(��^#lΔ��P�2r�#�~0&2�΋�q�=� *;v�c������a��c��[�U�"�� 7��a�fc�t�!�tК�Yٰ_r�U��G}9��W���� �,�<�j
���g��?=���F֖h���.��-�M��:A��
s��7�P*���{G��z`��=��t��-�bf' !X`���
%>��8��F_�L��7L��T��{����?�$B^���rIL�<�����yG�.q�B]��
w�����FT��T���5O�y��8Еyl8��-B�"yV�R��7�      �   )  x�]�k��0��a��+�w���c��Qg˒�&��G41<{ �:�K+��64�LY��Ԃ(�:7N��56���]�W7Ė�;�P�$���DR6{��Q�F�@W�yk�'5x�,O$�����Z���n6[�ډ�xӲD�K;�X�i�T��&w�,�F%��߸N����0<!�yj�xob�����|�}s���b2s���GCnc��rj���o���j��Ǝ)=������;6�<&>���n���y65��OX�7}f'z|^�}�	����N�\L5�inj\�������X�c�      �   �   x�uOI�0<O^�X�|�� =X��B"��������%U��=�L�m�E�����Q��,$�H��1KiJ�L�q��pZ�r�H�b�$�=Q�p/��O&��u�n8�vh���/��[�ɼ�3w�ͥܞW�s�޵��.�vҁ�$��yg�y���8      �   7   x�3�0�¾�/l��|���ދ�vrq^�{aPp�=P!c��-Pn� {E#o           x����J�@ ���U$���?��R��^v�U�h$m�ܪ"<y�P���V��0�Fn��=�ff�1B�3.����m�3ŕ ��t����0�i��kM �fh�p�Zi�dC�xƸ�N9d�J!�Mɞ�Z+�����iu��q�(%i�Z������ma/�����y�܇�5~��^��'y�M�Np�kFgP�Top���?��X��+\�o��vbFy�wř+;_��qx��1�6��7a=[ݼ.�`�_;M�����Gf4>��ޗ�	�i���Q����          T   x�Mʻ�0 ����8�dJ
V@� (BV8o��h�x�V�ع(���,�Y�Z�N���7;��B�?��AX9-�|lI�FU_�Z5�     