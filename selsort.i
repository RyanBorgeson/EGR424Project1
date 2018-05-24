# 1 "selsort.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "selsort.c"







void selsort(int Data[], int N)
{
  int start, i, minix, temp;

  for (start=0; start < N-1; start++) {
    minix = start;
    for (i=start+1; i < N; i++) {
      if (Data[i] < Data[minix]) minix=i;
    }

    if (minix != start) {
      temp = Data[minix];
      Data[minix] = Data[start];
      Data[start] = temp;
    }
  }
}
