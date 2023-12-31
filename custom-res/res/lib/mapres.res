Haven Resource 1 src 5  ResourceMap.java /* Preprocessed source code */
package haven.res.lib.mapres;

import haven.*;
import java.util.*;

public class ResourceMap implements Resource.Resolver {
    public final Resource.Resolver bk;
    public final Map<Integer, Integer> map;

    public ResourceMap(Resource.Resolver bk, Map<Integer, Integer> map) {
	this.bk = bk;
	this.map = map;
    }

    public ResourceMap(Resource.Resolver bk, Message data) {
	this(bk, decode(data));
    }

    public static Map<Integer, Integer> decode(Message sdt) {
	if(sdt.eom())
	    return(Collections.emptyMap());
	int n = sdt.uint8();
	Map<Integer, Integer> ret = new HashMap<>();
	for(int i = 0; i < n; i++)
	    ret.put(sdt.uint16(), sdt.uint16());
	return(ret);
    }

    public Indir<Resource> getres(int id) {
	return(bk.getres(map.get(id)));
    }
}
code �  haven.res.lib.mapres.ResourceMap ����   4 X
  -	  .	  /
  0
  1
 2 3
 4 5
 2 6 7
 	 -
 2 8
  9 : ; : < =
  >  ? @ A C bk Resolver InnerClasses Lhaven/Resource$Resolver; map Ljava/util/Map; 	Signature 7Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>; <init> +(Lhaven/Resource$Resolver;Ljava/util/Map;)V Code LineNumberTable S(Lhaven/Resource$Resolver;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;)V +(Lhaven/Resource$Resolver;Lhaven/Message;)V decode  (Lhaven/Message;)Ljava/util/Map; StackMapTable D H(Lhaven/Message;)Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>; getres (I)Lhaven/Indir; "(I)Lhaven/Indir<Lhaven/Resource;>; 
SourceFile ResourceMap.java  E     # $   F G H I J K L M java/util/HashMap N M O P D Q R S T java/lang/Integer U M ( )  haven/res/lib/mapres/ResourceMap java/lang/Object V haven/Resource$Resolver java/util/Map ()V haven/Message eom ()Z java/util/Collections emptyMap ()Ljava/util/Map; uint8 ()I uint16 valueOf (I)Ljava/lang/Integer; put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; get &(Ljava/lang/Object;)Ljava/lang/Object; intValue haven/Resource mapres.cjava !                            3     *� *+� *,� �            
   	        !   "     &     
*+,� � �        
     	  	 # $     �     <*� � � �*� <� 	Y� 
M>� ,*� � *� � �  W����,�    %    �  &�      "               4  :      '  ( )     5     *� *� � �  � � �  �                 *  +    W    
   B 	codeentry     