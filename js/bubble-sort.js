export const bubbleSort = (inputList) => {
  const sortedList = [...inputList];
  for (let i = 0; i < sortedList.length; i++) {
    for (let j = i + 1; j < sortedList.length; j++) {
      if (sortedList[i] > sortedList[j]) {
        const tmp = sortedList[i];
        sortedList[i] = sortedList[j];
        sortedList[j] = tmp;
      }
    }
  }
  return sortedList;
};
