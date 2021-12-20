import unittest
import main


class MyTestCase(unittest.TestCase):
    def test_example_solution(self):
        self.assertEqual(main.solution('example_input.txt'), 198)


if __name__ == '__main__':
    unittest.main()
