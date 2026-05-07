{\rtf1\ansi\ansicpg1252\cocoartf2869
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red83\green83\blue83;\red24\green24\blue24;\red202\green202\blue202;
\red70\green137\blue204;\red212\green212\blue212;\red100\green117\blue135;\red167\green197\blue152;\red36\green168\blue107;
\red202\green202\blue202;}
{\*\expandedcolortbl;;\cssrgb\c40000\c40000\c40000;\cssrgb\c12157\c12157\c12157;\cssrgb\c83137\c83137\c83137;
\cssrgb\c33725\c61176\c83922;\cssrgb\c86275\c86275\c86275;\cssrgb\c46667\c53333\c60000;\cssrgb\c70980\c80784\c65882;\cssrgb\c14118\c70588\c49412;
\cssrgb\c83137\c83137\c83137;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 -- Mitu rida on sales tabelis?    \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  COUNT\cf6 \strokec6 (\cf7 \strokec7 *\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  ridade_arv \cb1 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  sales\cf6 \strokec6 ;\cf4 \strokec4  \cb1 \
\
\cf2 \cb3 \strokec2 -- Millised veerud ja andmed tabelis on?    \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  sales \cf5 \strokec5 LIMIT\cf4 \strokec4  \cf8 \strokec8 10\cf6 \strokec6 ;\cf4 \strokec4  \cb1 \
\
\cf2 \cb3 \strokec2 -- Tallinna kaupluse m\'fc\'fcgid    \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  sales    \cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  store_location \cf7 \strokec7 =\cf4 \strokec4  \cf9 \strokec9 'Tallinn'\cf4 \strokec4     \cb1 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  BY sale_date \cf5 \strokec5 DESC\cf4 \strokec4     \cb1 \
\cf5 \cb3 \strokec5 LIMIT\cf4 \strokec4  \cf8 \strokec8 15\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 -- Mitu Tallinna tehingut on\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  count\cf6 \strokec6 (\cf7 \strokec7 *\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  sales    \cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  store_location \cf7 \strokec7 =\cf4 \strokec4  \cf9 \strokec9 'Tallinn'\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 -- 10 suurimat tehingut    \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  sales \cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  store_location \cf7 \strokec7 =\cf4 \strokec4  \cf9 \strokec9 'Tallinn'\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  BY total_price \cf5 \strokec5 DESC\cf4 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 LIMIT\cf4 \strokec4  \cf8 \strokec8 10;\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 -- 10 v\'e4iksiemat tehingut\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  sales \cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  store_location \cf7 \strokec7 =\cf4 \strokec4  \cf9 \strokec9 'Tallinn'\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  BY total_price \cf5 \strokec5 ASC\cf4 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 LIMIT\cf4 \strokec4  \cf8 \strokec8 10\cf6 \strokec6 ;\cf4 \strokec4   \cb1 \
\
\cf2 \cb3 \strokec2 -- Mitu rida, kus kliendi info on puudu?    \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  COUNT\cf6 \strokec6 (\cf7 \strokec7 *\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  puuduv_klient\cb1 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  sales\cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  store_location \cf7 \strokec7 =\cf4 \strokec4  \cf9 \strokec9 'Tallinn'\cf4 \strokec4  \cf7 \strokec7 AND\cf4 \strokec4  customer_id \cf7 \strokec7 IS\cf4 \strokec4  \cf7 \strokec7 NULL\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf10 \outl0\strokewidth0 \
\
}