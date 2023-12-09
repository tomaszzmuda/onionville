Haven Resource 1 src �  OnBelt.java /* Preprocessed source code */
import haven.*;
import java.awt.Color;

/* >tt: OnBelt */
public class OnBelt implements ItemInfo.InfoFactory {
    public static final Color olcol = new Color(255, 255, 0, 64);

    public ItemInfo build(ItemInfo.Owner owner, ItemInfo.Raw raw, Object... args) {
	class Info extends ItemInfo implements GItem.ColorInfo {
	    public Info(Owner owner) {super(owner);}
	    public Color olcol() {
		return(olcol);
	    }
	}
	return(new Info(owner));
    }
}
code �  OnBelt$1Info ����   4 +	  
  	      this$0 LOnBelt; <init>   Owner InnerClasses !(LOnBelt;Lhaven/ItemInfo$Owner;)V Code LineNumberTable olcol ()Ljava/awt/Color; 
SourceFile OnBelt.java EnclosingMethod ! " %   	 &  ' OnBelt$1Info Info haven/ItemInfo ( haven/GItem$ColorInfo 	ColorInfo haven/ItemInfo$Owner OnBelt build ) Raw O(Lhaven/ItemInfo$Owner;Lhaven/ItemInfo$Raw;[Ljava/lang/Object;)Lhaven/ItemInfo; (Lhaven/ItemInfo$Owner;)V Ljava/awt/Color; haven/GItem haven/ItemInfo$Raw onbelt.cjava              	      #     *+� *,� �           
             � �                 *    "  
  	         	 #  $ 	      code �  OnBelt ����   4 ,
   
   
  	    ! " $ Info InnerClasses olcol Ljava/awt/Color; <init> ()V Code LineNumberTable build & Owner ' Raw O(Lhaven/ItemInfo$Owner;Lhaven/ItemInfo$Raw;[Ljava/lang/Object;)Lhaven/ItemInfo; <clinit> 
SourceFile OnBelt.java   OnBelt$1Info  ( java/awt/Color  )   OnBelt java/lang/Object * haven/ItemInfo$InfoFactory InfoFactory haven/ItemInfo$Owner haven/ItemInfo$Raw !(LOnBelt;Lhaven/ItemInfo$Owner;)V (IIII)V haven/ItemInfo onbelt.cjava !    	                    *� �            �       "     
� Y*+� �                   ,      � Y � �@� � �                 +    "     
    # 	  #  	 	 # %	codeentry    tt OnBelt   