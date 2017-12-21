package utility;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class RandomNumberGenerator {
	public static List<Integer> randomgenerator(int countOfNumbers , int range) {
		Random d = new Random();
		List<Integer> listOfNumber = new ArrayList<Integer>();
		int s, i;
		for (i = 0; i < countOfNumbers; i++) {

			s = d.nextInt(range);
			listOfNumber.add(s);
		}
		return (listOfNumber);

	}
}
