Haven Resource 1 src T  Inputs.java /* Preprocessed source code */
/* $use: lib/tspec */

import haven.*;
import java.util.*;
import java.awt.image.BufferedImage;
import haven.res.lib.tspec.Spec;

/* >tt: Inputs */
public class Inputs extends ItemInfo.Tip {
    private static final BufferedImage comma = Text.render(", ").img;
    public final Input[] inputs;

    public Inputs(Owner owner, Input[] inputs) {
	super(owner);
	this.inputs = inputs;
    }

    public static class Input {
	public final Spec spec;
	public BufferedImage img;
	public int num;
	public boolean opt;

	public Input(Spec spec) {
	    this.spec = spec;
	    img = null;
	    if(img == null) {
		GSprite spr = spec.spr();
		if(spr instanceof GSprite.ImageSprite)
		    img = ((GSprite.ImageSprite)spec.spr()).image();
	    }
	    if(img == null)
		img = spec.res.res.get().layer(Resource.imgc).img;
	    int h = comma.getHeight();
	    img = PUtils.convolvedown(img, new Coord(h, h), CharWnd.iconfilter);
	}
    }

    public static ItemInfo mkinfo(ItemInfo.Owner owner, Object... args) {
	Resource.Resolver rr = owner.context(Resource.Resolver.class);
	int a = 1;
	List<Input> buf = new ArrayList<Input>();
	while(a < args.length) {
	    int fl = (Integer)args[a++];
	    Indir<Resource> res = rr.getres((Integer)args[a++]);
	    int num = (Integer)args[a++];
	    Message sdt = Message.nil;
	    if((fl & 1) != 0)
		sdt = new MessageBuf((byte[])args[a++]);
	    Input inp = new Input(new Spec(new ResData(res, sdt), owner, null));
	    inp.num = num;
	    if((fl & 2) != 0)
		inp.opt = true;
	    buf.add(inp);
	}
	return(new Inputs(owner, buf.toArray(new Input[0])));
    }

    public void layout(Layout l) {
	CompImage line = new CompImage();
	boolean f = true;
	for(Input inp : inputs) {
	    if(!f)
		line.add(comma, new Coord(line.sz.x, 0));
	    f = false;
	    line.add(inp.img, new Coord(line.sz.x, 0));
	    line.add(Text.render(String.format("\u00d7%d", inp.num)).img, new Coord(line.sz.x, 0));
	    if(line.sz.x > 200) {
		l.cmp.add(line, new Coord(0, l.cmp.sz.y));
		line = new CompImage();
		f = true;
	    }
	}
	l.cmp.add(line, new Coord(0, l.cmp.sz.y));
    }
}
code '  Inputs$Input Źžŗ¾   4 n
  (	  )	  *
 + , .  1	 + 2	 3 4 5 6 7	 
 8
 
 9 :	  *
 < =
 > ? @
  A	 B C
 D E F H spec Lhaven/res/lib/tspec/Spec; img Ljava/awt/image/BufferedImage; num I opt Z <init> (Lhaven/res/lib/tspec/Spec;)V Code LineNumberTable StackMapTable F I 
SourceFile Inputs.java  J     I K L M haven/GSprite$ImageSprite ImageSprite InnerClasses N O P Q R P S T U V haven/Resource W X Y \ haven/Resource$Image Image ] ^ O _ ` a haven/Coord  b c d g h i j Inputs$Input Input java/lang/Object haven/res/lib/tspec/Spec ()V spr ()Lhaven/GSprite; haven/GSprite image  ()Ljava/awt/image/BufferedImage; res Lhaven/ResData; haven/ResData Lhaven/Indir; haven/Indir get ()Ljava/lang/Object; imgc Ljava/lang/Class; layer k Layer )(Ljava/lang/Class;)Lhaven/Resource$Layer; Inputs 
access$000 java/awt/image/BufferedImage 	getHeight ()I (II)V haven/CharWnd 
iconfilter l Convolution Lhaven/PUtils$Convolution; haven/PUtils convolvedown e(Ljava/awt/image/BufferedImage;Lhaven/Coord;Lhaven/PUtils$Convolution;)Ljava/awt/image/BufferedImage; haven/Resource$Layer haven/PUtils$Convolution inputs.cjava !                                !   Š     v*· *+µ *µ *“ Ē +¶ M,Į  *+¶ Ą ¹  µ *“ Ē "*+“ “ ¹ 	 Ą 
² ¶ Ą “ µ ø ¶ =**“ » Y· ² ø µ ±    #    ’ 1  $ %  % "   2       	        !  1   8 ! W " ^ # u $  &    m 0   *   - /	  
 ;   < G 	 Z 
 [ e D f	code ­  Inputs Źžŗ¾   4 ø	  R
 . S	  T V 6 X Y
  Z [
  \  ]	 ^ _ ` a
  b c d e
  f
  g
  h	  i	  j k l m k n 4
  o p
  Z q	  r	  s
  t
  u	  v w x
  y
 z {
 | }	 ~ v	 F 	  
     Input InnerClasses comma Ljava/awt/image/BufferedImage; inputs [LInputs$Input; <init>  Owner ((Lhaven/ItemInfo$Owner;[LInputs$Input;)V Code LineNumberTable mkinfo ;(Lhaven/ItemInfo$Owner;[Ljava/lang/Object;)Lhaven/ItemInfo; StackMapTable V      c layout  Layout (Lhaven/ItemInfo$Layout;)V m  p 
access$000  ()Ljava/awt/image/BufferedImage; <clinit> ()V 
SourceFile Inputs.java 1 2 5  3 4  haven/Resource$Resolver Resolver   java/util/ArrayList 5 O java/lang/Integer        haven/MessageBuf [B 5  Inputs$Input haven/res/lib/tspec/Spec haven/ResData 5  5  5         Inputs   ” 5 8 haven/CompImage haven/Coord ¢ £ ¤  5 „  ¦ § 2 Ć%d java/lang/Object Ø © Ŗ « ¬ ­ ® ° ± ² ³ “   µ ,  ¶ haven/ItemInfo$Tip Tip haven/ItemInfo$Owner java/util/List [Ljava/lang/Object; haven/Indir haven/Message haven/ItemInfo$Layout (Lhaven/ItemInfo$Owner;)V haven/Resource context %(Ljava/lang/Class;)Ljava/lang/Object; intValue ()I getres (I)Lhaven/Indir; nil Lhaven/Message; ([B)V (Lhaven/Indir;Lhaven/Message;)V 9(Lhaven/ResData;Lhaven/OwnerContext;[Ljava/lang/Object;)V (Lhaven/res/lib/tspec/Spec;)V num I opt Z add (Ljava/lang/Object;)Z toArray (([Ljava/lang/Object;)[Ljava/lang/Object; sz Lhaven/Coord; x (II)V >(Ljava/awt/image/BufferedImage;Lhaven/Coord;)Lhaven/CompImage; img valueOf (I)Ljava/lang/Integer; java/lang/String format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
haven/Text render Line %(Ljava/lang/String;)Lhaven/Text$Line; haven/Text$Line cmp Lhaven/CompImage; y 1(Lhaven/CompImage;Lhaven/Coord;)Lhaven/CompImage; haven/ItemInfo inputs.cjava !  .     1 2    3 4     5 8  9   +     *+· *,µ ±    :          
   ; <  9  c  
   Ć*¹  Ą M>» Y· :+¾¢ +2Ą ¶ 	6,+2Ą ¶ 	¹ 
 :+2Ą ¶ 	6² :~ » Y+2Ą Ą · :» Y» Y» Y· *· · :		µ ~ 		µ 	¹  W§’n» Y*½ ¹  Ą · °    =   B ž  > ?’ V 	 @ A > ? B C  ü 0 D’   @ A > ?   :   F    (  )  *  +  , + - ? . M / R 0 Y 1 n 2  3  4  5  6 © 7 ¬ 8  E H  9  X     Ž» Y· M>*“ :¾66¢ ¦2: ,² » Y,“ “  · !¶ "W>,“ #» Y,“ “  · !¶ "W,$½ %Y“ ø &Sø 'ø (“ )» Y,“ “  · !¶ "W,“ “   Č¤ (+“ *,» Y+“ *“ “ +· !¶ ,W» Y· M>§’Y+“ *,» Y+“ *“ “ +· !¶ ,W±    =   $ ’   I J K   ü ( Dś zų  :   >    <  = 
 > & ? * @ A A C B \ C  D  E ² F ŗ G ¼ > Ā J Ż K L M  9         ² °    :       	  N O  9   $      -ø (“ )³ ±    :       
  P    · 0   2    / 	 6  7	 F  G 	  U W	 .  	 ~ | Æ 	codeentry    tt Inputs   lib/tspec   