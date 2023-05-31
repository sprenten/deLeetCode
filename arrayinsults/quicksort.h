/**********************************************************************/
/*         Quicksort Algorithm					      */
/**********************************************************************/

void swap(unsigned int *a, unsigned int *b) {
  int t = *a;
  *a = *b;
  *b = t;
}


unsigned int partition(unsigned int array[], unsigned int low, unsigned int high) {

  unsigned int pivot = array[high];
  unsigned int i = (low - 1);
  for (unsigned int j = low; j < high; j++) {
    if (array[j] <= pivot) {
      i++;
      swap(&array[i], &array[j]);
    }
  }
  swap(&array[i + 1], &array[high]);
  return (i + 1);
}

void quickSort(int array[], unsigned int low, unsigned int high) {
  if (low < high) {
    int pi = partition(array, low, high);
    quickSort(array, low, pi - 1);
    quickSort(array, pi + 1, high);
  }
}
