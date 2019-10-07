export const insertionSort = (inputList) => {
  if (inputList.length < 2) return inputList;
  for (let i = 1; i < inputList.length; i++) {
    let j = i - 1;
    const value = inputList[i];
    while (j >= 0 && inputList[j] > value) {
      const tmp = inputList[j + 1];
      inputList[j + 1] = inputList[j];
      inputList[j] = tmp;
      j = j - 1;
    }
    inputList[j + 1] = value;
  }
  return inputList;
};
