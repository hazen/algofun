export const selectionSort = (inputList) => {
  const sortedList = [...inputList];
  for (let i = 0; i < sortedList.length; i++) {
    let mindex = i;
    for (let j = i + 1; j < sortedList.length; j++) {
      if (sortedList[j] < sortedList[mindex]) {
        mindex = j;
      }
    }
    if (mindex !== i) {
      const tmp = sortedList[i];
      sortedList[i] = sortedList[mindex];
      sortedList[mindex] = tmp;
    }
  }
  return sortedList;
};
