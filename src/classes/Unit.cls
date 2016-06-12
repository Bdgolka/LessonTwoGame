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
    public integer dmg_Min {public get{return dmg_Min;} set;}
    //Hero's max damage that could be applied to apponent
    public integer dmg_Max {public get{return dmg_Max;} set;}
           
    //Class constructor 
    public Unit (string name, integer HP, integer dmg_Min, integer dmg_Max){
        this.name = name;
        this.HP = HP;
        this.dmg_Min = dmg_Min;
        this.dmg_Max = dmg_Max;
   }
    
}