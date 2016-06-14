/*This class describes
* personage(Hero) the will take part in the Game
*
 * created by Julia Pulova*/

public with sharing class Unit {
	//Hero's name
    public string name {get; set;}
    //Hero's life
    public integer HP {get; set;}
    //Hero's min damage that could be applied to apponent
    public integer dmg_Min {get; set;}
    //Hero's max damage that could be applied to apponent
    public integer dmg_Max {get; set;}
        
        //Class constructor without parameters  
    public Unit (){
        this.name = 'Anonimus';
        this.HP = 100;
        this.dmg_Min = 1;
        this.dmg_Max = 10;
    }
    
    //Class constructor 
    public Unit (string name, integer HP, integer dmg_Min, integer dmg_Max){
        this.name = name;
        this.HP = HP;
        this.dmg_Min = dmg_Min;
        this.dmg_Max = dmg_Max;
   }
    
}