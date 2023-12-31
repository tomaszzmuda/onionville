Haven Resource 1 src �  Invtry.java /* Preprocessed source code */
import haven.*;
import java.awt.image.BufferedImage;

/* >tt: Invtry */
public class Invtry extends ItemInfo.Tip {
    public final Coord sz;

    public Invtry(Owner owner, Coord sz) {
	super(owner);
	this.sz = sz;
    }

    public static ItemInfo mkinfo(Owner owner, Object... args) {
	return(new Invtry(owner, (Coord)args[1]));
    }

    public BufferedImage tipimg() {
	return(Text.render(String.format("Inventory: %,d\u00d7%,d", sz.x, sz.y)).img);
    }
}
code S  Invtry ����   4 F
  	     !
  " # $	  %
 & '	  (
 ) *
 + ,	 - . 0 sz Lhaven/Coord; <init> 2 Owner InnerClasses &(Lhaven/ItemInfo$Owner;Lhaven/Coord;)V Code LineNumberTable mkinfo ;(Lhaven/ItemInfo$Owner;[Ljava/lang/Object;)Lhaven/ItemInfo; tipimg  ()Ljava/awt/image/BufferedImage; 
SourceFile Invtry.java  3   Invtry haven/Coord   Inventory: %,d×%,d java/lang/Object 4 5 6 7 8 9 5 : ; < = > @ A B C D haven/ItemInfo$Tip Tip haven/ItemInfo$Owner (Lhaven/ItemInfo$Owner;)V x I java/lang/Integer valueOf (I)Ljava/lang/Integer; y java/lang/String format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
haven/Text render Line %(Ljava/lang/String;)Lhaven/Text$Line; haven/Text$Line img Ljava/awt/image/BufferedImage; haven/ItemInfo invsz.cjava !                   +     *+� *,� �           	  
 
  �       '     � Y*+2� � �                   B     *� Y*� � � 	SY*� � 
� 	S� � � �                 E       / 	  / 1	 - + ? 	codeentry    tt Invtry   