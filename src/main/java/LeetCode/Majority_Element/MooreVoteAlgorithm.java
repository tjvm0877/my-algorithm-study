package LeetCode.Majority_Element;

// Boyer–Moore majority vote algorithm
public class MooreVoteAlgorithm {

	public int majorityElement(int[] nums) {
		int count = 0;
		int candidate = 0;

		for (int num : nums) {
			if (count == 0) {
				candidate = num;
			}

			if (num == candidate) {
				count++;
			} else {
				count--;
			}
		}

		return candidate;
	}
}
