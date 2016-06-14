/*Class Controller that bint login and visual page
*
Created by Julia Pulova*/
public class GameController {
	
    //Personage #1 required information that should be input by user
    public String name_1 {get;set;}
    public Integer HP_1 {get;set;}
    public Integer dmg_Min_1 {get;set;}
    public Integer dmg_Max_1 {get;set;}
    
    //Personage #2 required information that should be input by user
    public String name_2 {get;set;}
    public Integer HP_2 {get;set;}
    public Integer dmg_Min_2 {get;set;}
    public Integer dmg_Max_2 {get;set;}  
    
    //If error occured the appropriate massage will appear or if Game will end return the winner
     public String Message {get;set;}
    
    public void determineTheWinner(){
        
        //Create two personages for assigning input data after validation    
        Unit unit1 = new Unit();
        Unit unit2 = new Unit();
        
        //Validating input data otherwise return error with description
        //Check if the name is not null and not blank
        if ((name_1 <> null && name_1 <> '')&&(name_2 <> null && name_2 <> '')){
            unit1.name = name_1;
             unit2.name = name_2;
        }
        else{
            Message = 'ERROR!!! INPUT DATE DOESN\'T NOT MATCH THE REQUIREMENTS \nPersonage can\'t exist without Name';
             return;
        }
                   
        //Check if the HP is not null and greater than 0
         if ((HP_1 <> null && HP_1 > 0) && (HP_2 <> null && HP_2 > 0)){
             unit1.HP = HP_1;
             unit2.HP = HP_1;
        }
        else{
            Message = 'ERROR!!! INPUT DATE DOESN\'T NOT MATCH THE REQUIREMENTS \nPersonage can\'t exist if it has no HP';
            return;
        }
        
        //Check if the dmg_Min is not null and greater than 0
         if ((dmg_Min_1 <> null && dmg_Min_1 > 0) && (dmg_Min_2 <> null && dmg_Min_2 > 0)){
             unit1.dmg_Min = dmg_Min_1;
             unit2.dmg_Min = dmg_Min_2;
        }
        else{
            Message = 'ERROR!!! INPUT DATE DOESN\'T NOT MATCH THE REQUIREMENTS \nPersonage can\'t fight if his min damage equal to 0 or less';
             return;
        }
         //Check if the dmg_Max is not null and greater than 0
         if ((dmg_Max_1 <> null && dmg_Max_1 > 0) && (dmg_Max_2 <> null && dmg_Max_2 > 0)){
             unit1.dmg_Max = dmg_Max_1;
             unit2.dmg_Max = dmg_Max_2;
        }
        else{     
           Message = 'ERROR!!! INPUT DATE DOESN\'T NOT MATCH THE REQUIREMENTS \nPersonage can\'t fight if his max damage equal to 0 or less';
         return;
        }
                           
         Message =  Game.theWinnerIs(unit1, unit2);                
    }
}