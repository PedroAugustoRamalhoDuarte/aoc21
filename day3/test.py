import unittest

import main


class MyTestCase(unittest.TestCase):
    def test_example_solution1(self):
        self.assertEqual(main.solution1('example_input.txt'), 198)

    def test_example_solution2(self):
        self.assertEqual(main.solution2('example_input.txt'), 230)


if __name__ == '__main__':
    unittest.main()
