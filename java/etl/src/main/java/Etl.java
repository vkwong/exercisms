import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Etl {

    public Map<String, Integer> transform(Map<Integer, List<String>> old) {

        Map<String, Integer> results = new HashMap<String, Integer>();

        for (Map.Entry<Integer, List<String>> entry : old.entrySet()) {
            int pointValue = entry.getKey();
            List<String> letters = entry.getValue();

            for (String letter : letters) {
                String currentLetter = letter.toLowerCase();
                results.put(currentLetter, pointValue);
            }           
        }
        return results;     
    }   
}