/*This class describes
the prosses of the Game
*
Created by Julia Pulova*/

public with sharing class Game {

   /* Following is the code for Execution : 
     Unit player1 = new Unit ('King Arthur', 1000, 30, 50);
    Unit player2 = new Unit ('Genghis Khan', 1300, 10, 60);   
      Game.theWinnerIs(player1, player2);  */
    
    //The method provides the hero power by choosing random number within max and min hero's possible damage
    private static integer Damage (Unit unit){
        
        return (integer)(Math.floor(Math.random() * (unit.dmg_Max - unit.dmg_Min + 1) + unit.dmg_Min));

    }

 	//The method receives two heros and the return the winner    
    private static Unit Fight (Unit unit1, Unit unit2){
        
        //The loop working until the HP(life) one of the Hero become less or equal zero
        while(unit1.HP>0 && unit2.HP > 0){
            //the value of the power returned by Damage subtructed from the HP (heros life)
            unit1.HP -= Damage(unit2); 
            unit2.HP -= Damage(unit1);
        }
        
        if (unit1.HP > unit2.HP)
        	return unit1;
        
        else 
            return unit2;
    } 
    
    public static void theWinnerIs(Unit unit1, Unit unit2){
        Unit winner = Fight (unit1, unit2);
        System.debug('The Winner is ' + winner.name 
                    + '\n Remained hero\'s life is ' + winner.HP);
    }
 
}