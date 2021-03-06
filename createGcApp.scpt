FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
 * Creates an application shortcut in Google Chrome.
 * It's derived from Bracken King's shell script, who deserves all the credit for the idea, see
 * http://www.lessannoyingsoftware.com/blog/2010/08/149/Create+application+shortcuts+in+Google+Chrome+on+a+Mac
 * I just wanted to make this functionality usable for a couple of friends who never want to see a terminal screen.
 * This is also my first real AppleScript attempt, so many things could probably be optimized, enhanced, etc. Feel free to do so.
 *
 * Mait Vilbiks <happy@hot.ee> @2011-01
 * Provided AS IS, "Public domain", ie. no licence required for anything you do with this, and don't blame me if it doesn't work either.
 * Written and tested on Mac OS X 10.5.8
      � 	 	� 
   *   C r e a t e s   a n   a p p l i c a t i o n   s h o r t c u t   i n   G o o g l e   C h r o m e . 
   *   I t ' s   d e r i v e d   f r o m   B r a c k e n   K i n g ' s   s h e l l   s c r i p t ,   w h o   d e s e r v e s   a l l   t h e   c r e d i t   f o r   t h e   i d e a ,   s e e 
   *   h t t p : / / w w w . l e s s a n n o y i n g s o f t w a r e . c o m / b l o g / 2 0 1 0 / 0 8 / 1 4 9 / C r e a t e + a p p l i c a t i o n + s h o r t c u t s + i n + G o o g l e + C h r o m e + o n + a + M a c 
   *   I   j u s t   w a n t e d   t o   m a k e   t h i s   f u n c t i o n a l i t y   u s a b l e   f o r   a   c o u p l e   o f   f r i e n d s   w h o   n e v e r   w a n t   t o   s e e   a   t e r m i n a l   s c r e e n . 
   *   T h i s   i s   a l s o   m y   f i r s t   r e a l   A p p l e S c r i p t   a t t e m p t ,   s o   m a n y   t h i n g s   c o u l d   p r o b a b l y   b e   o p t i m i z e d ,   e n h a n c e d ,   e t c .   F e e l   f r e e   t o   d o   s o . 
   * 
   *   M a i t   V i l b i k s   < h a p p y @ h o t . e e >   @ 2 0 1 1 - 0 1 
   *   P r o v i d e d   A S   I S ,   " P u b l i c   d o m a i n " ,   i e .   n o   l i c e n c e   r e q u i r e d   f o r   a n y t h i n g   y o u   d o   w i t h   t h i s ,   a n d   d o n ' t   b l a m e   m e   i f   i t   d o e s n ' t   w o r k   e i t h e r . 
   *   W r i t t e n   a n d   t e s t e d   o n   M a c   O S   X   1 0 . 5 . 8 
     
  
 l     ��������  ��  ��        l     ����  r         m        �      o      ���� 0 err  ��  ��        l     ��������  ��  ��        l     ��  ��    ) # find the Google Chrome application     �   F   f i n d   t h e   G o o g l e   C h r o m e   a p p l i c a t i o n      l    ����  r        c         n     ! " ! 1   	 ��
�� 
psxp " l   	 #���� # I   	�� $��
�� .earsffdralis        afdr $ m     % %�                                                                                  rimZ   alis    l  Macintosh HD               �GV�H+   �(Google Chrome.app                                              �2N�As        ����  	                net     �G,v      �AV�     �(     /Macintosh HD:Applications:net:Google Chrome.app   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  "Applications/net/Google Chrome.app  / ��  ��  ��  ��     m    ��
�� 
ctxt  o      ���� "0 gchromeorigpath gChromeOrigPath��  ��     & ' & l     �� ( )��   ( D > parse the folder of the app, this is where we put the new app    ) � * * |   p a r s e   t h e   f o l d e r   o f   t h e   a p p ,   t h i s   i s   w h e r e   w e   p u t   t h e   n e w   a p p '  + , + l   $ -���� - r    $ . / . I    "�� 0���� 0 dirname   0  1�� 1 e     2 2 c     3 4 3 n     5 6 5 7   �� 7 8
�� 
cha  7 m    ����  8 m    ������ 6 o    ���� "0 gchromeorigpath gChromeOrigPath 4 m    ��
�� 
TEXT��  ��   / o      ���� 0 gapproot gAppRoot��  ��   ,  9 : 9 l     �� ; <��   ; 0 * the full path to Google Chrome executable    < � = = T   t h e   f u l l   p a t h   t o   G o o g l e   C h r o m e   e x e c u t a b l e :  > ? > l  % , @���� @ r   % , A B A n   % * C D C 1   ( *��
�� 
strq D l  % ( E���� E b   % ( F G F o   % &���� "0 gchromeorigpath gChromeOrigPath G m   & ' H H � I I 8 C o n t e n t s / M a c O S / G o o g l e   C h r o m e��  ��   B o      ���� 0 gchromepath gChromePath��  ��   ?  J K J l     ��������  ��  ��   K  L M L l     �� N O��   N . ( ask for the name of the new application    O � P P P   a s k   f o r   t h e   n a m e   o f   t h e   n e w   a p p l i c a t i o n M  Q R Q l  - 0 S���� S r   - 0 T U T m   - . V V � W W   U o      ���� 0 gappname gAppName��  ��   R  X Y X l  1 8 Z���� Z r   1 8 [ \ [ m   1 4 ] ] � ^ ^ L W h a t   s h o u l d   t h e   A p p l i c a t i o n   b e   c a l l e d ? \ o      ���� 0 gappnametxt gAppNameTxt��  ��   Y  _ ` _ l  9 � a���� a W   9 � b c b k   C � d d  e f e r   C V g h g l  C T i���� i n   C T j k j 1   P T��
�� 
ttxt k l  C P l���� l I  C P�� m n
�� .sysodlogaskr        TEXT m o   C F���� 0 gappnametxt gAppNameTxt n �� o��
�� 
dtxt o m   I L p p � q q  ��  ��  ��  ��  ��   h o      ���� 0 gappname gAppName f  r�� r Z   W � s t���� s >  W \ u v u o   W X���� 0 gappname gAppName v m   X [ w w � x x   t Z   _ � y z���� y I   _ t�� {����  0 checkexistence CheckExistence {  |�� | 4   ` p�� }
�� 
psxf } l  d o ~���� ~ b   d o  �  b   d k � � � b   d i � � � o   d e���� 0 gapproot gAppRoot � m   e h � � � � �  / � o   i j���� 0 gappname gAppName � m   k n � � � � �  . a p p��  ��  ��  ��   z O   w � � � � k   } � � �  � � � r   } � � � � b   } � � � � b   } � � � � m   } � � � � � � . a n   A p p l i c a t i o n   c a l l e d   " � o   � ����� 0 gappname gAppName � m   � � � � � � � T "   a l r e a d y   e x i s t s ,   c h o o s e   a   d i f f e r e n t   n a m e . � o      ���� 0 gappnametxt gAppNameTxt �  ��� � r   � � � � � m   � � � � � � �   � o      ���� 0 gappname gAppName��   � m   w z � ��                                                                                  MACS   alis    r  Macintosh HD               �GV�H+     t
Finder.app                                                       s��> �        ����  	                CoreServices    �G,v      �=��       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��  ��  ��   c >  = B � � � o   = >���� 0 gappname gAppName � m   > A � � � � �  ��  ��   `  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    make the folder structure    � � � � 4   m a k e   t h e   f o l d e r   s t r u c t u r e �  � � � l  � � ����� � Q   � � � ��� � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  r m   - r f   / t m p / � I   � ��� ����� 0 replacetext ReplaceText �  � � � o   � ����� 0 gappname gAppName �  � � � m   � � � � � � �    �  ��� � m   � � � � � � �  \  ��  ��  ��   �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  r m   - r f   / t m p / � I   � ��� ����� 0 replacetext ReplaceText �  � � � b   � � � � � o   � ����� 0 gappname gAppName � m   � � � � � � �  . a p p �  � � � m   � � � � � � �    �  ��� � m   � � � � � � �  \  ��  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   �  � � � l  �� ����� � O   �� � � � k   �� � �  � � � r   � � � � I  � ���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � l  � � ����� � 4   � ��� �
�� 
psxf � m   � � � � � � �  / t m p��  ��   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � o   � ����� 0 gappname gAppName��  ��   � o      ���� 0 
gappfolder 
gAppFolder �  � � � r  ' � � � I #���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m  	��
�� 
cfol � �� � �
�� 
insh � o  ���� 0 
gappfolder 
gAppFolder � �� ��
�� 
prdt � K   � � �~ ��}
�~ 
pnam � m   � � � � �  C o n t e n t s�}  �   � o      �|�| 0 gcontfolder gContFolder �  � � � I (F�{�z �
�{ .corecrel****      � null�z   � �y � �
�y 
kocl � m  ,/�x
�x 
cfol � �w � �
�w 
insh � o  25�v�v 0 gcontfolder gContFolder � �u ��t
�u 
prdt � K  8@   �s�r
�s 
pnam m  ;> �  R e s o u r c e s�r  �t   �  I Ge�q�p
�q .corecrel****      � null�p   �o
�o 
kocl m  KN�n
�n 
cfol �m	

�m 
insh	 o  QT�l�l 0 gcontfolder gContFolder
 �k�j
�k 
prdt K  W_ �i�h
�i 
pnam m  Z] � 
 M a c O S�h  �j   �g I f��f�e
�f .corecrel****      � null�e   �d
�d 
kocl m  jm�c
�c 
cfol �b
�b 
insh o  ps�a�a 0 gcontfolder gContFolder �`�_
�` 
prdt K  v~ �^�]
�^ 
pnam m  y| �  P r o f i l e�]  �_  �g   � m   � ��                                                                                  MACS   alis    r  Macintosh HD               �GV�H+     t
Finder.app                                                       s��> �        ����  	                CoreServices    �G,v      �=��       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  l     �\�[�Z�\  �[  �Z    l     �Y !�Y      ask for the URL   ! �""     a s k   f o r   t h e   U R L #$# l ��%�X�W% r  ��&'& l ��(�V�U( n  ��)*) 1  ���T
�T 
ttxt* l ��+�S�R+ I ���Q,-
�Q .sysodlogaskr        TEXT, m  ��.. �// W h a t   i s   t h e   w e b   a d d r e s s ?  P r o v i d e   t h e   f u l l   U R L ,   w i t h   h t t p : / /  o r   a   l o c a l   h t m l   f i l e   p a t h   i n   t h e   f o r m  f i l e : / / / U s e r s / m y n a m e / D o c u m e n t s / s o m e f i l e . h t m l- �P0�O
�P 
dtxt0 m  ��11 �22  �O  �S  �R  �V  �U  ' o      �N�N 0 gappurl gAppURL�X  �W  $ 343 l     �M�L�K�M  �L  �K  4 565 l     �J78�J  7  	 App Icon   8 �99    A p p   I c o n6 :;: l ��<�I�H< r  ��=>= n  ��?@? 1  ���G
�G 
psxp@ l ��A�F�EA b  ��BCB l ��D�D�CD c  ��EFE o  ���B�B 0 gcontfolder gContFolderF m  ���A
�A 
TEXT�D  �C  C m  ��GG �HH  R e s o u r c e s : i c o n .�F  �E  > o      �@�@ 0 gappicon gAppIcon�I  �H  ; IJI l �K�?�>K Q  �LMNL k  ��OO PQP r  ��RSR m  ���=
�= boovfalsS o      �<�< 0 goticon gotIconQ T�;T W  ��UVU k  ��WW XYX l ���:Z[�:  Z   ask for an icon image   [ �\\ ,   a s k   f o r   a n   i c o n   i m a g eY ]^] r  ��_`_ I ���9�8a
�9 .sysostdfalis    ��� null�8  a �7bc
�7 
prmpb m  ��dd �ee � S e l e c t   a n   i c o n   f o r   t h e   n e w   a p p ,   i t   m u s t   b e   a   p e r f e c t   s q u a r e   ( w i d t h = h e i g h t )  c l i c k   C a n c e l   t o   u s e   t h e   d e f a u l t   C h r o m e   i c o nc �6fg
�6 
ftypf J  ��hh iji m  ��kk �ll  p u b l i c . j p e gj mnm m  ��oo �pp  p u b l i c . p n gn qrq m  ��ss �tt  p u b l i c . t i f fr u�5u m  ��vv �ww  c o m . a p p l e . i c n s�5  g �4x�3
�4 
lfivx m  ���2
�2 boovfals�3  ` o      �1�1 0 gappiconsrc gAppIconSrc^ yzy O  ��{|{ r  ��}~} n  ��� 1  ���0
�0 
utid� o  ���/�/ 0 gappiconsrc gAppIconSrc~ o      �.�. 0 iconuti iconUTI| m  �����                                                                                  sevs   alis    �  Macintosh HD               �GV�H+     tSystem Events.app                                                ��$s        ����  	                CoreServices    �G,v      ��C       t   0   /  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  z ��-� Z  �����,�� = � ��� o  ���+�+ 0 iconuti iconUTI� m  ���� ���  c o m . a p p l e . i c n s� k  8�� ��� l �*���*  � . ( a ready made icon file, so just copy it   � ��� P   a   r e a d y   m a d e   i c o n   f i l e ,   s o   j u s t   c o p y   i t� ��� I 2�)��(
�) .sysoexecTEXT���     TEXT� b  .��� b  ��� b  ��� m  �� ���  c p   - p  � I  �'��&�' 0 replacetext ReplaceText� ��� n  ��� 1  
�%
�% 
psxp� o  
�$�$ 0 gappiconsrc gAppIconSrc� ��� m  �� ���   � ��#� m  �� ���  \  �#  �&  � m  �� ���   � I  -�"��!�" 0 replacetext ReplaceText� ��� b  #��� o  � �  0 gappicon gAppIcon� m  "�� ���  i c n s� ��� m  #&�� ���   � ��� m  &)�� ���  \  �  �!  �(  � ��� r  38��� m  34�
� boovtrue� o      �� 0 goticon gotIcon�  �,  � k  ;��� ��� l ;;����  � , & image size conversion, saving as TIFF   � ��� L   i m a g e   s i z e   c o n v e r s i o n ,   s a v i n g   a s   T I F F� ��� O  ;���� k  A��� ��� I AF���
� .ascrnoop****      � ****�  �  � ��� r  GR��� I GN���
� .aevtodocnull  �    alis� o  GJ�� 0 gappiconsrc gAppIconSrc�  � o      �� 0 
this_image  � ��� s  Ss��� n  SZ��� 1  VZ�
� 
dmns� o  SV�� 0 
this_image  � J      �� ��� o      �� 0 w W� ��� o      �� 0 h H�  � ��� l tt����  � 5 / not accepting a rectangular image, only square   � ��� ^   n o t   a c c e p t i n g   a   r e c t a n g u l a r   i m a g e ,   o n l y   s q u a r e� ��� Z  t������ = t{��� o  tw�� 0 w W� o  wz�
�
 0 h H� k  ~��� ��� I ~��	��
�	 .icasscalnull���    obj � o  ~��� 0 
this_image  � ���
� 
maxi� m  ���� ��  � ��� I �����
� .coresavealis       obj � o  ���� 0 
this_image  � ���
� 
fltp� m  ���
� typvTIFF� � ���
�  
kfil� b  ����� o  ������ 0 gappicon gAppIcon� m  ���� ���  t i f f��  � ���� r  ����� m  ����
�� boovtrue� o      ���� 0 goticon gotIcon��  �  �  � ���� I �������
�� .coreclosnull���    obj � o  ������ 0 
this_image  ��  ��  � m  ;>���                                                                                  imev   alis    �  Macintosh HD               �GV�H+     tImage Events.app                                                 ��$�        ����  	                CoreServices    �G,v      ��Z       t   0   /  9Macintosh HD:System:Library:CoreServices:Image Events.app   "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��  � ��� l ��������  � !  convert the tiff into icon   � ��� 6   c o n v e r t   t h e   t i f f   i n t o   i c o n� ���� I �������
�� .sysoexecTEXT���     TEXT� b  ��� � b  �� m  �� � & t i f f 2 i c n s   - n o L a r g e   n  �� 1  ����
�� 
strq l ������ b  ��	 o  ������ 0 gappicon gAppIcon	 m  ��

 �  t i f f��  ��    m  �� �    > &   / d e v / n u l l��  ��  �-  V o  ������ 0 goticon gotIcon�;  M R      ��
�� .ascrerr ****      � **** o      ���� 0 errtext errText ��
�� 
errn o      ���� 0 errnum errNum ��
�� 
erob o      ���� 0 frerr frErr ����
�� 
errt o      ���� 0 toerr toErr��  N Z  ��� l ������ = �� o  ������ 0 errnum errNum m  ����������  ��   k  �  l ������   + % Cancel click, so use the Chrome icon    �   J   C a n c e l   c l i c k ,   s o   u s e   t h e   C h r o m e   i c o n !��! I ���"��
�� .sysoexecTEXT���     TEXT" b  ��#$# b  ��%&% b  ��'(' m  ��)) �**  c p   - p  ( n  ��+,+ 1  ����
�� 
strq, l ��-����- b  ��./. n  ��010 1  ����
�� 
psxp1 o  ������ "0 gchromeorigpath gChromeOrigPath/ m  ��22 �33 6 C o n t e n t s / R e s o u r c e s / a p p . i c n s��  ��  & m  ��44 �55   $ n  ��676 1  ����
�� 
strq7 l ��8����8 b  ��9:9 o  ������ 0 gappicon gAppIcon: m  ��;; �<<  i c n s��  ��  ��  ��  ��   r  =>= b  ?@? b  ABA b  CDC b  
EFE m  GG �HH ^ S o m e   e r r o r   o c c u r e d   w h i l e   p r o c e s s i n g   t h e   i m a g e :  F o  	���� 0 errtext errTextD m  
II �JJ    (B o  ���� 0 errnum errNum@ m  KK �LL  )> o      ���� 0 err  �?  �>  J MNM l     ��������  ��  ��  N OPO l ~Q����Q Z  ~RS����R = TUT o  ���� 0 err  U m  VV �WW  S k  zXX YZY l ��[\��  [   write the executable   \ �]] *   w r i t e   t h e   e x e c u t a b l eZ ^_^ r  4`a` b  0bcb b  ,ded b  (fgf b  $hih m  "jj �kk � # ! / b i n / s h 
 i a m = " $ 0 " 
 p r o f D i r = $ ( d i r n a m e   " $ i a m " ) 
 p r o f D i r = $ ( d i r n a m e   " $ p r o f D i r " ) 
 p r o f D i r = " $ p r o f D i r / P r o f i l e " 
 e x e c  i o  "#���� 0 gchromepath gChromePathg m  $'ll �mm    - - a p p = "e o  (+���� 0 gappurl gAppURLc m  ,/nn �oo D "   - - u s e r - d a t a - d i r = " $ p r o f D i r "   " $ @ " 
a o      ���� 0 	gexeccont 	gExecCont_ pqp r  5Drsr b  5@tut b  5>vwv l 5:x����x c  5:yzy o  58���� 0 gcontfolder gContFolderz m  89��
�� 
TEXT��  ��  w m  :={{ �||  M a c O S :u o  >?���� 0 gappname gAppNames o      ���� 0 gexecutable gExecutableq }~} r  ET� I EP����
�� .rdwropenshor       file� o  EH���� 0 gexecutable gExecutable� �����
�� 
perm� m  KL��
�� boovtrue��  � o      ���� 0 fp1  ~ ��� I Ub����
�� .rdwrwritnull���     ****� o  UX���� 0 	gexeccont 	gExecCont� �����
�� 
refn� o  [^���� 0 fp1  ��  � ��� I cj�����
�� .rdwrclosnull���     ****� o  cf���� 0 fp1  ��  � ��� l kk��������  ��  ��  � ��� l kk������  �   set exec permissions   � ��� *   s e t   e x e c   p e r m i s s i o n s� ���� I kz�����
�� .sysoexecTEXT���     TEXT� b  kv��� m  kn�� ���  c h m o d   7 5 5  � n  nu��� 1  su��
�� 
strq� n  ns��� 1  qs��
�� 
psxp� o  nq���� 0 gexecutable gExecutable��  ��  ��  ��  ��  ��  P ��� l     ��������  ��  ��  � ��� l     ������  �   write the Info.plist   � ��� *   w r i t e   t h e   I n f o . p l i s t� ��� l ������� Z  �������� = ���� o  ����� 0 err  � m  ���� ���  � k  ���� ��� r  ����� b  ����� b  ����� m  ���� ���� < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " U T F - 8 " ? > 
 < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > 
 < p l i s t   v e r s i o n = " 1 . 0 " > 
 < d i c t > 
 < k e y > C F B u n d l e E x e c u t a b l e < / k e y > 
 < s t r i n g >� o  ������ 0 gappname gAppName� m  ���� ��� � < / s t r i n g > 
 < k e y > C F B u n d l e I c o n F i l e < / k e y > 
 < s t r i n g > i c o n < / s t r i n g > 
 < / d i c t > 
 < / p l i s t > 
� o      ���� 0 
gplistcont 
gPlistCont� ��� r  ����� I ������
�� .rdwropenshor       file� l �������� b  ����� l �������� c  ����� o  ������ 0 gcontfolder gContFolder� m  ����
�� 
TEXT��  ��  � m  ���� ���  I n f o . p l i s t��  ��  � �����
�� 
perm� m  ����
�� boovtrue��  � o      ���� 0 fp2  � ��� I ������
�� .rdwrwritnull���     ****� o  ������ 0 
gplistcont 
gPlistCont� �����
�� 
refn� o  ������ 0 fp2  ��  � ���� I �������
�� .rdwrclosnull���     ****� o  ������ 0 fp2  ��  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   rename it to final .app   � ��� 0   r e n a m e   i t   t o   f i n a l   . a p p� ��� l �e������ Z  �e������ = ����� o  ���� 0 err  � m  ���� ���  � k  �:�� ��� r  ����� b  ����� o  ���~�~ 0 gappname gAppName� m  ���� ���  . a p p� o      �}�} 0 gapp gApp� ��� O  ���� k  ��� ��� r  ����� o  ���|�| 0 gapp gApp� n      ��� 1  ���{
�{ 
pnam� o  ���z�z 0 
gappfolder 
gAppFolder� ��y� I ��x��
�x .coremoveobj        obj � l ����w�v� c  ����� 4  ���u�
�u 
psxf� l ����t�s� b  ����� m  ���� �   
 / t m p /� o  ���r�r 0 gapp gApp�t  �s  � m  ���q
�q 
alis�w  �v  � �p�o
�p 
insh 4  ��n
�n 
cfol l  �m�l c    4   
�k
�k 
psxf l 	�j�i b  		 o  �h�h 0 gapproot gAppRoot	 m  

 �  /�j  �i   m  
�g
�g 
alis�m  �l  �o  �y  � m  ���                                                                                  MACS   alis    r  Macintosh HD               �GV�H+     t
Finder.app                                                       s��> �        ����  	                CoreServices    �G,v      �=��       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  l �f�e�d�f  �e  �d    l �c�c     tell user we're done    � *   t e l l   u s e r   w e ' r e   d o n e �b I :�a
�a .sysodlogaskr        TEXT b  & b  " b    b   b    o  �`�` 0 gapproot gAppRoot  m  !! �""  / o  �_�_ 0 gappname gAppName m  ## �$$ � . a p p   i s   r e a d y 
 
 Y o u   c a n   m o v e   t h i s   n e w   a p p   t o   a n y   c o n v i n i e n t   f o l d e r . 
 
 N O T E ! !   i f   y o u   m o v e   t h e   G o o g l e   C h r o m e . a p p   a w a y   f r o m   o   !�^�^ 0 gapproot gAppRoot m  "%%% �&& � / ,   t h i s   n e w   a p p   s h o r t c u t   w i l l   s t o p   w o r k i n g   a n d   y o u ' l l   h a v e   t o   r e m a k e   i t   a g a i n . �]'(
�] 
btns' J  ).)) *�\* m  ),++ �,,  O K�\  ( �[-�Z
�[ 
dflt- m  14.. �//  O K�Z  �b  ��  � k  =e00 121 O =K343 I CJ�Y5�X
�Y .coredeloobj        obj 5 o  CF�W�W 0 
gappfolder 
gAppFolder�X  4 m  =@66�                                                                                  MACS   alis    r  Macintosh HD               �GV�H+     t
Finder.app                                                       s��> �        ����  	                CoreServices    �G,v      �=��       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  2 7�V7 I Le�U89
�U .sysodlogaskr        TEXT8 b  LQ:;: o  LM�T�T 0 err  ; m  MP<< �== r   C l o s e   t h i s   d i a l o g ,   n o   h a r m   w a s   d o n e ,   b u t   n o   a p p   e i t h e r .9 �S>?
�S 
btns> J  TY@@ A�RA m  TWBB �CC  O K�R  ? �QD�P
�Q 
dfltD m  \_EE �FF  O K�P  �V  ��  ��  � GHG l     �O�N�M�O  �N  �M  H IJI l     �L�K�J�L  �K  �J  J KLK l     �I�H�G�I  �H  �G  L MNM l      �FOP�F  O  
 * functions
    P �QQ  
   *   f u n c t i o n s 
  N RSR l     �E�D�C�E  �D  �C  S TUT l     �B�A�@�B  �A  �@  U VWV l     �?XY�?  X X R http://hohabadu.de/?APPLESCRIPT/Praktische-Handler/Datei-oder-Ordner-vorhanden%3F   Y �ZZ �   h t t p : / / h o h a b a d u . d e / ? A P P L E S C R I P T / P r a k t i s c h e - H a n d l e r / D a t e i - o d e r - O r d n e r - v o r h a n d e n % 3 FW [\[ i     ]^] I      �>_�=�>  0 checkexistence CheckExistence_ `�<` o      �;�; 60 fileorfoldertocheckstring FileOrFolderToCheckString�<  �=  ^ Q     abca k    dd efe 4    �:g
�: 
alisg o    �9�9 60 fileorfoldertocheckstring FileOrFolderToCheckStringf h�8h L   	 ii m   	 
�7
�7 boovtrue�8  b R      �6�5�4
�6 .ascrerr ****      � ****�5  �4  c L    jj m    �3
�3 boovfals\ klk l     �2�1�0�2  �1  �0  l mnm l     �/op�/  o / ) http://www.alecjacobson.com/weblog/?p=49   p �qq R   h t t p : / / w w w . a l e c j a c o b s o n . c o m / w e b l o g / ? p = 4 9n rsr i    tut I      �.v�-�. 0 last_offset  v wxw o      �,�, 0 the_text  x y�+y o      �*�* 0 char  �+  �-  u k     >zz {|{ Q     ;}~} k    1�� ��� r    
��� I   �)��(
�) .corecnte****       ****� o    �'�' 0 the_text  �(  � o      �&�& 0 len  � ��� r    ��� c    ��� n    ��� 1    �%
�% 
rvse� n    ��� 2   �$
�$ 
cha � o    �#�# 0 the_text  � m    �"
�" 
TEXT� o      �!�! 0 reversed  � ��� r    $��� [    "��� \     ��� o    � �  0 len  � l   ���� I   ���
� .sysooffslong    ��� null�  � ���
� 
psof� o    �� 0 char  � ���
� 
psin� o    �� 0 reversed  �  �  �  � m     !�� � o      �� 0 last_occurrence  � ��� Z   % 1����� ?   % (��� o   % &�� 0 last_occurrence  � o   & '�� 0 len  � L   + -�� m   + ,��  �  �  �  ~ R      ���
� .ascrerr ****      � ****�  �   L   9 ;�� m   9 :��  | ��
� L   < >�� o   < =�	�	 0 last_occurrence  �
  s ��� l     ����  �  �  � ��� l     ����  � / ) http://www.alecjacobson.com/weblog/?p=52   � ��� R   h t t p : / / w w w . a l e c j a c o b s o n . c o m / w e b l o g / ? p = 5 2� ��� i    ��� I      ���� 0 dirname  � ��� o      �� 0 the_path  �  �  � k     \�� ��� r     	��� I     � ����  0 last_offset  � ��� o    ���� 0 the_path  � ���� m    �� ���  /��  ��  � o      ���� 0 last_occurrence  � ��� Z   
 ������� =  
 ��� o   
 ���� 0 last_occurrence  � m    ����  � L    �� m    �� ���  .��  ��  � ��� Z    #������� =   ��� o    ���� 0 last_occurrence  � m    ���� � L    �� m    �� ���  /��  ��  � ��� Z   $ K������� =  $ +��� o   $ %���� 0 last_occurrence  � l  % *������ I  % *�����
�� .corecnte****       ****� o   % &���� 0 the_path  ��  ��  ��  � k   . G�� ��� r   . ?��� c   . =��� n   . ;��� 7  / ;����
�� 
cobj� m   3 5���� � l  6 :������ \   6 :��� o   7 8���� 0 last_occurrence  � m   8 9���� ��  ��  � o   . /���� 0 the_path  � m   ; <��
�� 
TEXT� o      ���� 0 the_path  � ���� L   @ G�� I   @ F������� 0 dirname  � ���� o   A B���� 0 the_path  ��  ��  ��  ��  ��  � ���� L   L \�� c   L [��� n   L Y��� 7  M Y����
�� 
cobj� m   Q S���� � l  T X������ \   T X��� o   U V���� 0 last_occurrence  � m   V W���� ��  ��  � o   L M���� 0 the_path  � m   Y Z��
�� 
TEXT��  � ��� l     ��������  ��  ��  � ��� l     ������  � O I http://lists.apple.com/archives/Applescript-users/2005/Nov/msg00008.html   � ��� �   h t t p : / / l i s t s . a p p l e . c o m / a r c h i v e s / A p p l e s c r i p t - u s e r s / 2 0 0 5 / N o v / m s g 0 0 0 0 8 . h t m l� ��� i    ��� I      �� ���� 0 replacetext ReplaceText   o      ���� 0 	thestring 	theString  o      ���� 0 fstring fString �� o      ���� 0 rstring rString��  ��  � k     &  r     	
	 n     1    ��
�� 
txdl 1     ��
�� 
ascr
 o      ���� (0 current_delimiters current_Delimiters  r     o    ���� 0 fstring fString n      1    
��
�� 
txdl 1    ��
�� 
ascr  r     n     2    ��
�� 
citm o    ���� 0 	thestring 	theString o      ���� 0 slist sList  r     o    ���� 0 rstring rString n      1    ��
�� 
txdl 1    ��
�� 
ascr   r    !"! c    #$# o    ���� 0 slist sList$ m    ��
�� 
TEXT" o      ���� 0 	newstring 	newString  %&% r    #'(' o    ���� (0 current_delimiters current_Delimiters( n     )*) 1     "��
�� 
txdl* 1     ��
�� 
ascr& +��+ L   $ &,, o   $ %���� 0 	newstring 	newString��  � -.- l     ��������  ��  ��  . /��/ l     ��������  ��  ��  ��       ��012345��  0 ������������  0 checkexistence CheckExistence�� 0 last_offset  �� 0 dirname  �� 0 replacetext ReplaceText
�� .aevtoappnull  �   � ****1 ��^����67����  0 checkexistence CheckExistence�� ��8�� 8  ���� 60 fileorfoldertocheckstring FileOrFolderToCheckString��  6 ���� 60 fileorfoldertocheckstring FileOrFolderToCheckString7 ������
�� 
alis��  ��  ��  *�/EOeW 	X  f2 ��u����9:���� 0 last_offset  �� ��;�� ;  ������ 0 the_text  �� 0 char  ��  9 ������������ 0 the_text  �� 0 char  �� 0 len  �� 0 reversed  �� 0 last_occurrence  : 
��������������������
�� .corecnte****       ****
�� 
cha 
�� 
rvse
�� 
TEXT
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null��  ��  �� ? 3�j  E�O��-�,�&E�O�*��� kE�O�� jY hW 	X  	jO�3 �������<=���� 0 dirname  �� ��>�� >  ���� 0 the_path  ��  < ������ 0 the_path  �� 0 last_occurrence  = ���������~�}�� 0 last_offset  
�� .corecnte****       ****
� 
cobj
�~ 
TEXT�} 0 dirname  �� ]*��l+ E�O�j  �Y hO�k  �Y hO��j   �[�\[Zk\Z�k2�&E�O*�k+ Y hO�[�\[Zk\Z�k2�&4 �|��{�z?@�y�| 0 replacetext ReplaceText�{ �xA�x A  �w�v�u�w 0 	thestring 	theString�v 0 fstring fString�u 0 rstring rString�z  ? �t�s�r�q�p�o�t 0 	thestring 	theString�s 0 fstring fString�r 0 rstring rString�q (0 current_delimiters current_Delimiters�p 0 slist sList�o 0 	newstring 	newString@ �n�m�l�k
�n 
ascr
�m 
txdl
�l 
citm
�k 
TEXT�y '��,E�O���,FO��-E�O���,FO��&E�O���,FO�5 �jB�i�hCD�g
�j .aevtoappnull  �   � ****B k    eEE  FF  GG  +HH  >II  QJJ  XKK  _LL  �MM  �NN #OO :PP IQQ ORR �SS ��f�f  �i  �h  C �e�d�c�b�e 0 errtext errText�d 0 errnum errNum�c 0 frerr frErr�b 0 toerr toErrD � �a %�`�_�^�]�\�[�Z�Y H�X�W V�V ]�U ��T p�S�R w�Q � ��P � � � � � � ��O�N � � � ��M�L�K�J�I ��H�G�F�E�D ��C.1�BG�A�@�?d�>kosv�=�<�;�:��9�8����������7�6�5�4�3�2�1�0�/�.�-�,�+��*�)
�(T�')24;GIKVjln�&{�%�$�#�"�!� �������������
�!#%�+�.�<BE�a 0 err  
�` .earsffdralis        afdr
�_ 
psxp
�^ 
ctxt�] "0 gchromeorigpath gChromeOrigPath
�\ 
cha 
�[ 
TEXT�Z 0 dirname  �Y 0 gapproot gAppRoot
�X 
strq�W 0 gchromepath gChromePath�V 0 gappname gAppName�U 0 gappnametxt gAppNameTxt
�T 
dtxt
�S .sysodlogaskr        TEXT
�R 
ttxt
�Q 
psxf�P  0 checkexistence CheckExistence�O 0 replacetext ReplaceText
�N .sysoexecTEXT���     TEXT�M  �L  
�K 
kocl
�J 
cfol
�I 
insh
�H 
prdt
�G 
pnam�F 
�E .corecrel****      � null�D 0 
gappfolder 
gAppFolder�C 0 gcontfolder gContFolder�B 0 gappurl gAppURL�A 0 gappicon gAppIcon�@ 0 goticon gotIcon
�? 
prmp
�> 
ftyp�= 
�< 
lfiv
�; .sysostdfalis    ��� null�: 0 gappiconsrc gAppIconSrc
�9 
utid�8 0 iconuti iconUTI
�7 .ascrnoop****      � ****
�6 .aevtodocnull  �    alis�5 0 
this_image  
�4 
dmns
�3 
cobj�2 0 w W�1 0 h H
�0 
maxi�/ �
�. .icasscalnull���    obj 
�- 
fltp
�, typvTIFF
�+ 
kfil
�* .coresavealis       obj 
�) .coreclosnull���    obj �( 0 errtext errTextT ��U
� 
errn� 0 errnum errNumU ��V
� 
erob� 0 frerr frErrV ���
� 
errt� 0 toerr toErr�  �'���& 0 	gexeccont 	gExecCont�% 0 gexecutable gExecutable
�$ 
perm
�# .rdwropenshor       file�" 0 fp1  
�! 
refn
�  .rdwrwritnull���     ****
� .rdwrclosnull���     ****� 0 
gplistcont 
gPlistCont� 0 fp2  � 0 gapp gApp
� 
alis
� .coremoveobj        obj 
� 
btns
� 
dflt
� .coredeloobj        obj �gf�E�O�j �,�&E�O*�[�\[Zk\Zi2�&k+ 	E�O��%�,E�O�E�Oa E` O dh�a _ a a l a ,E�O�a  ;**a �a %�%a %/k+  a  a �%a %E` Oa E�UY hY h[OY��O 2a  *�a !a "m+ #%j $Oa %*�a &%a 'a (m+ #%j $W X ) *hOa  �*a +a ,a -)a a ./a /a 0�la 1 2E` 3O*a +a ,a -_ 3a /a 0a 4la 1 2E` 5O*a +a ,a -_ 5a /a 0a 6la 1 2O*a +a ,a -_ 5a /a 0a 7la 1 2O*a +a ,a -_ 5a /a 0a 8la 1 2UOa 9a a :l a ,E` ;O_ 5�&a <%�,E` =O)fE` >Oh_ >*a ?a @a Aa Ba Ca Da Ea Fva Gfa 1 HE` IOa J _ Ia K,E` LUO_ La M  :a N*_ I�,a Oa Pm+ #%a Q%*_ =a R%a Sa Tm+ #%j $OeE` >Y �a U x*j VO_ Ij WE` XO_ Xa Y,E[a Zk/EQ` [Z[a Zl/EQ` \ZO_ [_ \  2_ Xa ]a ^l _O_ Xa `a aa b_ =a c%a F dOeE` >Y hO_ Xj eUOa f_ =a g%�,%a h%j $[OY��W BX i j�a k  $a l��,a m%�,%a n%_ =a o%�,%j $Y a p�%a q%�%a r%E�O�a s  `a t�%a u%_ ;%a v%E` wO_ 5�&a x%�%E` yO_ ya zel {E` |O_ wa }_ |l ~O_ |j Oa �_ y�,�,%j $Y hO�a �  >a ��%a �%E` �O_ 5�&a �%a zel {E` �O_ �a }_ �l ~O_ �j Y hO�a �  r�a �%E` �Oa  8_ �_ 3a 0,FO*a a �_ �%/a �&a -*a ,*a �a �%/a �&/l �UO�a �%�%a �%�%a �%a �a �kva �a �a F Y *a  	_ 3j �UO�a �%a �a �kva �a �a F  ascr  ��ޭ