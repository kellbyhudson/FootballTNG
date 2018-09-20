package models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)private int playerId;
    private String playerName;
    private int teamId;
    private int numberOfPlays;
    private int rushAttempts;
    private int passTargets;
    private int passReceptions;
    private int passesAttempted;
    private int passesCompleted;
    private int rushYards;
    private int receivingYards;
    private int passYards;
    private int tackles;
    private int sacks;
    private int creditScoreId;
    private int gradeScoreId;

    public int getPlayerId()
    {
        return playerId;
    }

    public int getCreditScoreId()
    {
        return creditScoreId;
    }

    public int getGradeScoreId()
    {
        return gradeScoreId;
    }

    public String getPlayerName()
    {
        return playerName;
    }

    public void setPlayerName(String playerName)
    {
        this.playerName = playerName;
    }

    public int getTeamId()
    {
        return teamId;
    }

    public void setTeamId(int teamId)
    {
        this.teamId = teamId;
    }

    public int getNumberOfPlays()
    {
        return numberOfPlays;
    }

    public void setNumberOfPlays(int numberOfPlays)
    {
        this.numberOfPlays = numberOfPlays;
    }

    public int getRushAttempts()
    {
        return rushAttempts;
    }

    public void setRushAttempts(int rushAttempts)
    {
        this.rushAttempts = rushAttempts;
    }

    public int getPassTargets()
    {
        return passTargets;
    }

    public void setPassTargets(int passTargets)
    {
        this.passTargets = passTargets;
    }

    public int getPassReceptions()
    {
        return passReceptions;
    }

    public void setPassReceptions(int passReceptions)
    {
        this.passReceptions = passReceptions;
    }

    public int getPassesAttempted()
    {
        return passesAttempted;
    }

    public void setPassesAttempted(int passesAttempted)
    {
        this.passesAttempted = passesAttempted;
    }

    public int getPassesCompleted()
    {
        return passesCompleted;
    }

    public void setPassesCompleted(int passesCompleted)
    {
        this.passesCompleted = passesCompleted;
    }

    public int getRushYards()
    {
        return rushYards;
    }

    public void setRushYards(int rushYards)
    {
        this.rushYards = rushYards;
    }

    public int getReceivingYards()
    {
        return receivingYards;
    }

    public void setReceivingYards(int receivingYards)
    {
        this.receivingYards = receivingYards;
    }

    public int getPassYards()
    {
        return passYards;
    }

    public void setPassYards(int passYards)
    {
        this.passYards = passYards;
    }

    public int getTackles()
    {
        return tackles;
    }

    public void setTackles(int tackles)
    {
        this.tackles = tackles;
    }

    public int getSacks()
    {
        return sacks;
    }

    public void setSacks(int sacks)
    {
        this.sacks = sacks;
    }
}
