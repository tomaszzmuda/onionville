Haven Resource 1 src �  Equed.java /* Preprocessed source code */
import haven.*;

/* >tt: Equed */
public class Equed extends ItemInfo implements Equipory.SlotInfo {
    public final int slots;

    public Equed(Owner owner, int slots) {
	super(owner);
	this.slots = slots;
    }

    public static Equed mkinfo(Owner owner, Object... args) {
	int sfl = (Integer)args[1];
	return(new Equed(owner, sfl));
    }

    public int slots() {return(slots);}
}
code �  Equed ����   4 &
  	   
   
     slots I <init> ! Owner InnerClasses (Lhaven/ItemInfo$Owner;I)V Code LineNumberTable mkinfo 2(Lhaven/ItemInfo$Owner;[Ljava/lang/Object;)LEqued; ()I 
SourceFile 
Equed.java  " 	 
 java/lang/Integer #  Equed   haven/ItemInfo $ haven/Equipory$SlotInfo SlotInfo haven/ItemInfo$Owner (Lhaven/ItemInfo$Owner;)V intValue haven/Equipory equed.cjava !       	 
           +     *+� *� �             	 
 
 �       0     +2� � =� Y*� �       
     
   	           *� �                 %        	    	codeentry    tt Equed   