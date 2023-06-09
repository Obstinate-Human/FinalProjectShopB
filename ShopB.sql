PGDMP                          {            ShopB    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    16651    ShopB    DATABASE     {   CREATE DATABASE "ShopB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "ShopB";
                postgres    false            �            1259    16670    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16669    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    217            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    216            �            1259    16677    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16676    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    219            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    218            �            1259    16723    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16722    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    225            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    224            �            1259    16661    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(50) NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16660    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    215            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    214            �            1259    16684    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16706    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16705    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    223            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    222            �            1259    16683    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220                       2604    16673    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16680    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16726 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ~           2604    16664 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16687 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16709    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            *          0    16670    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public          postgres    false    217   .;       ,          0    16677    image 
   TABLE DATA           :   COPY public.image (id, file_name, product_id) FROM stdin;
    public          postgres    false    219   �;       2          0    16723    orders 
   TABLE DATA           d   COPY public.orders (id, count, date_time, number, price, status, person_id, product_id) FROM stdin;
    public          postgres    false    225   ZE       (          0    16661    person 
   TABLE DATA           ;   COPY public.person (id, login, password, role) FROM stdin;
    public          postgres    false    215   >F       .          0    16684    product 
   TABLE DATA           k   COPY public.product (id, date_time, description, price, seller, title, warehouse, category_id) FROM stdin;
    public          postgres    false    221   OG       0          0    16706    product_cart 
   TABLE DATA           A   COPY public.product_cart (id, person_id, product_id) FROM stdin;
    public          postgres    false    223   �M       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    216            @           0    0    image_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.image_id_seq', 155, true);
          public          postgres    false    218            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 9, true);
          public          postgres    false    224            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 5, true);
          public          postgres    false    214            C           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 19, true);
          public          postgres    false    222            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 32, true);
          public          postgres    false    220            �           2606    16675    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    217            �           2606    16682    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    219            �           2606    16728    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            �           2606    16666    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    215            �           2606    16711    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    16692    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    16694 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    16729 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    3206    215    225            �           2606    16700 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    217    3208    221            �           2606    16734 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    221    225    3212            �           2606    16695 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    221    3212    219            �           2606    16717 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    3212    223            �           2606    16712 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    215    223    3206            *   Y   x�uʽ	�0@�:7��:�O#X�؋��A��md����q�M6��he3��-(�h�����P�r����ߺs���"�������gRJ      ,   �	  x�mXK�eˑ�\��@�����6<�+�HK�V��z���-2ﹷ���"�
��anf�f�Λ]&%=�����k*>��]\����Wr���_�"V�<�Z%I��$a���S]ܢo s�q���%��_i�Հӝ��HY��\[�\�'.�F5���(�&ᕓ�'_}����<g͗{�s��Z�.)��ɷ��U6UǕ�Tc�L��'���׼�2�$������G��.!���b$	��+p�*��P�t�����k��.�)F���s��xr��}a�%��ۿ������?�����=�Uu^�S��xP�\Z�m�2�*]�D�8ŵ۔}��h�๡G}+2�n���g��`���� K��N<LY>{��8z4�>j��d�J������;Z��{�v���+:�1}$��F�9Sk��9!���u�≋>���8{mD���6��\VI�휞�XEr�D8�Ϙ�=��
J(�Z9��9�\{�:cJ�R�8q����Z{ps�\-�W?��T{O�px�Ժ{*Mp��J�7����?��Ǘ��&�S�8V��(��j���\7��ߓkJ�h<S�䉛���^{,~��_�O=�i@ #�	
�5��'�)�~N��gc^5�n�d�w�ْ-��J����Y<��^��EI�/��RR��8��v���_���A�Ex�Z���S[���6+7.����}���:p�F���N<Ts�My�C����j�yC�rd:��ڐ�9W����lO\���i*��~t&�L��V���G_2��9�Z�@�J�G����U���E:�:���(Ls��E�%��Q7��(���eI>�J[ڮ�V�KP}����L$�΀���<�2E+���˳�^K�ʋ�m?3�q��,�kl��a��[	���vm� N�|�@(���'�I�����xv�Y*b�a1ڡd�HAPdR��|������׮�@+5�:x��V*�f���|�ă.ׂ�Ic��f\��',;�^ru�ʍ+�?�Um�hs����-������\����y���;ڜHR�D����Q�
�nX)�v*
���1��0 &h�?���.�^�X�^�*�ܝZ3F�j7�^@�֮,(�z0S9��a(��n/���z�,M�c�|i�0]9M�7+�>�/�]��w����K��1��To��A�k&!<�g����K��y	dtT �V��8WZ�)��C`?k8���<,
�;�l�my�(È�|���^5��,:MТBxp����Z�!f��~��%_6v��GZm����W�֧�e3דW�rq��9���~��>��ܑ3M�M���2���v��g?�DC,��n�"H������3�@�!Z�?��l��"а_G|��o���P�6�x�+"+�:�q��#�~�'���!�n|�􌘹�ԨH����Ю�~/kz�\������Uo��E-���$��<��>�U*Nm|��u�z1A�F��5(�j��Y�y�_�:"�?�(N�uk�����9NNg���^
�nHt�'��0��^�˳�B����R��������s6��F�W���
l@ώ�*㐧I�!����A!E�lW7Xj�|+��y̽e���"�k�O5��Qs@�Aب��A,�� 5����M���!W�<-�Tua�����T[��A�.�5�O�Ы�%��8H~ԙ|@�T�x:f�����9숉
�ĳ&�.��'b�"�+.�����C�5�`3T H�G���q,���WF;�~���)�E4V�G1/|n5''�,b��e�}S#�j�d'D��@���,��Vh�c��c��jp�f^{"�!'�j�D��(uj$��=�Z_5�&@��)"<7�] �pcx��$vF[��������9���&tvN�+l�Υ�(�75ʫ_�ʐ����!�y���\�S�w��R_5�j�j(Y�QN��б�]eA��73Wo��z�h5�_+r0��a�j�*�jm��M?�s�e0k�)��x�kyڍ	) +
��0z�@�F��m���Y �A��a
��c`U��Fy��7�h��&�B�x��*�n$㽆ЫF\3B�"W����Ć��2L��"�׸9��������l0����4ԑZ�L�����]��L<i�G�����N(9���o��\̈�rR��QCxZ=���`��nz�.߁Z���|��I�0�� ] ����g�D��C)�q�O �'�!H=�;�a�1�1�_�X��Xig>���36r_����6��q�3����aԵ�����4�b�ݼ$�#Z'`����f�b;#nJ��a/p}�\hbj�5Q�f��a{�@~�j���ӱà���t脀h]�1\n���q9���d5`3\��e԰�IV�����78V�d�1
�}c[A�jA���9ƨo���������
`      2   �   x��ϽM1E�خ�f5�3v-$��	����H^xt�*�,�do�ݰ�^��ie=͟6	l�gR���غ��Z4#c���w��;K7��H��M܌n#���Mo�#�19�7|!���_u�����'�p�#N:F�v�����xn[�-AQn�4��e��?w1��*���⌻��*����C7)��:�!�bػ�(6�����~�Z? �*U      (     x�M��n�0  �g���*�����P
[�,��N�"_o���89
G��w�� ��Ҍ�2���V�����6�)NI��������,dz����_���9�D�����y�.u��Fg0`��5��<����.mTIՈ�TFT�Z����R��e����'?=?�N�	˸��v���0�n��9���|.@yS]?��K�q{8�K��?���E�m�դX���ޅ5�w�4���!
b�� ���:D�W��O���0ia      .   G  x��Z]n�F~�O��L�\��<DO�3��'���I`�Fⷤij(�(K�,K�t�����%��(�ڗD�`H�73�|��ԋ�H��I��0-�C?J��S�H=�s5W5�L�[����_0w���\_���K����%�\
=j��if���P��k��[�!���=��(�ۜz�J�G$F`d�N�e�A�0���:@ȟ�C��T��_��F�w|�R_z2���K�;�X�?�P-�w,��\�i���g�o0l��ߵ�Y̬�B���@3�>ᬕ�Т1><�Ve$�$I�A|�Dc j����o�2�0M����7�g/�w������?wކ�_ę��8 :C��~��H��*�JZ���0�����m�A�[w���/�?Q���1:�C�X7&7x2
���_�@�x"S+M<���Z�\cEt-+���җi��iÊ1<�V8s�KB��d�/��XZ{��HPWr?�fj��3��AS_-��,���<<�:��Ѐ'σ�D�-<V��Yǝp�m��B~�ʔb�ށ�D�|A�+>���XA.�X�x�� �3�]2�MP3����0�"Ɗ�����&�8N�|ԗ��1��l����pE-�I))M�8�_׀����i�X�
��M��m�k
�N��K�P�QEYߍ��ɖ��oX�ʘ��)�f�W⮙kv3��d_����4ɿ�6W�Q7q�~@d����[&�=G�U���|�#��S^D}ģ�~���~�f4�/�}�0p��:��Mq��͖��P� ��ܰփ��H"�@0-��Xf�dm�S!bͩX�& Ǽ�ꁈ&'@���c�&+��Z�x�0��ʅ�<0�"J#:���u�+�X�C�*�F7z�XT�5{q9Ck|U0Kґ�[[7\KqR{��sR���;����46���f�+���5�zē���!��Y�P�1��|S$8)�M�#ׄ���c���0f�@8�`y�9`k��a�\t3��'b�0RpW-bw>f�e{m���D��a�e
��I��]��/a��V��n�v��e��tv}`��"�c|V�z������J��e�4���õ$6 �uO&q5x�A}͈P�ipm��$kB�4��)WL��j��:2Ɠ���!.Ή���55m����0�o��Fh�����2a�v��R��M��ܲa�8����8����Kr��B*9�s�6��զ���Z�J��h�����2bÕgM^�oo��:�o�2�2�2��,������M��(�a���E�q�� B�h?��$M���#�S���U�G͠'�pmV�HQ�G})I�?����J�:��]�B�1�3��bí�G&�͍�å�mT}��Fzc�؞�߲0�N�!��Q����:��{o�w���(݋^���Uz�Qڎ����Pf]>��_<�~��/����_$�xI�n���I�	{z�~��IY���LU�P�U�P�U�P���*��>$�֓�3A�vA�I��8��tB��0e�/�$<<��b�@sS�62hi�H&N��D�6L��|{a����ˏ{N�O2lkq��<���{�o4^��>6ś��V�I��˩tt�/Z�CS      0      x����".C(#F��� 3�#     