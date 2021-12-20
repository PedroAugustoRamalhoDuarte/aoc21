import unittest

import main


class MyTestCase(unittest.TestCase):
    def test_example_solution1(self):
        self.assertEqual(main.solution1('example_input.txt'), 4512)


if __name__ == '__main__':
    unittest.main()
