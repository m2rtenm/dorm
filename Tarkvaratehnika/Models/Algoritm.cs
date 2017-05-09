using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

namespace Tarkvaratehnika.Models
{
    public class Algoritm
    {
        public static void DoDictionariesWithTuples()
        {
            var campaignerTuple = new Tuple<string, string>("Advocate", "Architect");
            var defenderTuple = new Tuple<string, string>("Entertainer", "Entrepreneur");
            var adventurerTuple = new Tuple<string, string>("Executive", "Consul");
            var logisticianTuple = new Tuple<string, string>("Entrepreneur", "Entertainer");
            var virtuosoTuple = new Tuple<string, string>("Consul", "Executive");
            var mediatorTuple = new Tuple<string, string>("Protagonist", "Commander");
            var architectTuple = new Tuple<string, string>("Debater", "Campaigner");
            var logicianTuple = new Tuple<string, string>("Commander", "Protagonist");
            var entrepreneurTuple = new Tuple<string, string>("Logistician", "Defender");
            var consulTuple = new Tuple<string, string>("Adventurer", "Virtuoso");
            var entertainerTuple = new Tuple<string, string>("Logistician", "Defender");
            var executiveTuple = new Tuple<string, string>("Virtuoso", "Adventurer");
            var commanderTuple = new Tuple<string, string>("Logician", "Mediator");
            var protagonistTuple = new Tuple<string, string>("Mediator", "Logician");
            var advocateTuple = new Tuple<string, string, string>("Campaigner", "Debater", "Architect");
            var debaterTuple = new Tuple<string, string, string, string, string>("Consul", "Protagonist", "Defender", "Architect", "Advocate");

            Dictionary<string, Tuple<string, string>> campaigner = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> defender = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> adventurer = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> logistician = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> virtuoso = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> mediator = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> architect = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> logician = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> entrepreneur = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> consul = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> entertainer = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> executive = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> commander = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> protagonist = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string, string>> advocate = new Dictionary<string, Tuple<string, string, string>>();
            Dictionary<string, Tuple<string, string, string, string, string>> debater = new Dictionary<string, Tuple<string, string, string, string, string>>();

            campaigner.Add("Campaigner", campaignerTuple);
            defender.Add("Defender", defenderTuple);
            adventurer.Add("Adventurer", adventurerTuple);
            logistician.Add("Logistician", logisticianTuple);
            virtuoso.Add("Virtuoso", virtuosoTuple);
            mediator.Add("Mediator", mediatorTuple);
            architect.Add("Architect", architectTuple);
            logician.Add("Logician", logicianTuple);
            entrepreneur.Add("Entrepreneur", entrepreneurTuple);
            consul.Add("Consul", consulTuple);
            entertainer.Add("Entertainer", entertainerTuple);
            executive.Add("Executive", executiveTuple);
            commander.Add("Commander", commanderTuple);
            protagonist.Add("Protagonist", protagonistTuple);
            advocate.Add("Advocate", advocateTuple);
            debater.Add("Debater", debaterTuple);
        }    

        public static void DoDictionaryWithLists()
        {
            List<string> campaigner = new List<string>() { "Advocate", "Arhitect" };
            List<string> defender = new List<string>() { "Entertainer", "Entrepreneur" };
            List<string> adventurer = new List<string>() { "Executive", "Consul" };
            List<string> logistician = new List<string>() { "Entrepreneur", "Entertainer" };
            List<string> virtuoso = new List<string>() { "Consul", "Executive" };
            List<string> mediator = new List<string>() { "Protagonist", "Commander" };
            List<string> architect = new List<string>() { "Debater", "Campaigner" };
            List<string> logician = new List<string>() { "Commander", "Protagonist" };
            List<string> entrepreneur = new List<string>() { "Logistician", "Defender" };
            List<string> consul = new List<string>() { "Adventurer", "Virtuoso" };
            List<string> entertainer = new List<string>() { "Logistician", "Defender" };
            List<string> executive = new List<string>() { "Virtuoso", "Adventurer" };
            List<string> commander = new List<string>() { "Logician", "Mediator" };
            List<string> protagonist = new List<string>() { "Mediator", "Logician" };
            List<string> advocate = new List<string>() { "Campaigner", "Debater", "Architect" };
            List<string> debater = new List<string>() { "Consul", "Protagonist", "Defender", "Architect", "Advocate" };

            Dictionary<string, List<string>> dictWithLists = new Dictionary<string, List<string>>();
            dictWithLists.Add("Campaigner", campaigner);
            dictWithLists.Add("Defender", defender);
            dictWithLists.Add("Adventurer", adventurer);
            dictWithLists.Add("Logistician", logistician);
            dictWithLists.Add("Virtuoso", virtuoso);
            dictWithLists.Add("Mediator", mediator);
            dictWithLists.Add("Architect", architect);
            dictWithLists.Add("Logician", logician);
            dictWithLists.Add("Entrepreneur", entrepreneur);
            dictWithLists.Add("Executive", executive);
            dictWithLists.Add("Commander", commander);
            dictWithLists.Add("Protagonist", protagonist);
            dictWithLists.Add("Advocate", advocate);
            dictWithLists.Add("Debater", debater);
        }
        public enum Personalities
        {
            Campaigner, 
            Defender,
            Adventurer,
            Logistician,
            Virtuoso,
            Mediator,
            Architect,
            Logician,
            Entrepreneur,
            Executive,
            Commander,
            Protagonist,
            Advocate,
            Debater
        }

        //private static Hashtable<Personalities, List<Personalities> relations = new Hashtable();
        public static void DoSomethingWithEnums()
        {

        }
    }

    


}