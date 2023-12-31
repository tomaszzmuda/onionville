Haven Resource 1 src l  ItemStack.java /* Preprocessed source code */
package haven.res.ui.stackinv;

import haven.*;
import java.util.*;
import static haven.Inventory.*;

/* >wdg: ItemStack */
public class ItemStack extends Widget implements DTarget {
    public final List<GItem> order = new ArrayList<>();
    public final Map<GItem, WItem> wmap = new HashMap<>();
    private boolean dirty;

    public static ItemStack mkwidget(UI ui, Object[] args) {
	return(new ItemStack());
    }

    public void tick(double dt) {
	super.tick(dt);
	if(dirty) {
	    int x = 0, y = 0;
	    for(GItem item : order) {
		WItem w = wmap.get(item);
		w.move(Coord.of(x, 0));
		x += w.sz.x;
		y = Math.max(y, w.sz.y);
	    }
	    resize(x, y);
	    dirty = false;
	}
    }

    public void addchild(Widget child, Object... args) {
	add(child);
	if(child instanceof GItem) {
	    GItem i = (GItem)child;
	    wmap.put(i, add(new WItem(i)));
	    order.add(i);
	    dirty = true;
	}
    }

    public void cdestroy(Widget w) {
	super.cdestroy(w);
	if(w instanceof GItem) {
	    GItem i = (GItem)w;
	    wmap.remove(i).reqdestroy();
	    order.remove(i);
	    dirty = true;
	}
    }

    public void cresize(Widget ch) {
	dirty = true;
    }

    public boolean mousewheel(Coord c, int amount) {
	if(ui.modshift) {
	    Inventory minv = getparent(GameUI.class).maininv;
	    if(amount < 0)
		wdgmsg("invxf", minv.wdgid(), 1);
	    else if(amount > 0)
		minv.wdgmsg("invxf", this.wdgid(), 1);
	}
	return(true);
    }
    
    public boolean drop(Coord cc, Coord ul) {
	wdgmsg("drop");
	return(true);
    }

    public boolean iteminteract(Coord cc, Coord ul) {
	return(false);
    }
}
code 3  haven.res.ui.stackinv.ItemStack Êþº¾   4 ´
 . P Q
  P	  R S
  P	  T U
  P
 . V	  W X Y Z [ Z \ ] ^ _ `
 a b
  c	  d	 a e	 a f
 g h
  i
  j
  k ^ l X m
 . n ^ o
  p X q	  r	 s t u
  v	 # w x y
 z {
 | }
  ~
  {
 z ~ K   order Ljava/util/List; 	Signature Ljava/util/List<Lhaven/GItem;>; wmap Ljava/util/Map; +Ljava/util/Map<Lhaven/GItem;Lhaven/WItem;>; dirty Z <init> ()V Code LineNumberTable mkwidget @(Lhaven/UI;[Ljava/lang/Object;)Lhaven/res/ui/stackinv/ItemStack; tick (D)V StackMapTable  addchild $(Lhaven/Widget;[Ljava/lang/Object;)V cdestroy (Lhaven/Widget;)V cresize 
mousewheel (Lhaven/Coord;I)Z  drop (Lhaven/Coord;Lhaven/Coord;)Z iteminteract 
SourceFile ItemStack.java 9 : java/util/ArrayList 0 1 java/util/HashMap 4 5 haven/res/ui/stackinv/ItemStack ? @ 7 8         haven/GItem    haven/WItem                   9      ¡ E F ¢  £ : ¢ ¡ ¤ ¥ ¦ § 8 haven/GameUI ¨ © ª « invxf java/lang/Object  ¬ ­ ® ¯ ° ± ² haven/Widget haven/DTarget java/util/Iterator haven/Inventory java/util/List iterator ()Ljava/util/Iterator; hasNext ()Z next ()Ljava/lang/Object; java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; haven/Coord of (II)Lhaven/Coord; move (Lhaven/Coord;)V sz Lhaven/Coord; x I y java/lang/Math max (II)I resize (II)V add (Lhaven/Widget;)Lhaven/Widget; (Lhaven/GItem;)V put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; (Ljava/lang/Object;)Z remove 
reqdestroy ui 
Lhaven/UI; haven/UI modshift 	getparent !(Ljava/lang/Class;)Lhaven/Widget; maininv Lhaven/Inventory; wdgid ()I java/lang/Integer valueOf (I)Ljava/lang/Integer; wdgmsg ((Ljava/lang/String;[Ljava/lang/Object;)V stackinv.cjava !  .  /   0 1  2    3  4 5  2    6  7 8   	  9 :  ;   ;     *· *» Y· µ *» Y· µ ±    <         	  
 	 = >  ;         » Y· 	°    <         ? @  ;   Ð     v*'· 
*´  l>6*´ ¹  :¹   F¹  À :*´ ¹  À :¸ ¶ ´ ´ `>´ ´ ¸ 6§ÿ¶*¶ *µ ±    A    þ  Bú Lù  <   2           2  B  L  W  f  i  p  u   C D  ;   s     :*+¶ W+Á  /+À N*´ -*» Y-· ¶ ¹  W*´ -¹  W*µ ±    A    9 <       !  "  #  $ ) % 4 & 9 (  E F  ;   k     2*+· +Á  (+À M*´ ,¹  À ¶ *´ ,¹   W*µ ±    A    1 <       +  ,  -  . ! / , 0 1 2  G F  ;   "     *µ ±    <   
    5  6  H I  ;        Z*´ !´ " Q*#¶ $À #´ %N !*&½ 'Y-¶ (¸ )SY¸ )S¶ *§ " -&½ 'Y*¶ +¸ )SY¸ )S¶ ,¬    A    ü 9 Jú  <       9 
 :  ;  < 9 = = > X @  K L  ;   (     *-½ '¶ *¬    <   
    D 
 E  M L  ;        ¬    <       I  N    ³codeentry '   wdg haven.res.ui.stackinv.ItemStack   