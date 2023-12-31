Haven Resource 1 src   StackName.java /* Preprocessed source code */
/* $use: ui/tt/defn */

package haven.res.ui.tt.stackn;

import haven.*;
import haven.res.ui.tt.defn.*;

/* >tt: StackName */
public class StackName implements ItemInfo.InfoFactory {
    /* XXX: Remove me. Waiting on custom clients merging getname in defn. */
    public static String getname(ItemInfo.Owner owner) {
	if(owner instanceof ItemInfo.SpriteOwner) {
	    GSprite spr = ((ItemInfo.SpriteOwner)owner).sprite();
	    if(spr instanceof DynName)
		return(((DynName)spr).name());
	}
	if(!(owner instanceof ItemInfo.ResOwner))
	    return(null);
	Resource res = ((ItemInfo.ResOwner)owner).resource();
	Resource.Tooltip tt = res.layer(Resource.tooltip);
	if(tt == null)
	    throw(new RuntimeException("Item resource " + res + " is missing default tooltip"));
	return(tt.t);
    }

    public ItemInfo build(ItemInfo.Owner owner, ItemInfo.Raw raw, Object... args) {
	String nm = getname(owner);
	if(nm == null)
	    return(null);
	return(new ItemInfo.Name(owner, nm + ", stack of"));
    }
}

code F  haven.res.ui.tt.stackn.StackName ����   4 k
  / 1  3 4  5 6  8	 9 :
 9 ; < > ?
  / @
  A
  B C
  D
  E	 
 F
  G H J
  K L M N <init> ()V Code LineNumberTable getname P Owner InnerClasses *(Lhaven/ItemInfo$Owner;)Ljava/lang/String; StackMapTable Q < build R Raw O(Lhaven/ItemInfo$Owner;Lhaven/ItemInfo$Raw;[Ljava/lang/Object;)Lhaven/ItemInfo; S 
SourceFile StackName.java   T haven/ItemInfo$SpriteOwner SpriteOwner U V haven/res/ui/tt/defn/DynName W X haven/ItemInfo$ResOwner ResOwner Y Z Q [ \ ] ` haven/Resource$Tooltip Tooltip java/lang/RuntimeException java/lang/StringBuilder Item resource  a b a c  is missing default tooltip d X  e f g   $ haven/ItemInfo$Name Name 
, stack of  h  haven/res/ui/tt/stackn/StackName java/lang/Object haven/ItemInfo$InfoFactory InfoFactory haven/ItemInfo$Owner haven/Resource haven/ItemInfo$Raw java/lang/String haven/ItemInfo sprite ()Lhaven/GSprite; name ()Ljava/lang/String; resource ()Lhaven/Resource; tooltip Ljava/lang/Class; layer i Layer )(Ljava/lang/Class;)Lhaven/Resource$Layer; append -(Ljava/lang/String;)Ljava/lang/StringBuilder; -(Ljava/lang/Object;)Ljava/lang/StringBuilder; toString (Ljava/lang/String;)V t Ljava/lang/String; +(Lhaven/ItemInfo$Owner;Ljava/lang/String;)V haven/Resource$Layer stackn.cjava !                    *� �           	 	   $     �     i*� � *� �  L+� � +� �  �*� � �*� �  L+� � 	� 
M,� #� Y� Y� � +� � � � �,� �    %    "� 8 & '    .           "  )  +  5  @  D  d  � ( +     \     *+� :� �� Y+� Y� � � � � �    %    �  ,                -    j #   B  ! 0 "	 ) 0 * 	  0 2	  0 7	 
 9 =   0 I 	  0 O	 ^ 9 _codeentry 6   tt haven.res.ui.tt.stackn.StackName   ui/tt/defn   