FasdUAS 1.101.10   ��   ��    k             l     ��  ��    T N Inspired by & adapted script from midnighttokerkate's Circle Volume Indicator     � 	 	 �   I n s p i r e d   b y   &   a d a p t e d   s c r i p t   f r o m   m i d n i g h t t o k e r k a t e ' s   C i r c l e   V o l u m e   I n d i c a t o r   
  
 l     ��  ��    K E http://www.macosxtips.co.uk/geeklets/system/circle-volume-indicator/     �   �   h t t p : / / w w w . m a c o s x t i p s . c o . u k / g e e k l e t s / s y s t e m / c i r c l e - v o l u m e - i n d i c a t o r /      l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k     �       l     ��  ��    D > Set the path to the directory of the DiskCapacityMeter folder     �   |   S e t   t h e   p a t h   t o   t h e   d i r e c t o r y   o f   t h e   D i s k C a p a c i t y M e t e r   f o l d e r      r         m        �     V / V o l u m e s / r a m d i s k / G e e k t o o l / D i s k C a p a c i t y M e t e r  o      ���� 0 pathname pathName   ! " ! r     # $ # m     % % � & &   / V o l u m e s / r a m d i s k $ o      ���� 0 	pathname2 	pathName2 "  ' ( ' l   ��������  ��  ��   (  ) * ) l   �� + ,��   + > 8 df -hl | grep 'disk0s2' | awk '{sub(/%/, "");print $5}'    , � - - p   d f   - h l   |   g r e p   ' d i s k 0 s 2 '   |   a w k   ' { s u b ( / % / ,   " " ) ; p r i n t   $ 5 } ' *  . / . l   �� 0 1��   0   Substitute % with ""    1 � 2 2 *   S u b s t i t u t e   %   w i t h   " " /  3 4 3 r     5 6 5 c     7 8 7 l    9���� 9 I   �� :��
�� .sysoexecTEXT���     TEXT : m    	 ; ; � < < n d f   - h l   |   g r e p   ' d i s k 0 s 2 '   |   a w k   ' { s u b ( / % / ,   " " ) ; p r i n t   $ 5 } '��  ��  ��   8 m    ��
�� 
long 6 o      ���� 0 	usedspace 	usedSpace 4  = > = l   ��������  ��  ��   >  ? @ ? l   �� A B��   A !  Getting the rounded number    B � C C 6   G e t t i n g   t h e   r o u n d e d   n u m b e r @  D E D r     F G F ]     H I H l    J���� J I   �� K��
�� .sysorondlong        doub K l    L���� L ^     M N M o    ���� 0 	usedspace 	usedSpace N m    ���� ��  ��  ��  ��  ��   I m    ����  G o      ���� 0 	thenumber 	theNumber E  O P O l   ��������  ��  ��   P  Q R Q l   �� S T��   S   Replacing the image    T � U U (   R e p l a c i n g   t h e   i m a g e R  V W V I   /�� X��
�� .sysoexecTEXT���     TEXT X l   + Y���� Y b    + Z [ Z b    ) \ ] \ b    ' ^ _ ^ b    % ` a ` b    # b c b b    ! d e d m     f f � g g  c p   e o     ���� 0 pathname pathName c m   ! " h h � i i 
 / i m g / a o   # $���� 0 	thenumber 	theNumber _ m   % & j j � k k 
 . p n g   ] o   ' (���� 0 	pathname2 	pathName2 [ m   ) * l l � m m  / d i s k . p n g��  ��  ��   W  n o n l  0 0��������  ��  ��   o  p q p l  0 0�� r s��   r  Freeram    s � t t  F r e e r a m q  u v u r   0 5 w x w m   0 1 y y � z z : / V o l u m e s / r a m d i s k / G e e k t o o l / R A M x o      ���� 0 	pathname3 	pathName3 v  { | { r   6 = } ~ } m   6 9   � � �   / V o l u m e s / r a m d i s k ~ o      ���� 0 	pathname4 	pathName4 |  � � � r   > K � � � c   > G � � � l  > E ����� � I  > E�� ���
�� .sysoexecTEXT���     TEXT � m   > A � � � � � � m e m o r y _ p r e s s u r e   |   a w k   ' / S y s t e m - w i d e   m e m o r y   f r e e /   { s u b ( / % / ,   " " ) ; p r i n t   $ 5 } '��  ��  ��   � m   E F��
�� 
long � o      ���� 0 usedram usedRam �  � � � l  L L��������  ��  ��   �  � � � l  L L�� � ���   � !  Getting the rounded number    � � � � 6   G e t t i n g   t h e   r o u n d e d   n u m b e r �  � � � r   L [ � � � ]   L W � � � l  L U ����� � I  L U�� ���
�� .sysorondlong        doub � l  L Q ����� � ^   L Q � � � o   L O���� 0 usedram usedRam � m   O P���� ��  ��  ��  ��  ��   � m   U V����  � o      ���� 0 
thenumber2 
theNumber2 �  � � � l  \ \��������  ��  ��   �  � � � l  \ \�� � ���   �   Replacing the image    � � � � (   R e p l a c i n g   t h e   i m a g e �  � � � I  \ w�� ���
�� .sysoexecTEXT���     TEXT � l  \ s ����� � b   \ s � � � b   \ o � � � b   \ m � � � b   \ i � � � b   \ e � � � b   \ a � � � m   \ _ � � � � �  c p   � o   _ `���� 0 pathname pathName � m   a d � � � � � 
 / i m g / � o   e h���� 0 
thenumber2 
theNumber2 � m   i l � � � � � 
 . p n g   � o   m n���� 0 	pathname2 	pathName2 � m   o r � � � � �  / r a m . p n g��  ��  ��   �  � � � l  x x��������  ��  ��   �  � � � l  x x�� � ���   �  Battery    � � � �  B a t t e r y �  � � � r   x  � � � m   x { � � � � �   / V o l u m e s / r a m d i s k � o      ���� 0 	pathname6 	pathName6 �  � � � r   � � � � � m   � � � � � � � < / V o l u m e s / r a m d i s k / G e e k t o o l / B a t t � o      ���� 0 	pathname5 	pathName5 �  � � � r   � � � � � c   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � : t a i l   - 1   / V o l u m e s / r a m d i s k / b a t 2��  ��  ��   � m   � ���
�� 
long � o      ���� 0 battery Battery �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � !  Getting the rounded number    � � � � 6   G e t t i n g   t h e   r o u n d e d   n u m b e r �  � � � r   � � � � � ]   � � � � � l  � � ����� � I  � ��� ���
�� .sysorondlong        doub � l  � � ����� � ^   � � � � � o   � ����� 0 battery Battery � m   � ����� ��  ��  ��  ��  ��   � m   � �����  � o      ���� 0 
thenumber3 
theNumber3 �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Replacing the image    � � � � (   R e p l a c i n g   t h e   i m a g e �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � �   m   � � �  c p   o   � ����� 0 	pathname5 	pathName5 � m   � � � 
 / i m g / � o   � ����� 0 
thenumber3 
theNumber3 � m   � � � 
 . p n g   � o   � ����� 0 	pathname6 	pathName6 � m   � � �		  / b a t t . p n g��  ��  ��   � 
��
 l  � ���������  ��  ��  ��     l     �������  ��  �   �~ l     �}�|�{�}  �|  �{  �~       �z�z   �y
�y .aevtoappnull  �   � **** �x �w�v�u
�x .aevtoappnull  �   � ****�w  �v     % �t %�s ;�r�q�p�o�n�m f h j l y�l �k ��j�i � � � � ��h ��g ��f�e�t 0 pathname pathName�s 0 	pathname2 	pathName2
�r .sysoexecTEXT���     TEXT
�q 
long�p 0 	usedspace 	usedSpace�o 
�n .sysorondlong        doub�m 0 	thenumber 	theNumber�l 0 	pathname3 	pathName3�k 0 	pathname4 	pathName4�j 0 usedram usedRam�i 0 
thenumber2 
theNumber2�h 0 	pathname6 	pathName6�g 0 	pathname5 	pathName5�f 0 battery Battery�e 0 
thenumber3 
theNumber3�u ��E�O�E�O�j �&E�O��!j 	� E�O��%�%�%�%�%�%j O�E` Oa E` Oa j �&E` O_ �!j 	� E` Oa �%a %_ %a %�%a %j Oa E` Oa E` Oa j �&E` O_ �!j 	� E`  Oa !_ %a "%_  %a #%_ %a $%j OP ascr  ��ޭ