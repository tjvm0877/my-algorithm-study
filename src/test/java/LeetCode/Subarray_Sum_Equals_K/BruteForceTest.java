package LeetCode.Subarray_Sum_Equals_K;

import static org.assertj.core.api.Assertions.*;

import java.util.stream.Stream;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

@DisplayName("Subarray Sum Equals K - Brute Force Solution")
class BruteForceTest {
	private final BruteForce bruteForce = new BruteForce();
	private final TestCases testCases = new TestCases();

	@ParameterizedTest
	@MethodSource("provideTestCases")
	public void subarraySumTest(int testCase) {
		int result = bruteForce.subarraySum(testCases.getNums(testCase), testCases.getK(testCase));
		assertThat(result).isEqualTo(testCases.getAnswer(testCase));
	}

	static Stream<Arguments> provideTestCases() {
		return Stream.of(
			Arguments.of(0),
			Arguments.of(1),
			Arguments.of(2),
			Arguments.of(3)
		);
	}
}