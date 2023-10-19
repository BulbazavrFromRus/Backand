PGDMP                     	    {            main_bd    15.2    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    29033    main_bd    DATABASE     {   CREATE DATABASE main_bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE main_bd;
                postgres    false            �            1259    29585    CoefficientType    TABLE        CREATE TABLE public."CoefficientType" (
    "CoefficientTypeId" integer NOT NULL,
    "Name" character varying(30) NOT NULL
);
 %   DROP TABLE public."CoefficientType";
       public         heap    postgres    false            �            1259    29584 %   CoefficientType_CoefficientTypeId_seq    SEQUENCE     �   ALTER TABLE public."CoefficientType" ALTER COLUMN "CoefficientTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CoefficientType_CoefficientTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    253            �            1259    29508    Company    TABLE     �   CREATE TABLE public."Company" (
    "CompanyId" integer NOT NULL,
    "PhoneNumber" character varying(20),
    "Email" character varying(50),
    "Url" character varying(200),
    "CompanyTypeId" integer
);
    DROP TABLE public."Company";
       public         heap    postgres    false            �            1259    29591    CompanyTransport    TABLE     5  CREATE TABLE public."CompanyTransport" (
    "CompanyTransportId" integer NOT NULL,
    "TransportModeId" integer,
    "CompanyId" integer,
    "BrandName" character varying(50) NOT NULL,
    "ModelName" character varying(80) NOT NULL,
    "CoefficientTypeId" integer,
    "CoefficientValue" real NOT NULL
);
 &   DROP TABLE public."CompanyTransport";
       public         heap    postgres    false            �            1259    29590 '   CompanyTransport_CompanyTransportId_seq    SEQUENCE       ALTER TABLE public."CompanyTransport" ALTER COLUMN "CompanyTransportId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CompanyTransport_CompanyTransportId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    255            �            1259    29502    CompanyType    TABLE     x   CREATE TABLE public."CompanyType" (
    "CompanyTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 !   DROP TABLE public."CompanyType";
       public         heap    postgres    false            �            1259    29501    CompanyType_CompanyTypeId_seq    SEQUENCE     �   ALTER TABLE public."CompanyType" ALTER COLUMN "CompanyTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CompanyType_CompanyTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            �            1259    29507    Company_CompanyId_seq    SEQUENCE     �   ALTER TABLE public."Company" ALTER COLUMN "CompanyId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Company_CompanyId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241            �            1259    29418    Construction    TABLE     �   CREATE TABLE public."Construction" (
    "ConstructionId" integer NOT NULL,
    "ConstructionTypeId" integer,
    "Description" text
);
 "   DROP TABLE public."Construction";
       public         heap    postgres    false            �            1259    29406    ConstructionState    TABLE     z   CREATE TABLE public."ConstructionState" (
    "ConstructionStateId" integer NOT NULL,
    "Name" character varying(50)
);
 '   DROP TABLE public."ConstructionState";
       public         heap    postgres    false            �            1259    29405 )   ConstructionState_ConstructionStateId_seq    SEQUENCE       ALTER TABLE public."ConstructionState" ALTER COLUMN "ConstructionStateId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionState_ConstructionStateId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    29412    ConstructionType    TABLE     �   CREATE TABLE public."ConstructionType" (
    "ConstructionTypeId" integer NOT NULL,
    "Name" character varying(80) NOT NULL
);
 &   DROP TABLE public."ConstructionType";
       public         heap    postgres    false            �            1259    29411 '   ConstructionType_ConstructionTypeId_seq    SEQUENCE       ALTER TABLE public."ConstructionType" ALTER COLUMN "ConstructionTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionType_ConstructionTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    29458    ConstructionUnit    TABLE     �   CREATE TABLE public."ConstructionUnit" (
    "ConstructionUnitId" integer NOT NULL,
    "ConstructionUnitTypeId" integer,
    "Name" character varying(100) NOT NULL,
    "MeasuringUnit" character varying(10) NOT NULL
);
 &   DROP TABLE public."ConstructionUnit";
       public         heap    postgres    false            �            1259    29452    ConstructionUnitType    TABLE     �   CREATE TABLE public."ConstructionUnitType" (
    "ConstructionUnitTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 *   DROP TABLE public."ConstructionUnitType";
       public         heap    postgres    false            �            1259    29451 /   ConstructionUnitType_ConstructionUnitTypeId_seq    SEQUENCE       ALTER TABLE public."ConstructionUnitType" ALTER COLUMN "ConstructionUnitTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionUnitType_ConstructionUnitTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    29457 '   ConstructionUnit_ConstructionUnitId_seq    SEQUENCE       ALTER TABLE public."ConstructionUnit" ALTER COLUMN "ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ConstructionUnit_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    29417    Construction_ConstructionId_seq    SEQUENCE     �   ALTER TABLE public."Construction" ALTER COLUMN "ConstructionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Construction_ConstructionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225                       1259    29612    DeliveryAbility    TABLE     �   CREATE TABLE public."DeliveryAbility" (
    "DeliveryAbilityId" integer NOT NULL,
    "CompanyTransportId" integer,
    "StorageId" integer,
    "ObjectsId" integer
);
 %   DROP TABLE public."DeliveryAbility";
       public         heap    postgres    false                        1259    29611 %   DeliveryAbility_DeliveryAbilityId_seq    SEQUENCE     �   ALTER TABLE public."DeliveryAbility" ALTER COLUMN "DeliveryAbilityId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."DeliveryAbility_DeliveryAbilityId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    257            �            1259    29528    LogisticCompany    TABLE     �   CREATE TABLE public."LogisticCompany" (
    "LogisticCompanyId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 %   DROP TABLE public."LogisticCompany";
       public         heap    postgres    false            �            1259    29518    Manufacturer    TABLE     z   CREATE TABLE public."Manufacturer" (
    "ManufacturerId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 "   DROP TABLE public."Manufacturer";
       public         heap    postgres    false            �            1259    29469    MaterialSet    TABLE     j   CREATE TABLE public."MaterialSet" (
    "MaterialSetId" integer NOT NULL,
    "ConstructionId" integer
);
 !   DROP TABLE public."MaterialSet";
       public         heap    postgres    false            �            1259    29486    MaterialSet_ConstructionUnit    TABLE     �   CREATE TABLE public."MaterialSet_ConstructionUnit" (
    "MaterialSet_ConstructionUnitId" integer NOT NULL,
    "MaterialSetId" integer,
    "ConstructionUnitId" integer,
    "Amount" real
);
 2   DROP TABLE public."MaterialSet_ConstructionUnit";
       public         heap    postgres    false            �            1259    29485 ?   MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq    SEQUENCE     1  ALTER TABLE public."MaterialSet_ConstructionUnit" ALTER COLUMN "MaterialSet_ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �            1259    29468    MaterialSet_MaterialSetId_seq    SEQUENCE     �   ALTER TABLE public."MaterialSet" ALTER COLUMN "MaterialSetId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MaterialSet_MaterialSetId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    29480    MeasureUnit    TABLE     n   CREATE TABLE public."MeasureUnit" (
    "MeasureUnitId" integer NOT NULL,
    "Name" character varying(80)
);
 !   DROP TABLE public."MeasureUnit";
       public         heap    postgres    false            �            1259    29479    MeasureUnit_MeasureUnitId_seq    SEQUENCE     �   ALTER TABLE public."MeasureUnit" ALTER COLUMN "MeasureUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MeasureUnit_MeasureUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    29384    Mine    TABLE     �   CREATE TABLE public."Mine" (
    "MineId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Coordinates" point NOT NULL,
    "SubsidiaryId" integer
);
    DROP TABLE public."Mine";
       public         heap    postgres    false            �            1259    29383    Mine_MineId_seq    SEQUENCE     �   ALTER TABLE public."Mine" ALTER COLUMN "MineId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Mine_MineId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    29395    Objects    TABLE     �   CREATE TABLE public."Objects" (
    "ObjectsId" integer NOT NULL,
    "Name" character varying(100),
    "Coordinates" point NOT NULL,
    "MineId" integer
);
    DROP TABLE public."Objects";
       public         heap    postgres    false            �            1259    29431    Objects_Construction    TABLE     �   CREATE TABLE public."Objects_Construction" (
    "Objects_ConstructionId" integer NOT NULL,
    "ObjectsId" integer,
    "ConstructionId" integer,
    "ConstructionStateId" integer
);
 *   DROP TABLE public."Objects_Construction";
       public         heap    postgres    false            �            1259    29430 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE       ALTER TABLE public."Objects_Construction" ALTER COLUMN "Objects_ConstructionId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Objects_Construction_Objects_ConstructionId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    29394    Objects_ObjectsId_seq    SEQUENCE     �   ALTER TABLE public."Objects" ALTER COLUMN "ObjectsId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Objects_ObjectsId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    29539    Storage    TABLE     �   CREATE TABLE public."Storage" (
    "StorageId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Coordinates" point NOT NULL,
    "Address" character varying(200),
    "ManufacturerId" integer
);
    DROP TABLE public."Storage";
       public         heap    postgres    false            �            1259    29550    Storage_ConstructionUnit    TABLE     �   CREATE TABLE public."Storage_ConstructionUnit" (
    "Storage_ConstructionUnitId" integer NOT NULL,
    "StorageId" integer,
    "ConstructionUnitId" integer,
    "Amount" real NOT NULL,
    "Price" numeric NOT NULL
);
 .   DROP TABLE public."Storage_ConstructionUnit";
       public         heap    postgres    false            �            1259    29549 7   Storage_ConstructionUnit_Storage_ConstructionUnitId_seq    SEQUENCE     !  ALTER TABLE public."Storage_ConstructionUnit" ALTER COLUMN "Storage_ConstructionUnitId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Storage_ConstructionUnit_Storage_ConstructionUnitId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247            �            1259    29538    Storage_StorageId_seq    SEQUENCE     �   ALTER TABLE public."Storage" ALTER COLUMN "StorageId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Storage_StorageId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    245            �            1259    29378 
   Subsidiary    TABLE     l   CREATE TABLE public."Subsidiary" (
    "SubsidiaryId" integer NOT NULL,
    "Name" character varying(80)
);
     DROP TABLE public."Subsidiary";
       public         heap    postgres    false            �            1259    29377    Subsidiary_SubsidiaryId_seq    SEQUENCE     �   ALTER TABLE public."Subsidiary" ALTER COLUMN "SubsidiaryId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Subsidiary_SubsidiaryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    29574    TransportMode    TABLE     �   CREATE TABLE public."TransportMode" (
    "TransportModeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "AvgSpeed" real NOT NULL,
    "TransportTypeId" integer
);
 #   DROP TABLE public."TransportMode";
       public         heap    postgres    false            �            1259    29573 !   TransportMode_TransportModeId_seq    SEQUENCE     �   ALTER TABLE public."TransportMode" ALTER COLUMN "TransportModeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportMode_TransportModeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251            �            1259    29568    TransportType    TABLE     |   CREATE TABLE public."TransportType" (
    "TransportTypeId" integer NOT NULL,
    "Name" character varying(100) NOT NULL
);
 #   DROP TABLE public."TransportType";
       public         heap    postgres    false            �            1259    29567 !   TransportType_TransportTypeId_seq    SEQUENCE     �   ALTER TABLE public."TransportType" ALTER COLUMN "TransportTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TransportType_TransportTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249                       1259    29639    User    TABLE     �  CREATE TABLE public."User" (
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
       public         heap    postgres    false                       1259    29633    UserType    TABLE     h   CREATE TABLE public."UserType" (
    "UserTypeId" integer NOT NULL,
    "Name" character varying(30)
);
    DROP TABLE public."UserType";
       public         heap    postgres    false                       1259    29632    UserType_UserTypeId_seq    SEQUENCE     �   ALTER TABLE public."UserType" ALTER COLUMN "UserTypeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."UserType_UserTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    259                       1259    29638    User_UserId_seq    SEQUENCE     �   ALTER TABLE public."User" ALTER COLUMN "UserId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_UserId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    261            �          0    29585    CoefficientType 
   TABLE DATA           H   COPY public."CoefficientType" ("CoefficientTypeId", "Name") FROM stdin;
    public          postgres    false    253   ��       �          0    29508    Company 
   TABLE DATA           `   COPY public."Company" ("CompanyId", "PhoneNumber", "Email", "Url", "CompanyTypeId") FROM stdin;
    public          postgres    false    241   ��       �          0    29591    CompanyTransport 
   TABLE DATA           �   COPY public."CompanyTransport" ("CompanyTransportId", "TransportModeId", "CompanyId", "BrandName", "ModelName", "CoefficientTypeId", "CoefficientValue") FROM stdin;
    public          postgres    false    255   �       �          0    29502    CompanyType 
   TABLE DATA           @   COPY public."CompanyType" ("CompanyTypeId", "Name") FROM stdin;
    public          postgres    false    239   ��       �          0    29418    Construction 
   TABLE DATA           _   COPY public."Construction" ("ConstructionId", "ConstructionTypeId", "Description") FROM stdin;
    public          postgres    false    225   �       �          0    29406    ConstructionState 
   TABLE DATA           L   COPY public."ConstructionState" ("ConstructionStateId", "Name") FROM stdin;
    public          postgres    false    221   A�       �          0    29412    ConstructionType 
   TABLE DATA           J   COPY public."ConstructionType" ("ConstructionTypeId", "Name") FROM stdin;
    public          postgres    false    223   ��       �          0    29458    ConstructionUnit 
   TABLE DATA           u   COPY public."ConstructionUnit" ("ConstructionUnitId", "ConstructionUnitTypeId", "Name", "MeasuringUnit") FROM stdin;
    public          postgres    false    231   }�       �          0    29452    ConstructionUnitType 
   TABLE DATA           R   COPY public."ConstructionUnitType" ("ConstructionUnitTypeId", "Name") FROM stdin;
    public          postgres    false    229   #�       �          0    29612    DeliveryAbility 
   TABLE DATA           p   COPY public."DeliveryAbility" ("DeliveryAbilityId", "CompanyTransportId", "StorageId", "ObjectsId") FROM stdin;
    public          postgres    false    257   s�       �          0    29528    LogisticCompany 
   TABLE DATA           H   COPY public."LogisticCompany" ("LogisticCompanyId", "Name") FROM stdin;
    public          postgres    false    243   ��       �          0    29518    Manufacturer 
   TABLE DATA           B   COPY public."Manufacturer" ("ManufacturerId", "Name") FROM stdin;
    public          postgres    false    242   ��       �          0    29469    MaterialSet 
   TABLE DATA           J   COPY public."MaterialSet" ("MaterialSetId", "ConstructionId") FROM stdin;
    public          postgres    false    233   �       �          0    29486    MaterialSet_ConstructionUnit 
   TABLE DATA           �   COPY public."MaterialSet_ConstructionUnit" ("MaterialSet_ConstructionUnitId", "MaterialSetId", "ConstructionUnitId", "Amount") FROM stdin;
    public          postgres    false    237   ��       �          0    29480    MeasureUnit 
   TABLE DATA           @   COPY public."MeasureUnit" ("MeasureUnitId", "Name") FROM stdin;
    public          postgres    false    235   ��       �          0    29384    Mine 
   TABLE DATA           Q   COPY public."Mine" ("MineId", "Name", "Coordinates", "SubsidiaryId") FROM stdin;
    public          postgres    false    217   ��       �          0    29395    Objects 
   TABLE DATA           Q   COPY public."Objects" ("ObjectsId", "Name", "Coordinates", "MineId") FROM stdin;
    public          postgres    false    219   l�       �          0    29431    Objects_Construction 
   TABLE DATA           �   COPY public."Objects_Construction" ("Objects_ConstructionId", "ObjectsId", "ConstructionId", "ConstructionStateId") FROM stdin;
    public          postgres    false    227   ��       �          0    29539    Storage 
   TABLE DATA           d   COPY public."Storage" ("StorageId", "Name", "Coordinates", "Address", "ManufacturerId") FROM stdin;
    public          postgres    false    245   `�       �          0    29550    Storage_ConstructionUnit 
   TABLE DATA           �   COPY public."Storage_ConstructionUnit" ("Storage_ConstructionUnitId", "StorageId", "ConstructionUnitId", "Amount", "Price") FROM stdin;
    public          postgres    false    247   ��       �          0    29378 
   Subsidiary 
   TABLE DATA           >   COPY public."Subsidiary" ("SubsidiaryId", "Name") FROM stdin;
    public          postgres    false    215   �       �          0    29574    TransportMode 
   TABLE DATA           c   COPY public."TransportMode" ("TransportModeId", "Name", "AvgSpeed", "TransportTypeId") FROM stdin;
    public          postgres    false    251   n�       �          0    29568    TransportType 
   TABLE DATA           D   COPY public."TransportType" ("TransportTypeId", "Name") FROM stdin;
    public          postgres    false    249   (�       �          0    29639    User 
   TABLE DATA           �   COPY public."User" ("UserId", "UserTypeId", "SubsidiaryId", "Surname", "FirstName", "Patronymic", "Login", "Password", "PhoneNumber", "BirthDate", "PhotoPath", "Token") FROM stdin;
    public          postgres    false    261   o�       �          0    29633    UserType 
   TABLE DATA           :   COPY public."UserType" ("UserTypeId", "Name") FROM stdin;
    public          postgres    false    259   �       �           0    0 %   CoefficientType_CoefficientTypeId_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."CoefficientType_CoefficientTypeId_seq"', 3, true);
          public          postgres    false    252            �           0    0 '   CompanyTransport_CompanyTransportId_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."CompanyTransport_CompanyTransportId_seq"', 21, true);
          public          postgres    false    254            �           0    0    CompanyType_CompanyTypeId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."CompanyType_CompanyTypeId_seq"', 2, true);
          public          postgres    false    238            �           0    0    Company_CompanyId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Company_CompanyId_seq"', 16, true);
          public          postgres    false    240            �           0    0 )   ConstructionState_ConstructionStateId_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."ConstructionState_ConstructionStateId_seq"', 4, true);
          public          postgres    false    220            �           0    0 '   ConstructionType_ConstructionTypeId_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."ConstructionType_ConstructionTypeId_seq"', 8, true);
          public          postgres    false    222            �           0    0 /   ConstructionUnitType_ConstructionUnitTypeId_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."ConstructionUnitType_ConstructionUnitTypeId_seq"', 2, true);
          public          postgres    false    228            �           0    0 '   ConstructionUnit_ConstructionUnitId_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ConstructionUnit_ConstructionUnitId_seq"', 22, true);
          public          postgres    false    230            �           0    0    Construction_ConstructionId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Construction_ConstructionId_seq"', 13, true);
          public          postgres    false    224            �           0    0 %   DeliveryAbility_DeliveryAbilityId_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."DeliveryAbility_DeliveryAbilityId_seq"', 63, true);
          public          postgres    false    256            �           0    0 ?   MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq    SEQUENCE SET     p   SELECT pg_catalog.setval('public."MaterialSet_ConstructionUnit_MaterialSet_ConstructionUnitId_seq"', 49, true);
          public          postgres    false    236            �           0    0    MaterialSet_MaterialSetId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."MaterialSet_MaterialSetId_seq"', 14, true);
          public          postgres    false    232            �           0    0    MeasureUnit_MeasureUnitId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."MeasureUnit_MeasureUnitId_seq"', 4, true);
          public          postgres    false    234            �           0    0    Mine_MineId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Mine_MineId_seq"', 10, true);
          public          postgres    false    216            �           0    0 /   Objects_Construction_Objects_ConstructionId_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."Objects_Construction_Objects_ConstructionId_seq"', 34, true);
          public          postgres    false    226            �           0    0    Objects_ObjectsId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Objects_ObjectsId_seq"', 20, true);
          public          postgres    false    218            �           0    0 7   Storage_ConstructionUnit_Storage_ConstructionUnitId_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."Storage_ConstructionUnit_Storage_ConstructionUnitId_seq"', 59, true);
          public          postgres    false    246            �           0    0    Storage_StorageId_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Storage_StorageId_seq"', 15, true);
          public          postgres    false    244            �           0    0    Subsidiary_SubsidiaryId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Subsidiary_SubsidiaryId_seq"', 1, true);
          public          postgres    false    214            �           0    0 !   TransportMode_TransportModeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TransportMode_TransportModeId_seq"', 7, true);
          public          postgres    false    250            �           0    0 !   TransportType_TransportTypeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TransportType_TransportTypeId_seq"', 3, true);
          public          postgres    false    248            �           0    0    UserType_UserTypeId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."UserType_UserTypeId_seq"', 4, true);
          public          postgres    false    258            �           0    0    User_UserId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."User_UserId_seq"', 1, true);
          public          postgres    false    260                       2606    29589 $   CoefficientType CoefficientType_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."CoefficientType"
    ADD CONSTRAINT "CoefficientType_pkey" PRIMARY KEY ("CoefficientTypeId");
 R   ALTER TABLE ONLY public."CoefficientType" DROP CONSTRAINT "CoefficientType_pkey";
       public            postgres    false    253                       2606    29595 &   CompanyTransport CompanyTransport_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_pkey" PRIMARY KEY ("CompanyTransportId");
 T   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_pkey";
       public            postgres    false    255            �           2606    29506    CompanyType CompanyType_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."CompanyType"
    ADD CONSTRAINT "CompanyType_pkey" PRIMARY KEY ("CompanyTypeId");
 J   ALTER TABLE ONLY public."CompanyType" DROP CONSTRAINT "CompanyType_pkey";
       public            postgres    false    239            �           2606    29512    Company Company_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_pkey" PRIMARY KEY ("CompanyId");
 B   ALTER TABLE ONLY public."Company" DROP CONSTRAINT "Company_pkey";
       public            postgres    false    241            �           2606    29410 (   ConstructionState ConstructionState_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."ConstructionState"
    ADD CONSTRAINT "ConstructionState_pkey" PRIMARY KEY ("ConstructionStateId");
 V   ALTER TABLE ONLY public."ConstructionState" DROP CONSTRAINT "ConstructionState_pkey";
       public            postgres    false    221            �           2606    29416 &   ConstructionType ConstructionType_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ConstructionType"
    ADD CONSTRAINT "ConstructionType_pkey" PRIMARY KEY ("ConstructionTypeId");
 T   ALTER TABLE ONLY public."ConstructionType" DROP CONSTRAINT "ConstructionType_pkey";
       public            postgres    false    223            �           2606    29456 .   ConstructionUnitType ConstructionUnitType_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnitType"
    ADD CONSTRAINT "ConstructionUnitType_pkey" PRIMARY KEY ("ConstructionUnitTypeId");
 \   ALTER TABLE ONLY public."ConstructionUnitType" DROP CONSTRAINT "ConstructionUnitType_pkey";
       public            postgres    false    229            �           2606    29462 &   ConstructionUnit ConstructionUnit_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_pkey" PRIMARY KEY ("ConstructionUnitId");
 T   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_pkey";
       public            postgres    false    231            �           2606    29424    Construction Construction_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_pkey" PRIMARY KEY ("ConstructionId");
 L   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_pkey";
       public            postgres    false    225                       2606    29616 $   DeliveryAbility DeliveryAbility_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_pkey" PRIMARY KEY ("DeliveryAbilityId");
 R   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_pkey";
       public            postgres    false    257            �           2606    29532 $   LogisticCompany LogisticCompany_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."LogisticCompany"
    ADD CONSTRAINT "LogisticCompany_pkey" PRIMARY KEY ("LogisticCompanyId");
 R   ALTER TABLE ONLY public."LogisticCompany" DROP CONSTRAINT "LogisticCompany_pkey";
       public            postgres    false    243            �           2606    29522    Manufacturer Manufacturer_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_pkey" PRIMARY KEY ("ManufacturerId");
 L   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "Manufacturer_pkey";
       public            postgres    false    242            �           2606    29490 >   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_pkey" PRIMARY KEY ("MaterialSet_ConstructionUnitId");
 l   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_pkey";
       public            postgres    false    237            �           2606    29473    MaterialSet MaterialSet_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MaterialSet"
    ADD CONSTRAINT "MaterialSet_pkey" PRIMARY KEY ("MaterialSetId");
 J   ALTER TABLE ONLY public."MaterialSet" DROP CONSTRAINT "MaterialSet_pkey";
       public            postgres    false    233            �           2606    29484    MeasureUnit MeasureUnit_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MeasureUnit"
    ADD CONSTRAINT "MeasureUnit_pkey" PRIMARY KEY ("MeasureUnitId");
 J   ALTER TABLE ONLY public."MeasureUnit" DROP CONSTRAINT "MeasureUnit_pkey";
       public            postgres    false    235            �           2606    29388    Mine Mine_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Mine"
    ADD CONSTRAINT "Mine_pkey" PRIMARY KEY ("MineId");
 <   ALTER TABLE ONLY public."Mine" DROP CONSTRAINT "Mine_pkey";
       public            postgres    false    217            �           2606    29435 .   Objects_Construction Objects_Construction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_pkey" PRIMARY KEY ("Objects_ConstructionId");
 \   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_pkey";
       public            postgres    false    227            �           2606    29399    Objects Objects_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_pkey" PRIMARY KEY ("ObjectsId");
 B   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_pkey";
       public            postgres    false    219            �           2606    29556 6   Storage_ConstructionUnit Storage_ConstructionUnit_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_pkey" PRIMARY KEY ("Storage_ConstructionUnitId");
 d   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_pkey";
       public            postgres    false    247            �           2606    29543    Storage Storage_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_pkey" PRIMARY KEY ("StorageId");
 B   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_pkey";
       public            postgres    false    245            �           2606    29382    Subsidiary Subsidiary_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Subsidiary"
    ADD CONSTRAINT "Subsidiary_pkey" PRIMARY KEY ("SubsidiaryId");
 H   ALTER TABLE ONLY public."Subsidiary" DROP CONSTRAINT "Subsidiary_pkey";
       public            postgres    false    215                       2606    29578     TransportMode TransportMode_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TransportMode"
    ADD CONSTRAINT "TransportMode_pkey" PRIMARY KEY ("TransportModeId");
 N   ALTER TABLE ONLY public."TransportMode" DROP CONSTRAINT "TransportMode_pkey";
       public            postgres    false    251                        2606    29572     TransportType TransportType_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TransportType"
    ADD CONSTRAINT "TransportType_pkey" PRIMARY KEY ("TransportTypeId");
 N   ALTER TABLE ONLY public."TransportType" DROP CONSTRAINT "TransportType_pkey";
       public            postgres    false    249            
           2606    29637    UserType UserType_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserType"
    ADD CONSTRAINT "UserType_pkey" PRIMARY KEY ("UserTypeId");
 D   ALTER TABLE ONLY public."UserType" DROP CONSTRAINT "UserType_pkey";
       public            postgres    false    259                       2606    29606 8   CompanyTransport CompanyTransport_CoefficientTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_CoefficientTypeId_fkey" FOREIGN KEY ("CoefficientTypeId") REFERENCES public."CoefficientType"("CoefficientTypeId");
 f   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_CoefficientTypeId_fkey";
       public          postgres    false    3332    253    255                       2606    29601 0   CompanyTransport CompanyTransport_CompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_CompanyId_fkey" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");
 ^   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_CompanyId_fkey";
       public          postgres    false    241    3318    255                       2606    29596 6   CompanyTransport CompanyTransport_TransportModeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyTransport"
    ADD CONSTRAINT "CompanyTransport_TransportModeId_fkey" FOREIGN KEY ("TransportModeId") REFERENCES public."TransportMode"("TransportModeId");
 d   ALTER TABLE ONLY public."CompanyTransport" DROP CONSTRAINT "CompanyTransport_TransportModeId_fkey";
       public          postgres    false    255    3330    251                       2606    29513 "   Company Company_CompanyTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_CompanyTypeId_fkey" FOREIGN KEY ("CompanyTypeId") REFERENCES public."CompanyType"("CompanyTypeId");
 P   ALTER TABLE ONLY public."Company" DROP CONSTRAINT "Company_CompanyTypeId_fkey";
       public          postgres    false    241    3316    239                       2606    29463 =   ConstructionUnit ConstructionUnit_ConstructionUnitTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ConstructionUnit"
    ADD CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey" FOREIGN KEY ("ConstructionUnitTypeId") REFERENCES public."ConstructionUnitType"("ConstructionUnitTypeId");
 k   ALTER TABLE ONLY public."ConstructionUnit" DROP CONSTRAINT "ConstructionUnit_ConstructionUnitTypeId_fkey";
       public          postgres    false    231    3306    229                       2606    29425 1   Construction Construction_ConstructionTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Construction"
    ADD CONSTRAINT "Construction_ConstructionTypeId_fkey" FOREIGN KEY ("ConstructionTypeId") REFERENCES public."ConstructionType"("ConstructionTypeId");
 _   ALTER TABLE ONLY public."Construction" DROP CONSTRAINT "Construction_ConstructionTypeId_fkey";
       public          postgres    false    223    3300    225                       2606    29617 7   DeliveryAbility DeliveryAbility_CompanyTransportId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_CompanyTransportId_fkey" FOREIGN KEY ("CompanyTransportId") REFERENCES public."CompanyTransport"("CompanyTransportId");
 e   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_CompanyTransportId_fkey";
       public          postgres    false    255    3334    257                        2606    29627 .   DeliveryAbility DeliveryAbility_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 \   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_ObjectsId_fkey";
       public          postgres    false    219    3296    257            !           2606    29622 .   DeliveryAbility DeliveryAbility_StorageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DeliveryAbility"
    ADD CONSTRAINT "DeliveryAbility_StorageId_fkey" FOREIGN KEY ("StorageId") REFERENCES public."Storage"("StorageId");
 \   ALTER TABLE ONLY public."DeliveryAbility" DROP CONSTRAINT "DeliveryAbility_StorageId_fkey";
       public          postgres    false    3324    245    257                       2606    29533 6   LogisticCompany LogisticCompany_LogisticCompanyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."LogisticCompany"
    ADD CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey" FOREIGN KEY ("LogisticCompanyId") REFERENCES public."Company"("CompanyId");
 d   ALTER TABLE ONLY public."LogisticCompany" DROP CONSTRAINT "LogisticCompany_LogisticCompanyId_fkey";
       public          postgres    false    3318    243    241                       2606    29523 -   Manufacturer Manufacturer_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Manufacturer"
    ADD CONSTRAINT "Manufacturer_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Company"("CompanyId");
 [   ALTER TABLE ONLY public."Manufacturer" DROP CONSTRAINT "Manufacturer_ManufacturerId_fkey";
       public          postgres    false    242    3318    241                       2606    29474 +   MaterialSet MaterialSet_ConstructionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet"
    ADD CONSTRAINT "MaterialSet_ConstructionId_fkey" FOREIGN KEY ("ConstructionId") REFERENCES public."Construction"("ConstructionId");
 Y   ALTER TABLE ONLY public."MaterialSet" DROP CONSTRAINT "MaterialSet_ConstructionId_fkey";
       public          postgres    false    233    3302    225                       2606    29496 Q   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
    ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    237    231    3308                       2606    29491 L   MaterialSet_ConstructionUnit MaterialSet_ConstructionUnit_MaterialSetId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit"
    ADD CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey" FOREIGN KEY ("MaterialSetId") REFERENCES public."MaterialSet"("MaterialSetId");
 z   ALTER TABLE ONLY public."MaterialSet_ConstructionUnit" DROP CONSTRAINT "MaterialSet_ConstructionUnit_MaterialSetId_fkey";
       public          postgres    false    233    237    3310                       2606    29389    Mine Mine_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mine"
    ADD CONSTRAINT "Mine_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."Mine" DROP CONSTRAINT "Mine_SubsidiaryId_fkey";
       public          postgres    false    217    3292    215                       2606    29441 =   Objects_Construction Objects_Construction_ConstructionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ConstructionId_fkey" FOREIGN KEY ("ConstructionId") REFERENCES public."Construction"("ConstructionId");
 k   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ConstructionId_fkey";
       public          postgres    false    227    225    3302                       2606    29446 B   Objects_Construction Objects_Construction_ConstructionStateId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ConstructionStateId_fkey" FOREIGN KEY ("ConstructionStateId") REFERENCES public."ConstructionState"("ConstructionStateId");
 p   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ConstructionStateId_fkey";
       public          postgres    false    227    221    3298                       2606    29436 8   Objects_Construction Objects_Construction_ObjectsId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects_Construction"
    ADD CONSTRAINT "Objects_Construction_ObjectsId_fkey" FOREIGN KEY ("ObjectsId") REFERENCES public."Objects"("ObjectsId");
 f   ALTER TABLE ONLY public."Objects_Construction" DROP CONSTRAINT "Objects_Construction_ObjectsId_fkey";
       public          postgres    false    219    227    3296                       2606    29400    Objects Objects_MineId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "Objects_MineId_fkey" FOREIGN KEY ("MineId") REFERENCES public."Mine"("MineId");
 I   ALTER TABLE ONLY public."Objects" DROP CONSTRAINT "Objects_MineId_fkey";
       public          postgres    false    219    217    3294                       2606    29562 I   Storage_ConstructionUnit Storage_ConstructionUnit_ConstructionUnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey" FOREIGN KEY ("ConstructionUnitId") REFERENCES public."ConstructionUnit"("ConstructionUnitId");
 w   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_ConstructionUnitId_fkey";
       public          postgres    false    247    3308    231                       2606    29557 @   Storage_ConstructionUnit Storage_ConstructionUnit_StorageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage_ConstructionUnit"
    ADD CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey" FOREIGN KEY ("StorageId") REFERENCES public."Storage"("StorageId");
 n   ALTER TABLE ONLY public."Storage_ConstructionUnit" DROP CONSTRAINT "Storage_ConstructionUnit_StorageId_fkey";
       public          postgres    false    247    3324    245                       2606    29544 #   Storage Storage_ManufacturerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Storage"
    ADD CONSTRAINT "Storage_ManufacturerId_fkey" FOREIGN KEY ("ManufacturerId") REFERENCES public."Manufacturer"("ManufacturerId");
 Q   ALTER TABLE ONLY public."Storage" DROP CONSTRAINT "Storage_ManufacturerId_fkey";
       public          postgres    false    242    245    3320                       2606    29579 0   TransportMode TransportMode_TransportTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TransportMode"
    ADD CONSTRAINT "TransportMode_TransportTypeId_fkey" FOREIGN KEY ("TransportTypeId") REFERENCES public."TransportType"("TransportTypeId");
 ^   ALTER TABLE ONLY public."TransportMode" DROP CONSTRAINT "TransportMode_TransportTypeId_fkey";
       public          postgres    false    251    249    3328            "           2606    29649    User User_SubsidiaryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_SubsidiaryId_fkey" FOREIGN KEY ("SubsidiaryId") REFERENCES public."Subsidiary"("SubsidiaryId");
 I   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_SubsidiaryId_fkey";
       public          postgres    false    215    261    3292            #           2606    29644    User User_UserTypeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_UserTypeId_fkey" FOREIGN KEY ("UserTypeId") REFERENCES public."UserType"("UserTypeId");
 G   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_UserTypeId_fkey";
       public          postgres    false    259    3338    261            �   ,   x�3��p���F��.��2��.6q�� )��M�\1z\\\ �X�      �   2  x�m��n� F���or㈈��}���*ZR؟�/t��\�����f@�"a���ЊN�ո�h�[_����F�&���k����^B'Z�Բ�I+�ѯ������Фa_Λ9���
���yrI�v�V�BП�($(!@]�mT�O��#�)%�i�ۣގP|[��Xg�lęUKT���g��`��YF��ѻ�m���@�&[gI��]��D�lC����4�B]�y�HtZ�VtA�+����*�tR�ΪYú�P���QQ�E����=���������bV6zV>�`�,g��2��﷪�~���
      �   �  x�=��n�0E�3_�P��^:jm�Z 2�,�!d"f͐%�p��3NZ�(Ι�;�$=�ˣ;��|p������
-)\lv�S�M�~��ہ1�m����s9���̘�
**~��1��d��2-�PSi������6�p���FG���bz�(�<mﳟ�+��������^6��pE�vv���SH�#�b��}f����<�7�u���>�R�G*vvqy�!�M��<�B�Ȩ�C��bJM��������J���ǔ�$kZ��������K�nmPV�h?b�+���4�笍�2�BI"�zv�^�{vEpK���Y��ë�]<��'��]%�G�J�_�����%�B���J��0i��=���`c1��4^t�m��v��g�WǑj��� �_y}��      �   F   x�3�0�bÅ}v\�~a��ra�Ŧ[/���e�ya6Ph3P�(��b���/캰�b?W� 1'5      �      x��X[r�F�&O��7��d;vr��ɔK�Y�Sqʎ�8UI�'UE�	�WX�(�=���<~lq�������i��>��:�&��m]Z�����K�vir�޹�m\YM��}�޺�ݺ�m���7x���y�m������Ucb�-k�y��.�i>H�$kը~�-]��05��\�#�+�{�_-ݝ����<���rW$8t��ӭj_sn�a,�'��b��Of��W0]Ma���Ԗ��k�&xTx.�  ��|���wR} ϱiͳakkh�����խ�,��lU�@Eo����9@����#�[a�44p����:����'�ڂ��(e��~/�	�a��{k�������?%>����N��@1)���dB�BF����c��g������ $�	�E0��8�<��'�ݒ����0r��E%�5��3S�q�P#�]��è����(q�����g�!kp@�ڲD��<n@�J2��?I�[1O�D��T?��U��O``B���pvj����:�A����_<OT w�g6�?�=�7���cj�
0��jK�
����2�L�Z��y;�/7��F�2���<ŨJM�_�Z�V��߁���������]�4ը^b_j��#���hm?"]����Ӟ���7���8q�����j�k�m����1��y��,'1�TA���<+J�61hh<��v�J]����Z*�k���cᚴw�_�Lȥ'Ե�Dfɝ��b��g���>1��V�?R��|�Q��Ǚ'$s�8W���ʓxLr�ɘ�\�7�����JֲX,�]�Nѷ����v�h՝�EX��q���5�޹9�}�@G�[nAh��{�s�H|W
�+ӅҿU������ӎ	zo��1�@�Ouk�%�i�9y;�[,��N-��,JY��g�%]#�����,��%55��h��`��f��e`%O�.�E�n\WS���@:�Y��ܓ��*6�g�+f��60�yz��+y�/_��c6a�bVb����Y7u�Y�>���[{��L�]5� ���(ѣz�,�=ʣ^p��|+�G�n&�<&ԉ��떏��?S��	�z *ΖM�!�}�Ƭ����B ��{_��O��$��q��7~�HKej�UE���Aڬ�:�D3=`�)�)�N�5R�L��L~�$�k�����ynR�]]Z�����r�7oC��&FG��&^�a��H z�a4�w"�F���1�=�W�hc�f�����r�5-`,�GT�E<��Rk��|���iini:0h��mDm����NZ]j\�$��(�Atz��_[����]�RG���Q��G�w5���=���4��ڞ'4�~�w����?}�)�"����@���� 6����f�n+���t����%�I�U�.4�Q�C8ꒂ�y�-�ߌ�!>��?�����~T�R�ap�h���c�V���&�t�i��a	X�o&3
`��ѵ@,����f��8�^�����խۏę��Rk�z��pnX�ص�	�[�1r�+?GO%���w>k������}��b�C�JO(�X��:����k�IIb���h0��6���ƕMK�t�1�Z(���B�륟{%�G��ׁ���Yք��/�$?��>�4����:U;}ѨQb�-�&�<��������G����,����7<��Pwzwx��-��O�!&n�TLsEz��de5U{=���iKE|I r��[�����4���}B����c����Ə�,���<
ށ�
5?�[Q��_�̏�A�?�o�{���v�|��,^[}9�~pd��v����C�2      �   T   x�3�0��/��{/��pa߅M`�>.#��.l
����mh�Ɯ^l� ҍ��L8/̿�Ȅo������ Y�B      �   �   x�mO9�0������y��DD�h(��!��?bl!*
k���3�]�3�f:�
�-J����~Sx����W�F�\�(Y��A��Ń�-��78��61r��Q��E�����J��UG���J����P�FEmo�����r_F'����%f�uG4�<�"�0�L��|s9�%�M�ɵ���Wbyu2��9)�R      �   �  x��S[R�0�NN�0uK�ޅ�4i�e
�p��!}�W�n�JvB�0����#�w��l�p�Y:�+���&�R~iO6�%���i��H0@F��� Fn%R���hPT4'^	Q	*O� ���)�-x�S��y���~��>kQE+����P7}���I;:QY��!� � �����nB=SA��ʺ�����S���������N�5~���C 6h��EwG�x�R���7�PO�DR���e���8��*�]x�nX1�8�4?ftb�bŲ��5��^�24~�u�\�ja�I2L�����Hv �Ű"q����Ք23��m�}���\\��?)��ڽ�U�ޮ`��5� [���U���Q�k�� �t�/�h��F���g�6u��CJ�I�S{��&M�/q�d      �   @   x�3估�¾��@�}a��.#�/�
�_�{a��~�L�ņ��v��6p��qqq �!�      �   5  x�%�ɍ�0C�b1�h���ￎ!e�ؑ(>*nnm�!���6ҎyX|(����p��2w}>ج�qX��µ`C�yޔ��S���=Y�|��逪z��tq���K�nl��j�ɰ=���!��%͂.��v��!)�E�(��p$�9Fb�5&���t�*��|D���e��H�]���0R4K޲_�9�)ȜAC��!�É��oP�\&�\��ߊ*��Ґ����䩉J���C�YT��";�S��B�C6[%�E������%�[��%Z���t���[�MRkp��r��<�`��,�t�����XZ      �   �   x�m�M�0���)8�QQN�a��.�.L4@�%Wxs#�EI�5o�y�MW)Z�x�@KG�)�����5�F��A>z�鄆��S(�9�1�{�4���B;H��P���y��]�A���R�7�c[�q��	&�`�P�'a1�@iܘ8R��&��` cbF�W��(�[������=s�ߧHO���N:�(��3{�2��-����/      �   �   x�m�Y
�@D�gN�w��a4*w�D0`\�+T��rTBb����W]����Y66�/.������
sL�Sq��!�������2�uK�Y�_�} Ɲ�M\[;%��t��f���K���"L����8yAw&�#/�SV�����X��T�g=m�$^r�v�
N/ғ��~�{x���=EC�en'N���hWSX�s1�\�������<�.j�_���      �   :   x��� !��&�-d�+�c����&����.Cfj���Z�i`_��~ۥ�|�,�      �   �   x�%�ۍ1C���B2����X��h���!i�o�/���?�Ԣ��h�~�%�^�J?W��gb[�L�e�*�<gә�l�[�r8���4 �)�����m��E���@TP6�@ǒ�DN���ɇ�a�뎑/��,	[�Q���l@	��[������6S�8��rkT���K)�.v�6Qq���e�I��[�4��1�[�w��27Es����a"p�$�?����s��xK�      �   $   x�3估��f.#N a�ya7�	�Ŏ�M\1z\\\ �t
�      �   b  x��RKN�0];��Hf�q߅ä���,@BBPX��Ҕ���
���P`�E���y�>�|�m��1�����(������5
K^`d��bXj�E%]Iڨ�2-�C����"�����#x������W~��e¬�Q�*/+C�S��t�3�����KP�ta���+QV����`�p>�礶�&��B���i��!e�,��x���-q�F��?h=��H_����Ř��Y���X�BDA�(i
��Q	~�M��^�O����O�ֶ?���z-��¤���۴a�����`�ˉ��*WJey�>��?�c$��y�L]��g�H�^�*	?�,�>��<�      �   2  x�U�An�0E��)���IQ"����Т��4)� I�&M]�c��]����Љۅ[�o����UtK�h�3�Q��&�`���3��u&�Pu�q.N��N�ozz�^Ҟ�]cE�E���E���	��ZC=��h�m��߅�r�'p1�C��3=~H�O��:/YG!�c2(:?��i�O��5�>BmM�l=ưS�u��'J=�#��6�9,��e�01�2�)x��ծ��)x|��3���O&E�}���9m� _�=�^Vń )0�xS=�>͋R�
?�b���i�����TmkE�1�?�ݔu��u������V�s�o<�v��]W��t<n�-"�@񅬔�aBp7�� uD��;�R�5�1�Ǹ�#MU�ms��"��K����E��(RD{���M^�y��0�Z��P�d����H��c�@G��/p�����K��/p�7�"��`��G�=Hӑ}��pp�]m�X�Mr���H�����G����%b�#d�{a�\���:6���p`2D㬫<ޮ۳�v��7�%|Po=�p�R�M2W���(�{��~r2��      �   �   x�=��� C��aNMB��r��q�T:U*�ĉMF���lߢ5�TtG���IO���;�h=a�P^�2$�3(CM�&9��+-I�s��z`{�-�|�I����&;V���VΧ�����F�7ˡe�T�˴%.�$n\���y΃�^��&6o��k�I? +*3      �   %  x��U�RA}���<j�f���_��H@�����B��|�@@!�z��3�Ͱ�H����nϜ���tDEGt7�]����i��m���	��<��ì7��F9fWA=�h�ztH���n8jzqHS�;�����y|G�hF�������B-l�
>�E�~�@��׍�L*m�h�N5[;��D�.�Ǹ�>t��)M�.�4��U7���Ɲ>�����-�-�FK/˙��K��D��v��t�t�f�TBֺ~��V�>��UU<x��X�sׂ�'���M��Q�1P^�*ȇ9i ���r7
�U������Ӈ�tR)�S�'t���X��
cd�SR8�lŗJ!�pl[�J��v��ڧoXb�%&�w���)�yh����4�& ��������f��Z�V׮��	�S�7�·[�㙦��f�#T�3�[��(��/���;���.��_��S���Y��c�H�[�9���D��t���2`@ �X��^R@x���	88��ݬJ�9�烄)\(X�Д��0a��·��Y�le�s�w�fF	H�ќ˵�-��
���I|���5�Z���Ǩ��7�k��ot`<p�J�a+���w0�����Z&�%���Nb���ˑ�	�����t���M�H-�u۠�a�/�����6'Ŝ�R�D��`�)��!��g���O9:H_�����}��� �i���N'�3~ҏMb?�r9l�0Oϟ�4:�
���� 2�ie��Fk×�[{��9K�G{'���,�i(�du]��<�      �   s  x�=R�1���	�*.�d�9BR~�S��4m������6� �۲��x�nos+��*c��&t��=|�D��7��?'�6�1�؏!` 2Wf2K�l�P4�sg/b���Zm�(zW�'�J8|���;�1.j��D��Y�B�����HVKJ���/��g���Y��&i��˷�`N-�e�^" &���=�+��S��}�%Jc�br�~OS�eK���ʑ�w��D���t���N�M��<����N&O����hd�(��3Y:Av�9B�7��]����?4�0x	5���|�v�\
��NK��[�q��=���+���`����w��4 �/�g���i]8h���1�?�7��      �   F   x�3�T�0�¾���^l���b��~��.컰���.콰$0��~a?PHb�£�i�J\1z\\\ i6'7      �   �   x�u���@D��*� �O3)�1�(� ��¸���!
RNk���ؑh�5���h�z�;� /67�ph1`�"��Ă��J��H�j�;�Ñp �-p|[V��^OEk}�Mn�	��?Q�29�V�{�������Q�3|���a֧���D�8;-C�v<�IRHb�c����v      �   7   x�3�0�¾�/l��|���ދ�vrq^�{aPp�=P!c��-Pn� {E#o      �   �   x�U��	1EϓVD�o����`/�M<*�
V`�!{�5��^y��v�����������x_i}8���Yw|ȡ�K{��~�u��MJU	CR�!�D�FT��"����SJ"̄,�_��L�~�� �7�      �   U   x�E���0��a�x�a�$PR�BE�g�F�۵0�qR�(-Y`��mAat����E+L����b�N�9,�|������w17p     