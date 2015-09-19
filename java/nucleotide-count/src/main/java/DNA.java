import java.util.Map;
import java.util.HashMap;

public class DNA {
    String dnaString;
    String reqDNA = "ACGT";

    public DNA(String str){
        dnaString = str;
    }

    public int count(char needle){
        int count = 0;
        if (reqDNA.indexOf(needle) < 0) {
            throw new IllegalArgumentException();
        }

        for (char c : dnaString.toCharArray()) {
            if (c == needle) {
                count++;
            }
        }
        return count;
    }

    public Map<Character, Integer> nucleotideCounts(){
        Map<Character, Integer> dnaMap = new HashMap<Character, Integer>();

        dnaMap.put('A', count('A'));
        dnaMap.put('C', count('C'));
        dnaMap.put('G', count('G'));
        dnaMap.put('T', count('T'));

        return dnaMap;
    }
}
