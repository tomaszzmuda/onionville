Haven Resource 1 src    Fadeout.java /* Preprocessed source code */
import haven.*;

import java.awt.image.WritableRaster;

/* >wdg: Fadeout */
public class Fadeout extends AWidget {
    public MapView mv;
    public final double len, dur;

    public Fadeout(double len, double dur) {
	this.len = len;
	this.dur = dur;
    }

    protected void attached() {
	super.attached();
	this.mv = getparent(GameUI.class).map;
    }

    public static Fadeout mkwidget(UI ui, Object... args) {
	double len = ((Number)args[0]).doubleValue();
	double dur = ((Number)args[1]).doubleValue();
	return(new Fadeout(len, dur));
    }

    double start = 0;
    private void drawfx(GOut g) {
	double now = Utils.rtime();
	if(start == 0)
	    start = now;
	if((dur >= 0) && (now - start > dur)) {
	    ui.destroy(Fadeout.this);
	    return;
	}
	double a = (now - start) / len;
	if(a > 1)
	    a = 1;
	g.chcolor(Utils.clipcol(255, 255, 255, (int)(255 * a)));
	g.frect(Coord.z, g.sz());
	mv.shake = a * 100;
    }

    public void tick(double dt) {
	mv.delay2(this::drawfx);
	super.tick(dt);
    }
}
code 0  Fadeout ����   4 �
  4	  5	  6	  7
  8 9
  :	  ;	  < =
 
 > ?
  @
 A B	  C
 D E@o�     
 A F
 G H	 I J
 G K
 G L@Y      	 M N   S
 M T
  U V mv Lhaven/MapView; len D dur start <init> (DD)V Code LineNumberTable attached ()V mkwidget ((Lhaven/UI;[Ljava/lang/Object;)LFadeout; drawfx (Lhaven/GOut;)V StackMapTable tick (D)V 
SourceFile Fadeout.java % * $ " ! " # " ) * haven/GameUI W X Y      java/lang/Number Z [ Fadeout % & \ ] [ ^ _ ` a b c d e f g h i j k l m n o p " BootstrapMethods q . r s w x y 0 1 haven/AWidget 	getparent !(Ljava/lang/Class;)Lhaven/Widget; map doubleValue ()D haven/Utils rtime ui 
Lhaven/UI; haven/UI destroy (Lhaven/Widget;)V clipcol (IIII)Ljava/awt/Color; 
haven/GOut chcolor (Ljava/awt/Color;)V haven/Coord z Lhaven/Coord; sz ()Lhaven/Coord; frect (Lhaven/Coord;Lhaven/Coord;)V haven/MapView shake
 z {
  | run } Delayed InnerClasses "(LFadeout;)Lhaven/MapView$Delayed; delay2 (Lhaven/MapView$Delayed;)V ~  � - . haven/MapView$Delayed "java/lang/invoke/LambdaMetafactory metafactory � Lookup �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; � %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles fadeout.cjava !             ! "    # "     $ "     % &  '   <     *� *� *'� *)� �    (       
   	       ) *  '   5     *� **� � � � 	�    (            � + ,  '   @      +2� 
� I+2� 
� 9� Y(� �    (        
     - .  '   �     y� I*� �� *(� *� �� (*� g*� �� *� *� �(*� g*� o9�� 9+ � � � k�� � +� +� � *� 	 k� �    /    � �  (   6           )   1 ! 2 # ? $ F % I & ` ' k ( x )  0 1  '   3     *� 	*�   � *'� �    (       ,  -  .  O     P  Q R Q 2    � v     t M u	 � � � codeentry    wdg Fadeout   