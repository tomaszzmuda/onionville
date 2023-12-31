Haven Resource 1	 src �  CraftPrep.java /* Preprocessed source code */
package haven.res.ui.tt.craftprep;

import haven.*;

import java.util.*;
import java.awt.Color;

/* >tt: CraftPrep */
public class CraftPrep extends ItemInfo implements GItem.ColorInfo /* , GItem.ContentsInfo */ {
    public final static Color mycol = new Color(0, 255, 0, 64);
    public final static Color notmycol = new Color(255, 128, 0, 64);
    public final boolean mine;

    public CraftPrep(Owner owner, boolean mine) {
	super(owner);
	this.mine = mine;
    }

    public static ItemInfo mkinfo(Owner owner, Object... args) {
	boolean mine = true;
	if(args.length > 1)
	    mine = ((Integer)args[1]) != 0;
	return(new CraftPrep(owner, mine));
    }

    public Color olcol() {
	return(mine ? mycol : notmycol);
    }

    public void propagate(List<ItemInfo> buf, Owner outer) {
	if(ItemInfo.find(CraftPrep.class, buf) == null)
	    buf.add(new CraftPrep(outer, mine));
    }
}
code �  haven.res.ui.tt.craftprep.CraftPrep ����   4 F
  )	  * +
  , -
  .	  /	  0
  1 2 3 4
  5 6 8 mycol Ljava/awt/Color; notmycol mine Z <init> : Owner InnerClasses (Lhaven/ItemInfo$Owner;Z)V Code LineNumberTable mkinfo ;(Lhaven/ItemInfo$Owner;[Ljava/lang/Object;)Lhaven/ItemInfo; StackMapTable olcol ()Ljava/awt/Color; 4 	propagate )(Ljava/util/List;Lhaven/ItemInfo$Owner;)V 	Signature ;(Ljava/util/List<Lhaven/ItemInfo;>;Lhaven/ItemInfo$Owner;)V <clinit> ()V 
SourceFile CraftPrep.java  ;   java/lang/Integer < = #haven/res/ui/tt/craftprep/CraftPrep       > ? @ A B java/awt/Color  C haven/ItemInfo D haven/GItem$ColorInfo 	ColorInfo haven/ItemInfo$Owner (Lhaven/ItemInfo$Owner;)V intValue ()I find 5(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object; java/util/List add (Ljava/lang/Object;)Z (IIII)V haven/GItem craftprep.cjava !                             +     *+� *� �              
  �       W     $=+�� +2� � � � =� Y*� �       	 � @                       6     *� � 	� � � �        B            ! "     F     +� 	� +� Y,*� � � 
 W�                 	    ! #    $  % &     A      %� Y �@� � � Y � �@� � �       
    
    '    E        	  7 9	codeentry *   tt haven.res.ui.tt.craftprep.CraftPrep   