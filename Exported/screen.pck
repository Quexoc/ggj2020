GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex 3      }      ���8�+��/{W�	   res://Game/ACServer.gd.remap K      (       n�$-p�(�m�Y�z   res://Game/ACServer.gdc �      �      ����ntGH�*A���    res://Game/GameScene.gd.remap   0K      )       ߬�[��\%&��4��   res://Game/GameScene.gdcp      �      �������bUF��Y   res://Game/GameScene.tscn   0      4      �f�32��i��ګ�/ȳ   res://Game/Player.gd.remap  `K      &       ��V�^�my^����   res://Game/Player.gdc   p      j      ?j%d#��d\2�   res://Game/Player.tscn  �#      �      �]-/+�V?�v0���    res://Game/PreviewScene.gd.remap�K      ,       ��~�z��K���c�s   res://Game/PreviewScene.gdc �'      m      ۊ�����C���`Ҋ��   res://Game/PreviewScene.tscn0*      '      �z3�eC�5T�΍�h    res://Shared/Airconsole.gd.remap�K      ,       q�	�z���f�*�C�   res://Shared/Airconsole.gdc `-      �       �`NϽ��H
�o�6��$   res://Shared/SceneManager.gd.remap  �K      .       ���DJ�x6���)nm�    res://Shared/SceneManager.gdc   0.      �      G6=�:�W���OCq8�    res://default_bus_layout.tres   2      9       ؃W*0�_7a0�GW   res://default_env.tres  P2      �       um�`�N��<*ỳ�8   res://icon.png   L      �      �`e�l,���ཧ��   res://icon.png.import   �H      �      �����%��(#AB�   res://project.binary�a      C       j����)�-1MB��        GDSC         =   F     ���Ӷ���   �������Ķ���   �����Ŷ�   ������Ŷ   �����������Ѷ���   �����϶�   ���������¶�   ���ڶ���   �������Ŷ���   ����׶��   �Ŷ�   ������¶   �������Ӷ���   �����������Ӷ���   ������������Ŷ��   �嶶   ����������Ӷ   ����Ŷ��   ��������   ����Ӷ��   �����¶�   �����������Ŷ���   ��������¶��   ��Ѷ   ������Ѷ   ����Ҷ��          6  
	var airconsole = new AirConsole();
	
	var PlayerInputs = {};
	console.log('Init eval')
	console.log('Inputs: ', PlayerInputs);
	// flag to inform the game of a restart, sent from main player, reset on read (see _process)
	var restart = false;

	airconsole.onMessage = function(device_id, data) {
		  if (data.input !== undefined) {
			PlayerInputs[device_id] = data.input;
		  }
		  if (data.restart !== undefined) {
			restart = true;
		  }
		};
	airconsole.onCustomDeviceStateChange = function(device_id, state) {
		console.log('statechange: ' + state);
		
	};
	           <   
		var res = restart;
		restart = false;
		// return
		res
	      res://UI/MainMenu/MainMenu.tscn    
   JavaScript        devId                name      p1        master        devstate      color         #ff0000       isready             p2        #00ff00    f  
	var devIds = airconsole.getControllerDeviceIds();
	var masterId = airconsole.getMasterControllerDeviceId();
	var players = [];
	devIds.forEach(function(d){
		var pname = airconsole.getNickname(d);
		var devState = airconsole.getCustomDeviceState(d);
		if (devState === undefined) {
			var devState = {color:'#00ff00', isready:true};
		} else {
			console.log('finally we got a state');
		}
		//console.log(devState);
		var ismaster = masterId == d;
		players.push({devId: d, name: pname, master: ismaster, devstate: devState});
	});
	//console.log(JSON.stringify(players));
	// return
	JSON.stringify(players);
	        0         1         2     333333�?      JSON.stringify(PlayerInputs);         airconsole.broadcast(%s);         airconsole.message(%d, %s);                                                     	      
                                        &      '      ,   '   0   (   1   )   2   *   9   +   =   0   >   1   J   2   N   3   W   4   X   5   Y   6   _   7   `   8   l   9   �   :   �   ;   �   <   �   =   �   P   �   Q   �   R   �   S   �   T   �   U   �   V   �   W   �   X   �   Y   �   Z   �   [   �   \     ]     ^     _     `     a   !  b   "  c   #  d   0  e   ;  f   D  g   3Y2�  YYY;�  NOYYYYY;�  LMYYYY;�  YY0�  PQV�  �  �  T�  P�  R�  QYYY0�  P�	  QV�  ;�
  �  �  ;�  �  T�  P�
  RQ�  &�  V�  �  PQT�  P�  QYYY0�  PQV�  �  &�  T�  P�  Q�  V�  �  LN�  V�  R�  V�	  R�
  V�  R�  VN�  V�  R�  V�  OOR�  N�  V�  R�  V�  R�
  VR�  VN�  V�  R�  V�  OOM�  .�  �  ;�
  �  �  ;�  �  T�  P�
  RQ�  �  �  T�  P�  QT�  YYY0�  PQV�  &�  T�  P�  QV�  �  �  N�  V�  R�  V�  R�  V�  O�  .�  ;�
  �  �  ;�  �  T�  P�
  RQ�  �  �  T�  P�  QT�  YYY0�  P�  V�  QV�  ;�
  �  �  �  �  T�  P�
  R�  QYYY0�  P�  V�  R�  V�  QV�  ;�
  �  L�  R�  M�  �  T�  P�
  R�  QY`            GDSC   &      E   �     ���ӄ�   �����������Ӷ���   ����������Ӷ   �������Ŷ���   ������Ŷ   �����϶�   ���������Ӷ�   ���¶���   ����   ��������Ҷ��   �������������Ӷ�   ����¶��   �������Ŷ���   ����׶��   �����������Ŷ���   �������������������������¶�   ������������Ŷ��   ���������������¶���   ���Ӷ���   �������ݶ���   ���������Ӷ�   ����   �������Ӷ���   ����   ���������¶�   �����Ҷ�   ƶ��   �������϶���   ߶��   ����Ӷ��   �����Ķ�   �����϶�   ����Ķ��   �������Ҷ���   �������������Ķ�   ���������Ҷ�   ���ƶ���   �������������������������¶�      res://Game/PreviewScene.tscn      res://Game/Player.tscn        res://Game/ACServer.gd               name      devstate      color         isready                                                     	   "   
   #      )      *      1      >      G      N      O      P      W      _      `      a      g      o      s      t      u      {      |      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1     2   $  3   3  4   ?  5   G  6   H  7   S  8   \  9   ]  :   ^  ;   i  <   p  =   q  >   r  ?     @   �  A   �  B   �  C   �  D   �  E   3YY:�  ?PQY:�  ?P�  QYYY;�  LMYY;�  LMYY0�  PQV�  �  &�  T�  V�  �  T�  �L  P�  QT�  PQ�  �  T�	  P�  T�  Q�  W�
  T�  PQYYY0�  P�  QV�  �  T�  T�  PQYYY0�  PQV�  �  T�  T�  PQ�  �  PQYYY0�  PQV�  �  *�  T�  PQ�  T�  T�  T�  PQV�  �  T�  PQT�  PQ�  �  T�  PQT�  PQ�  �  �  *�  T�  PQ	�  T�  T�  T�  PQV�  ;�  �  T�  PQ�  W�  �  T�	  P�  Q�  �  T�  P�  Q�  �  ;�  �  T�  PQ�  �	  P�  Q�  �  T�  P�  Q�  �  �  ;�  �X  P�  T�  T�  Q�  �  )�  �K  P�X  P�  T�  T�  QQV�  ;�  �  T�  T�  L�  M�  �  ;�  �  L�  M�  �  T�  �  L�  M�  �  T�  �  P�  L�  ML�  MQ�  �  T�  �  L�  ML�  M�  �  �  �  T�  �  �  �  L�  MT�   �  T�   �  �  L�  MT�!  �  �  �  �  &�  W�"  T�#  PQV�  W�"  T�  PQ�  �  �  &�  W�"  T�#  PQV�  W�"  T�$  PQYYY0�%  PQV�  -Y`        [gd_scene load_steps=2 format=2]

[ext_resource path="res://Game/GameScene.gd" type="Script" id=1]

[node name="GameScene" type="Node2D"]
script = ExtResource( 1 )

[node name="PollAirconsole" type="Timer" parent="."]
wait_time = 0.3

[node name="GameStartTimer" type="Timer" parent="."]

[node name="UI" type="Control" parent="."]
margin_left = 20.0
margin_top = 20.0
margin_right = 40.0
margin_bottom = 40.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PlayerList" type="VBoxContainer" parent="UI"]
margin_right = 220.0
margin_bottom = 122.0
custom_constants/separation = 2
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="timeout" from="PollAirconsole" to="." method="_on_PollAirconsole_timeout"]
[connection signal="timeout" from="GameStartTimer" to="." method="_on_GameStartTimer_timeout"]
            GDSC         -   �      ���ӄ�   ��������Ҷ��   ����Ķ��   ��������Ķ��   ն��   �����Ӷ�   �������Ӷ���   �������Ҷ���   �������������ض�   �������Ŷ���   ����׶��   �嶶   ����������Ӷ   ���������Ӷ�   ���¶���   �����������Ѷ���   ��������������¶   �����������¶���   ���Ӷ���   ����ڶ��   ���¶���   ������������Ҷ��   ������Ŷ   �����Ŷ�   ��Ŷ   ����¶��   �������������Ҷ�   ��������   ����򶶶   �������ض���                  @   
   JavaScript        devId                            
                        &   	   '   
   (      .      /      0      7      8      9      @      A      Q      U      X      ]      ^      c      q      r      s      y      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   3YYY8;�  Y8;�  V�  9�  Y0�  P�  V�  QV�  �  �  �  W�  T�  �  YYY;�  �  YYY;�  Z�  YYY0�	  P�
  QV�  �  &�  T�  P�  Q�  T�  T�  V�  �  PQ�  (V�  �  P�
  Q�  �  �  P�
  Q�  W�  �  T�  �>  P�  QYYY0�  PQV�  ;�  �>  P�  T�  T�  L�  ML�  MQ�  �  &�  T�  T�  T�  P�  QV�  �  �  T�  T�  L�  MYYY0�  P�
  V�  QV�  �  &�  T�  P�  QV�  �  �
  �  '�  T�  P�  QV�  �  �
  YYY0�  P�
  V�  QV�  �  �  P�  R�  R�
  �  QY`      [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Game/Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 48.0598, 47.1264 )

[node name="Player" type="Node2D"]
position = Vector2( 512, 300 )
script = ExtResource( 2 )

[node name="Paddle" type="Sprite" parent="."]
position = Vector2( 0, 260 )
scale = Vector2( 2.00776, 0.289853 )
texture = ExtResource( 1 )

[node name="KinematicBody2D" type="KinematicBody2D" parent="Paddle"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Paddle/KinematicBody2D"]
shape = SubResource( 1 )

[node name="Node2D" type="Node2D" parent="Paddle"]
scale = Vector2( 1.47815, 11.2121 )

[node name="Label" type="Label" parent="Paddle/Node2D"]
margin_left = -28.0089
margin_top = -24.3529
margin_right = 11.9911
margin_bottom = -10.3529
rect_scale = Vector2( 1.70087, 1.57849 )
text = "name"
__meta__ = {
"_edit_use_anchors_": false
}
    GDSC            ]      ��������¶��   ������������   ����Ӷ��   �������Ӷ���   �����϶�   ��������϶��   �����Ķ�   ��������Ķ��   ض��   ���������Ӷ�   ���¶���   Ķ��   �������϶���   ն��   ����Ķ��      Ready      	   Not Ready                                                    %   	   )   
   0      1      :      >      I      J      S      W      [      3Y2�  YY;�  V�  9�  Y;�  V�  9�  Y;�  V�  9�  YY0�  P�  V�  QV�  �  �  �  W�	  T�
  �  YY0�  P�  V�  QV�  �  �  �  W�  T�
  &�  (�  YY0�  P�  V�  QV�  �  �  �  �  �  Y`   [gd_scene load_steps=2 format=2]

[ext_resource path="res://Game/PreviewScene.gd" type="Script" id=1]

[node name="Players_UI" type="ColorRect"]
margin_right = 220.0
margin_bottom = 23.0
rect_min_size = Vector2( 0, 23 )
color = Color( 0.223529, 0.235294, 0.25098, 1 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PlayerName" type="Label" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 5.0
margin_top = 5.0
margin_right = 5.0
margin_bottom = 5.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "Very long Player name"

[node name="LblReady" type="Label" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 154.0
margin_top = 5.0
margin_right = 5.0
margin_bottom = 5.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "not ready"
         GDSC                  ���Ӷ���   ���¶���   �����������Ѷ���                                                               	      
         3YYYYY;�  YYYY;�  �  Y`          GDSC         (   �      ���Ӷ���   ������������Ӷ��   �����϶�   ���¶���   �������Ӷ���   �������¶���   ��������Ҷ��   ��������������¶   ���������Ӷ�   ���޶���   ������������Ҷ��   �������������������Ӷ���   Ŷ��   �������������Ķ�   ���Ӷ���   �������Ӷ���   ��������Ҷ��   ����������������Ӷ��                _deferred_goto_scene                         	                        *   	   +   
   2      3      4      5      6      7      8      9      :      A      B      C      J      K      L      M      N      X      Y      Z      `      a       b   !   j   "   k   #   l   $   y   %   z   &   {   '   �   (   3YY;�  YY0�  PQV�  ;�  �  PQT�  PQ�  �  �  �  T�  P�  T�  PQ�  QYY0�  P�	  QV�  �  �  �  �  Y�  �  �  �
  P�  R�	  QYYY0�  P�	  QVYY�  �  �  ;�  �  T�L  P�	  QY�  �  �  T�  PQY�  �  �  �  T�  PQY�  �  �  PQT�  PQT�  P�  QY�  �  �  PQT�  P�  QY`          [gd_resource type="AudioBusLayout" format=2]

[resource]
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST`   `           a  PNG �PNG

   IHDR   `   `   �w8   sRGB ���  IDATx��yxT����>�uB���5��r�-���Z�P�O�*Z��Z��z�uo��j�׶�z��ZEPT4�!�	!a�Βd��s���$0$3�d�����9s��;�y��m���t2 M�6���	 �v��U�d
A��v��z�6d�;@M��
��L@�E��� g!�(&�F-*n������H�W�R�@mw�c�Y�R�t��"�:@?$�^�8$���A���P�d	� " �# ?	�X
��J��T#�"� �M}� �,#K�σ�����/�E�7dY������Q0r$z�	����t*_T(�$�����a�G� ���T�TkQ��H~/�,/���+�í^k�|o�Z�U���N�+�*��FJ��=�%B]
*AX����F��?Lg�&����� hR��O�4�a@�+�B�Z����>iX��� ��I�s�Z�C��B�-�� 
T�����P�P�ԡS��^"��˂�(U����kDw���Dd��?�]�f��c�b���p�w�9K�"��u�ª|
���4R�w?�$��LC���^��t��*A�Gv���S�3{�8fNC�^�$I<����G;#J��|��~�}DQ���dO�1v�b��#��̓��!L(].O���4��,�7��\3����2H��M��-�kM��5:?�W��Q��k�4�ᣝl�dm��e�vKS�X�^<���'j]|=�G�s�҅<p�2��lB���9��<��[�N���ǘQh$ՠ&'����}�������g�s��Ν�죦Ŏ�'�jP�U)HI40k�8~����5�K�f[<7��eYX�����-���>>����5r��Y�
;�8���7�;~��+��Ms�1<��� <��
v�l]���52�vbMW����<��{�x�2�9`la.ݾQ8���˟W�f�v�h�l�����dj~
�IZ�Ff���a�}�����LE��������f���5f6쯧��bD��A��1�����Vk��?k8��!i"ܴx
���ܱ~/�+L���^���I J�G2{��s�Ϟ:���=����
w����("7-��ϧ��!iI�˗�2�����e������q�LS�ΰ��C���ZU��ޒ:��,��L����r�UE�_�U�e���d������ڨ�Ԫ=d�7Cc w��>|������gЩ�9��9}$jU$�8=~�Z�J3d ��uO<���P�>z�ӳ�o���A��͐T���@��0�ο�A��̀@�T�TFV����q�O� �r@�u�R�@�sF��@$r��1�rՍd��8V������E����?X�BHҩ�:���MҩPt�,�sٯ����ˑ$霰��s۲2&�)��l��`o屘e��'<�(���}':M��䳽�<��F��HOM��W2e\ Mm.��z���C�����O�KF��/�Ts��u4[�L�X��93&���t{���?PU]�=�'�aL���V��h�ds�MUd&kIO�R������D����K<��[)��,�ƃ��f�WԶ�3�;g�N�T�0hT��L$kD*�]yU'������V��07�Cgl�q�1��$�j�rՌ�lݾ�3�&���tZ5/>|'���p����/�5z��|U1yƞ���n�o<�ޚ�%��"#��M��'�3;��N��� �z�,�N�Fɑ�:V=���ȋјs� <~���1q4~I��+9���G9mv���/Q���B��8����Ɨ3V'ۏ�0�0�$�
�O��5<����������r���y%���52����>�s@����by�\ ���(�G��	#�2u6>=҄_����*Z:���mN/jD)
��r���[ºNl.,�G�� 'k{��G��� #�F���nF�T������5��ow��wʂ�n��B���w�B���k���'i��Ȍ	�ٺ�@D�<�����ȃ���ըijs�vۉh�_���v��6Z��W/G��ZEzŢ�LW�,��[��p���|p�}<���S��b�ܨ�Ge��\34#�G�����_ka��z�KG���S*�T�>0�u$��h�VE:���[c���)��	���*nT��+�"s�Y457�]�,�����dd:������(�~��[������f�"�):n��^��ǻ�;c�|D�~f�;4�m��
�/��R��-��
���&�S+h6�xf�;Q����Nx�$IblV"7_U�w�K���*flV"�$�����nwF�F�d�8t����! ��ɘ���$sQ3&3��g��������~�����������jH�G��F�Rpݤ,f�����'�ԙ�m��hs���D�(��Μ����(E��6�N�������IA��*!0��қ�[�~�/I��~:�7���r��R=o
G�jl:76u��_q�}V����Z<�Q	=~�3�^hd��z�pĝ��Y���A���ƄUJ%	zmDa����Sz(_�$L&>_��1*#���M'3)�4�!3I��˦�����0�L=�Sj�a
�R#J3A�E��mT7.�R%��M��vtt��sϳmۧ�\.�j5�f�⮻~��h�%����*�=JH֫0��<�̳�ڹ�ǃV�e�ܫ�}��$$$��-��-/��_W\���M�!Y�'\.�o_���[p�ŗ����rV��Vl6��22��4g�����~�tf{;ed
���l���V���	ɳy�V�~GH�d���)9�>vD�� �F���׿��ӧ�d��f^x�O�8�ia� $h�<�d㳓���K&��9f����b6�=}�4�_^V��$.�J�*�w���k�=�׳�����J֢Vv��V�=�qnx]�w�z�ݻ���y0��̸���^�[�6��>�.�y����n���W�46�.�`�[�����E�����F��Po�)+������^�v�38M᳉��o	{��^�.X8��8u���n~7����l�0��(V.\@鵥a�͜9��K����<��W�Lm�6�t��9sf�0�ז�`a�@-�n6�i�).� ��ϣ�~�7NC���/��+f��O9u����\y�7Y�x��n�l�p�l����y������F>�|;���0w�Ք�^
�O�э_��%+q[p���������J�M�SZZz� j-<��a,a�u��;W9�~���᧯}�/��x�b/Y|N�z��'�;̱��,փ8/�8��Ϊ��a��t�(N#3I�O��3;)?�āZkD�ԙ�>c�$'��glԙ��4�v��� ��S�36�<��(���b��Vʏ6��Z�����K2۪��V��w�� �2�x� �;;K;O�F�E=Pk��؃��WD�x�R�)��V"5;l�~2P[��T�x��)؜^�v�7�'pl�t�C�NO|�w�E�V`4�;�4����Ԥ4�w7V� p�&�T��}�����o�'�p�>�[8K���9����-��5'�h���M_�����hP���AMR��D�Vp��yQ��9��aس9�b�/��ѝ�/�;��ۂ����bwc�{I�*�?9���EJL���u��}a�)E�+'h�?)�Y��H�F�}K������e�U�Ǝ�-�Х��)Ӯ�l�4�(N}a�3
�̟�M�s��d���4���v�St���N�D!
uz�Ӻ��=��>��� �F���@!
�;t�Y��#n����d �ۍZ�����py�@.A�����'750����x�/#��?�
�Z��	e�Y��/t�{L8���{615C�m��6���pt_򓠍��9�J��?����ײ� �V�5�=&b��f39�'����p��M���b��}��>l/m./v�������Υ��`tf"yF=i	�FA�V�A�$I�"Y� Qb�(1Ԥu�*����lj�m�JL��$���gZ3�4�������2Ž��
��z�7"�'�#aZ~����m�\L�q�0�-[H�QϤ�d*�{smjs�������J�AMb�[��S��W��q�!S�;�#�$�X^ڝ^��.����"0��rS9sǁ����Pu����5L[��Y�:�J�7O�N���Q��	%�Zf�;�=%�T�y��JRj�]^::�4�#P���_:+�,��hG�c�P��]��G�����"#��g�Inf�Ǐ��_��3����Lf�����sz1;�>�S�'�o��׎�8�
�b�8=�;J��񮃔��*�4���Ko��jE�V��S(H����U�����W+hh�����߀�; h��s�cki�;0ԬY6����0��Q�ʚe�1Դu8�뱵�m3n<`;�Z�:�y�sfL$%QϷJ�H֩������\hU
V��m�ƠV�4�Z��ck9���}�n)���·��3el!�#R��ĵ�py��l��츊
Q`��l~�d"��"����|t-�M����ݢ(�b�\V�8�:�eoiw��P[*0�
�X�I�qݤ,J'd1"1���ˋol�Ս���%��o�4���g�������]=E�]D�<m�J�j,X�hþ �z53
S�nr6S�z�~I�O����h����f� 9Fͽ�Es� kD�ʹ�⠢�ơz_�Yi���]��d�󒙐����P�6HC�����f�'�93H_ۈ�������cY<�
��99T<u��������I��Ec[��l� I2��׏_��9��d}`�I�J�^�D�5�I��_����IZta\�.����T��]�86�+5�� �Q)�+��	��6����HJ�O��������8R��C'�������Ɓ�0@8�r3)��$;�Hvz*y�#��L#;݈6Ln��ǋ��̙�V�[05[05���k��>�1��� �̸��F�{QNR��J�F�"��3����=^<^ߐ}��?(� #�о%֝��m=o��g��!M]/��/V��q�� �&�H�����?g���h����x�y�>LO[}��� ?��������������D��#�_��v��]Q3 Ȳ���5I�S�5���E��>8 $�w�u��,˸;�H�Pgϡuk4x���	y%�������������	�KY��W� ����< �p�p Ȳ���B�{f��'\Ȳ�,I��n<.;^��{i"�ɲ�gI�C�+Qv*?����O�� =*�n�0��!!��
$����{���"��ೕx$��]?�G��ೕ oJ��N��x��i��+�^�(������ ���kgvN"[}�?�z����@m�n�n���9a��K��    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Game/ACServer.gdc"
        [remap]

path="res://Game/GameScene.gdc"
       [remap]

path="res://Game/Player.gdc"
          [remap]

path="res://Game/PreviewScene.gdc"
    [remap]

path="res://Shared/Airconsole.gdc"
    [remap]

path="res://Shared/SceneManager.gdc"
  �PNG

   IHDR   `   `   �w8   sRGB ���  <IDATx��yxT����>�L2��l�a	Hdi�+�h�m�Z���}�W�z[[m�^o����Z�-E���ZEPT�ʎ,AkBH���%�Ϝs��̐���d� �{�<�����{Ϸ���}G���.)/v	���U�E����u�% p�Є@�=�\m���6��u��),���*=���3
�bʯԢ�@h�/rB~)��U�x�}�ֺ�����nЛ�(���Fa%�L-��%�[�v}�����1j �)�����g���P�Q�4�J5�("g�KtA�edIB
�	|��3?;��_�mM ( ��VTޠx���
4)騵D��R�ǉ ���T�TkQ��H� �,GWrK�;m�����ߍ��
U�����W(UhS�(��!����y)�a��|Z!�?�a��*�i~򵩦KO{?"
��P�)	jMHa
�
%�o,�)�G鬎���KO� 
�ۢ_=!�H�'�љ�
��R� 
�
�J��}��tU���/J�fh4��5��U��EdJ#?���s��[˔�@V� \�4g�q�O<�z>
�H~v驉���S�gg�P�_�ylT�"�"7�̌Ic�1yS'�"E�C�$���?x��q�񝫿��?�Q�p{ر�[�T�u�!,-�����U.�#_���dc��E��s��3(ʋ��$����_s���cZ#sy���إ��T3�?���O���p'�{_pu�)2K'�W�Z7����#�k�<��f��l\��qxl=��ۻN��'G�(6c2���2�nӮ�|d�
s39�����vQ����0�hU
�SL�4����7��������ۍ𺢟��,[2�[�S�����F>>����vd�������D ����l�:3ͩF��#w��?��v���W`dV*W����94�kߕ�l��7�����!/���y��%�������E��b�6�.�Y�6�
��6j)��;��L���@�)��z;�W�Yǭ.?;k����@��˰T-f�����ٴ�+����~���Z���p���("�o�U;YWe��xΫ���t83&�=���Ic)+�M�\x!�UY�g�N>�߈B!rˢ�}����^�Ե~��j���u6.+4��۾ˉS��6���6޻�lT[�	��E�ש?x�> ���
���긬�DQ^�9{Kon�K(M�J�M��fh��󑛏�=u6>�w
�Z����	"��Ua�)��C쩳��P����Cb G{�J�'�{z��=���!��`3$�p�5\Gg���/�CD�����R*P*�R"�m�^�8��'Q�% �6@�T���>�J�?�|�(~~�M�f��:R�K��>{��E���f�ߟ�B0�T��CS�u*�.���]J�&���&$I:K���R�y>Gci���+g��#I��HxlI+��^t�����;���k���_d��x��[)S@�����fh�c�����5��J���P-_I�-�()�枥�Y1��y��;��5�	_��F�Y�4^zti�,�Y[Mv���T-EyY\_�MtZ��������9�2�����VE]��8úr��a}��FŨ�Tr�����˨>^ύ߾��Z����l �r��G�g�d�re�x6lލ˓X�_|A:��W��1%t����Ɨ�Y�zŨa�ve)���u._���`g����py������'������őV 
�z�/�B�Fɡ�z�x�wx��W�I� Ax��P1~$!I�w�s������*��DY^
Q������Mp�:���{�|��)�&�:����[jyvm5����Z�'���vf�e�iNc��\>ڼ'��t-}2���\ɒ�� �݆�l:�r��$�T�;��P3!I��k�i���f"8=>9ЄRX������t�4:���~f�FQ^���o�����߆R�`�~�6��(���������?$�넍vo�G��Md5��J�b�H6l��$O����(�Ȳ%h5j��^Vl<���%+6���E�Q�Ȳ%�bbC����.�Ť1%�2<��n_�O���/�s�!�0iL	K�J���p��Ӂp7rw�N����u6��m N�Q�$d�HH����'ƿ�D�$�ت��#���5��,�hH�p� �<ބ�M� ��=d`|~&�'t��������L8�!!l�:�{�l���������Hn���g��k��d�9#6�E����W�K�ՁN����P*��u�R!���q��
Z��_�n�i$l�v���_xI����mW��~�E�mW�2:'I�x���hwyN�O2_8ʟ����+�3*;�/�\Ќ�N���p̟���/�S:}��y��Y�`:��4}��j�*�N�aFiYF-AI���f��6n�S�J"����љ��I�Y�Rhvz�v����{�O���W!ᙴW������� !I"
�Ꮏ�5�����a2t��)f��љ�����}�){�E9��u�b�xFd�t����gJ���Ӌx���q2;�^dY"c-^��V)���q�N)2����2_�$,�`إ1"+��n�B�1�4!ۨ幛�D3?b�X�M?�j���)E���L�kQ)������F��揋οvtt�ҋ/�q�gx�^�j5�gL��~��l恹e�������s�Hӫ�Z�<��lۺ�ߏV�e֬��{�ݤ���~6���� ��%,e~yi�p;��zYv�2֭[�����~?�>��?������4ʇ�����3�]2��.���s����әP�������ɦ�7������[��ew��'M�b~y^���b��#2��W�u'OƞȶZ������fĔH�(yx����k��EHќ�0G����+�ZcO��<y�U]S�dP��v�N߾}{��;:�礝{����E�<��Z)v�����ko���۷�@2�q��M=���|�L]������|��=��ij�Y��`P�`;ݭ,--�Q677�FC���BVln4yy�=ʕ�w9g`��g2(�|�5���s��(;wޜ����ϙ;�G�9]t����Ġ`m����p�2o�\*���)7u�T/^̎k���T[�쨱�x���:ujL��k*�;/l��vki�iP��@�'����o��F)��?ĴiS���g�8q���|���,X���v��W����W���)<��S�yo_|��������5�**+��/(�Ě����H�A[p���'�̓���7马���t�=u6��� ������9�~����?�����+cᢅ,\��,�����?ȑ��Y���@�HS;w�e3Gg2�4�l���$Qo���p3{��q�So�p𔃲�4 �rPo��Ѵ��<���L.Lg��,
�:��H�����ml:�Bh�׊�
��$������ͽ�I�����2�s���X[B^�=u���=Мw{E�K $����8����诉�K�#���ORUPD�ǯ/��	`u��v������.�g_���?8ݻ��S+0ԝL��j�)jLf�:��M�~1 �]�i:%�z��v�C�e�qV�iH���΢���`f)zub�-	I ���St�B���b6�1�xJ�j�_^��n�YJQ/�=��.����=#�r����|g�t���\>�� �Z%s&�s_�xI� ��߿���+Ʋ#�(�.�)�L�e������oY����&����m�`�.��N��kc�~K��4clPQlf��\��!�nhP�ii������M�1}D:��(�5�)�8��僧���!:CV�a�� 
Q@�9����Ζ8q���<>j�2�z�� �]���'��9���d������u��{%:�2zno�h��neD���u�1�N0�L��ڝ�6���Xt]򓢍��y����>"����۲��^�=�=&�*�+EyY�d��.tt���揣��as���|A� No �/H�7���gx�R�D02;�����p� E�ĠVbԩHӫ0h�4J�5]Be:�4@�--�-TI� �gƤ�L�%�!B�Ӌ,w�ߖ����՗P�a��;��y��1&��y�����%e�-{r���(0뙐������\��^��� �M�jR;��T��t��Ǎ;X����`/��,cwh�p���{��\~���h�� ��7�K�=�_�/I��x=U�k�8���Ӌ�e�dO�P�Z�A�ĤW)%�ZV�/�=%v�Xy���jڽ::�4�;\�%;_<=�-�w��C5�(�|�c~���sy���c��4	7����E�/�a˱����VY6��n��w6$�^�θ�w���m�'��kFSg�|!R���=���d�^6��*�4����o��fG�V���e\|o�*�������
[m<�?��/���������
�.7f���7O��8����b�o��٠����'W`u�ϼq��ksv�u�!fV�'=UϷ�rHө��w���\hU
�5��f�B�in��'Wp���{#��R�E����6�|t1����k��9x!����v\
Q`��\~�h<����NZ�>�����A|�nQY�`w�4�:<dom���@#��7b�0ɒ����	9T��aXj�]/>�W�����l���\_�aӀ���7�a�USQt�Ed�I;�ֆm�6�`ҫ�(6q��\�N��C�������7�������"�e�Y0kfM#gX�ƹ�榪������4:��.�Fn���i��OcbAZtD���ƚ϶������m�"���ԉ�Y8{WM������hrz9e�������Y]~$I���	�I2w�u��o?�S)Ы����٠&ۨ��i�KבmԢ��:��|���՟ncgՑ_�9d�J�`LI���䱥LS�1ep��7{����P�����`/����ya�X��gS\�Mn���L����� 7ӌ6Fi�	�?���ʩ�6�Z��ذ�X��o��a�bt��Ϋȸ��&jz�c��J�F�"�н�������������/(� �/#>��%֕��vN���{��!ͧ^8;^�����"�����MH_���E{���)��>�%��=����A���K�` 	�ёH�~�"$Kv�)k�B'H� J��n�/DdY��Ga�z�������'��i� R(���~fk}�$�e_�)칵>�#�'�_e�r6ٍ�Ň���,I�>D�
Q��u|	�\v�P4�H�B��'�l����:pۚ��xA�dY&��"��AA�T5��,�D`��E���Z����'v�G�#��zS�W�("�.��ݡ�-!�Z����]_��U"�u�Z�2_S��P�D�o9���/�V���oh��->{�p�sf������b��.]e\�L1����t���B���s�Aֿ�T���Y;����h_�lPD    IEND�B`�              ECFG      _global_script_classes�                    base      Node      class         ACServer      language      GDScript      path      res://Game/ACServer.gd              base      Control       class         Joystick      language      GDScript      path   %   res://Controller/Joystick/Joystick.gd               base   	   ColorRect         class      
   Players_UI        language      GDScript      path      res://Game/PreviewScene.gd     _global_script_class_iconsT               ACServer             Joystick          
   Players_UI            application/config/name         AirConsoleSample   application/run/main_scene$         res://Game/GameScene.tscn      application/config/icon         res://icon.png     autoload/Airconsole$         *res://Shared/Airconsole.gd    autoload/SceneManager(         *res://Shared/SceneManager.gd      display/window/stretch/mode         2d     display/window/stretch/aspect         keep_height /   input_devices/pointing/emulate_touch_from_mouse         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres               