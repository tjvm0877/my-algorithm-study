package LeetCode.Beautiful_Arrangement;

import static org.junit.jupiter.api.Assertions.*;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

class BitmaskTest {

	Bitmask bitmask = new Bitmask();
	TestCases testCases = new TestCases();

	@ParameterizedTest
	@ValueSource(ints = {0, 1, 2})
	void countArrangement(int testCase) {
		int result = bitmask.countArrangement(testCases.getN(testCase));
		Assertions.assertThat(result).isEqualTo(testCases.getExpectedAnswer(testCase));
	}
}