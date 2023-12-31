Haven Resource 1 src v  KeyPagina.java /* Preprocessed source code */
package haven.res.ui.tt.keypag;

import haven.*;
import java.awt.image.BufferedImage;

/* >tt: KeyPagina */
public class KeyPagina extends ItemInfo.Pagina {
    public KeyPagina(Owner owner, String text) {
	super(owner, text);
    }

    public static KeyPagina mkinfo(Owner owner, Object... args) {
	if(args[1] instanceof String)
	    return(new KeyPagina(owner, (String)args[1]));
	Resource res = owner.context(Resource.Resolver.class).getres((Integer)args[1]).get();
	return(new KeyPagina(owner, res.layer(Resource.pagina).text));
    }

    public int order() {return(20000);}
}
code �  haven.res.ui.tt.keypag.KeyPagina ����   4 F
     !
   "  $ %
  &  ' ( ) *	  +
  , -	  / 1 <init> 2 Owner InnerClasses +(Lhaven/ItemInfo$Owner;Ljava/lang/String;)V Code LineNumberTable mkinfo M(Lhaven/ItemInfo$Owner;[Ljava/lang/Object;)Lhaven/res/ui/tt/keypag/KeyPagina; StackMapTable order ()I 
SourceFile KeyPagina.java   java/lang/String  haven/res/ui/tt/keypag/KeyPagina haven/Resource$Resolver Resolver 3 4 java/lang/Integer 5  6 7 8 9 : haven/Resource ; < = @ haven/Resource$Pagina Pagina A B C haven/ItemInfo$Pagina haven/ItemInfo$Owner context %(Ljava/lang/Class;)Ljava/lang/Object; intValue getres (I)Lhaven/Indir; haven/Indir get ()Ljava/lang/Object; pagina Ljava/lang/Class; layer D Layer )(Ljava/lang/Class;)Lhaven/Resource$Layer; text Ljava/lang/String; haven/ItemInfo haven/Resource$Layer keypag.cjava !               #     *+,� �       
    	  
 �       }     P+2� � � Y*+2� � �*�  � +2� � � 	 � 
 � M� Y*,� � � � � �                 	    :              N �                 E    *   0 	   #	   .   0 . 	 >  ?codeentry '   tt haven.res.ui.tt.keypag.KeyPagina   