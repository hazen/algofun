import {bubbleSort} from '../bubble-sort.js';
import {selectionSort} from '../selection-sort.js';

test('Sort me some bubbles', () => {
  expect(bubbleSort([5, 6, 7, 3, 1, -5, 2])).toEqual([-5, 1, 2, 3, 5, 6, 7]);
});

test('Selection Sort', () => {
  expect(selectionSort([5, 6, 7, 3, 1, -5, 2])).toEqual([-5, 1, 2, 3, 5, 6, 7]);
});
