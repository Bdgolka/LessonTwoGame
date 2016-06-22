/**
* This class describes the prosses of the Game
*
* @author Julia Pulova
**/

public with sharing class Game {

   		/* Following is the code for Execution : 
     Unit player1 = new Unit ('King Arthur', 1000, 30, 50);
     Unit player2 = new Unit ('Genghis Khan', 1300, 10, 60);   
      Game.theWinnerIs(player1, player2);  */
      
      	//attack will keep a collection of players body parts which could be attacked by enemy 
      	public List<String> attack {get;set;}
      
      	//block will keep a collection of players body parts which could be blocked by player 
      	public List<String> block {get;set;}
      	
      	//Class constructor
      	public Game(){
      		attack = new List<String>{'head', 'waist', 'hand', 'chest'};
      		block = new List<String>{'head', 'waist', 'hand', 'chest'};
      	}
      
    
    	//The method provides the hero power by choosing random number within max and min hero's possible damage
   	 	private static integer Damage (Unit unit){        
        //If unit.dmg_Min or unit.dmg_Max is not possitive number return error;            
        return (integer)(Math.floor(Math.random() * (unit.dmg_Max - unit.dmg_Min + 1) + unit.dmg_Min));
    	}
    	
    	//The method returns a random number from 0 to 3
    	private static integer Damage (){                     
        return (integer)(Math.floor(Math.random() * (3 - 1 + 1) + 1));
    	}
    	
    	//The method receives two heros and the return the winner    
    	private static Unit FightWithBlocksAndAttack (Unit unit1, Unit unit2){
    		
    		List<String> attack = new List<String>{'head', 'waist', 'hand', 'chest'};
    		List<String> block = new List<String>{'head', 'waist', 'hand', 'chest'};
    		    		   	    		
    		 //The loop working until the HP(life) one of the Hero become less or equal zero
        	while(unit1.HP>0 && unit2.HP > 0){
        		
        		//First player attacks and Second Blocks
        		if(!(attack[Damage()]==block[Damage()]))        		
        			unit2.HP -= Damage(unit1);
        		
        		//Second player attacks and First Blocks
        		if(!(attack[Damage()]==block[Damage()]))        		
        			unit1.HP -= Damage(unit2);
        	}
    		if (unit1.HP > 0)
        		return unit1;        
        	else if (unit2.HP > 0)
            	return unit2;        
        	else
            return null; 
    	}

 		//The method receives two heros and the return the winner    
    	private static Unit Fight (Unit unit1, Unit unit2){
        
        //The loop working until the HP(life) one of the Hero become less or equal zero
        	while(unit1.HP>0 && unit2.HP > 0){
            //the value of the power returned by Damage subtructed from the HP (heros life)
            	unit1.HP -= Damage(unit2); 
            	unit2.HP -= Damage(unit1);
        	}
        
        	if (unit1.HP > 0)
        		return unit1;        
        	else if (unit2.HP > 0)
            	return unit2;        
        	else
            return null; 
            
    } 
    
    public static string theWinnerIs(Unit unit1, Unit unit2){
                
        Unit winner = FightWithBlocksAndAttack (unit1, unit2);
        if(winner == null)
             return 'There is no winner  - DRAW';
        else
       return 'The Winner is ' + winner.name + '\n Remained hero\'s life is ' + winner.HP;
    }
 
}